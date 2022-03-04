using System;
using System.Configuration;
using System.Collections.Generic;
using Npgsql;

namespace AMD_Project.Models
{
    public class FilmRelatedPersonRepository : IFilmRelatedPersonRepository
    {
        string connString;
        public FilmRelatedPersonRepository()
        {
            connString = "Host=" + ConfigurationManager.AppSettings.Get("Host") + ";Username=" +
            ConfigurationManager.AppSettings.Get("Username") + ";Password=" + ConfigurationManager.AppSettings.Get("Password") +
            ";Database=" + ConfigurationManager.AppSettings.Get("Database");
            NpgsqlConnection.GlobalTypeMapper.MapComposite<NameModel>("public.name_type");
        }

        public List<FilmRelatedPerson> readAllFilmRelatedPersons()
        {
            List<FilmRelatedPerson> personList = new List<FilmRelatedPerson>();
            int index = 0;
            using (var con = new NpgsqlConnection(connString))
            {
                using (NpgsqlCommand cmd = new NpgsqlCommand("SELECT * FROM film_related_persons", con))
                {
                    con.Open();
                    using (NpgsqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            personList.Add(new FilmRelatedPerson());
                            personList[index].id = (Guid)reader.GetValue(0);
                            personList[index].name = (NameModel)reader.GetValue(1);
                            personList[index].dateofBirth = (DateTime)reader.GetValue(2);
                            personList[index].sex = (String)reader.GetValue(3);
                            personList[index].nationality = (String)reader.GetValue(4);
                            index++;
                        }
                    }
                }
                //foreach (var person in personList)
                //{
                //    index = 0;
                //    using (NpgsqlCommand cmd = new NpgsqlCommand($"SELECT * FROM retrieve_film_people_relation_by_crew_id('{person.id}')", con))
                //    {
                //        using (NpgsqlDataReader reader = cmd.ExecuteReader())
                //        {
                //            person.filmsList = new List<FilmPersonLink>();
                //            while (reader.Read())
                //            {
                //                person.filmsList.Add(new FilmPersonLink());
                //                person.filmsList[index].filmId = (Guid)reader.GetValue(0);
                //                person.filmsList[index].crewId = (Guid)reader.GetValue(1);
                //                person.filmsList[index].roles = (String)reader.GetValue(2);
                //                index++;
                //            }
                //        }
                //    }
                //}
            }
            return personList;
        }

        public FilmRelatedPerson readFilmRelatedPersonById(Guid personId)
        {
            FilmRelatedPerson person = new FilmRelatedPerson();
            using (var con = new NpgsqlConnection(connString))
            {
                using (NpgsqlCommand cmd = new NpgsqlCommand($"SELECT * FROM film_related_persons WHERE id='{personId}'", con))
                {
                    con.Open();
                    using (NpgsqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            // if we get the return value (the person's id), it can be assumed that the query is successful
                            person.id = (Guid)reader.GetValue(0);
                            person.name = (NameModel)reader.GetValue(1);
                            person.dateofBirth = (DateTime)reader.GetValue(2);
                            person.sex = (String)reader.GetValue(3);
                            person.nationality = (String)reader.GetValue(4);
                        }
                    }
                }
            }

            return person;
        }

        public FilmRelatedPerson createFilmRelatedPerson(FilmRelatedPerson person)
        {
            FilmRelatedPerson createdPerson = new FilmRelatedPerson();
            using (var con = new NpgsqlConnection(connString))
            {
                var query = $"SELECT * FROM add_film_related_person(('{person.name.forename}', '{person.name.surname}'), '{person.dateofBirth.ToString("yyyy-MM-dd")}', '{person.sex}', '{person.nationality}', NULL, NULL)";
                using (NpgsqlCommand cmd = new NpgsqlCommand(query, con))
                {
                    con.Open();
                    using (NpgsqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            // if we get the return value (the person's id), it can be assumed that the query is successful
                            createdPerson.id = (Guid)reader.GetValue(0);
                        }
                    }
                }
            }
            createdPerson.name = person.name;
            createdPerson.dateofBirth = person.dateofBirth;
            createdPerson.sex = person.sex;
            createdPerson.nationality = person.nationality;
            return createdPerson;
        }

        public FilmRelatedPerson updateFilmRelatedPersonById(FilmRelatedPerson person)
        {
            FilmRelatedPerson updatedPerson = new FilmRelatedPerson();
            using (var con = new NpgsqlConnection(connString))
            {
                var query = $"SELECT * FROM update_film_related_person_by_id('{person.id}',('{person.name.forename}', '{person.name.surname}'), '{person.dateofBirth.ToString("yyyy-MM-dd")}', '{person.sex}', '{person.nationality}')";
                using (NpgsqlCommand cmd = new NpgsqlCommand(query, con))
                {
                    con.Open();
                    using (NpgsqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            // if we get the return value (the person's id), it can be assumed that the query is successful
                            updatedPerson.id = (Guid)reader.GetValue(0);
                            updatedPerson.name = (NameModel)reader.GetValue(1);
                            updatedPerson.dateofBirth = (DateTime)reader.GetValue(2);
                            updatedPerson.sex = (String)reader.GetValue(3);
                            updatedPerson.nationality = (String)reader.GetValue(4);
                        }
                    }
                }
            }
            return updatedPerson;
        }

        public Boolean deleteFilmRelatedPersonById(Guid personId)
        {
            Boolean isPersonStillExist = true;
            using (var con = new NpgsqlConnection(connString))
            {
                con.Open();
                using var batch = new NpgsqlBatch(con)
                {
                    BatchCommands = {
                        new($"SELECT remove_film_related_person_by_id('{personId}')"),
                        new($"SELECT is_film_related_person_exists('{personId}')")
                    }
                };
                using (NpgsqlDataReader reader = batch.ExecuteReader())
                {
                    reader.Read(); // do the first command
                    reader.NextResult();
                    while (reader.Read())
                    {
                        isPersonStillExist = (Boolean)reader.GetValue(0);
                    }
                }
            }
            return isPersonStillExist;
        }
        public List<FilmPersonLink> readAllFilmPersonRelations()
        {
            List<FilmPersonLink> filmPersonRelations = new List<FilmPersonLink>();
            int index = 0;
            using (var con = new NpgsqlConnection(connString))
            {
                using (NpgsqlCommand cmd = new NpgsqlCommand($"SELECT * from film_persons_link", con))
                {
                    con.Open();
                    using (NpgsqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            filmPersonRelations.Add(new FilmPersonLink());
                            filmPersonRelations[index].filmId = (Guid)reader.GetValue(0);
                            filmPersonRelations[index].personId = (Guid)reader.GetValue(1);
                            filmPersonRelations[index].roles = (String)reader.GetValue(2);
                            index++;
                        }
                    }
                }
            }
            return filmPersonRelations;
        }
        public List<FilmPersonLink> readFilmPersonRelationsByPersonId(Guid personId)
        {
            List<FilmPersonLink> filmPersonRelations = new List<FilmPersonLink>();
            int index = 0;
            using (var con = new NpgsqlConnection(connString))
            {
                using (NpgsqlCommand cmd = new NpgsqlCommand($"SELECT * from retrieve_film_people_relation_by_person_id('{personId}')", con))
                {
                    con.Open();
                    using (NpgsqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            filmPersonRelations.Add(new FilmPersonLink());
                            filmPersonRelations[index].filmId = (Guid)reader.GetValue(0);
                            filmPersonRelations[index].personId = (Guid)reader.GetValue(1);
                            filmPersonRelations[index].roles = (String)reader.GetValue(2);
                            index++;
                        }
                    }
                }
            }
            return filmPersonRelations;
        }
        public List<FilmPersonLink> readFilmPersonRelationsByFilmId(Guid filmId)
        {
            List<FilmPersonLink> filmPersonRelations = new List<FilmPersonLink>();
            int index = 0;
            using (var con = new NpgsqlConnection(connString))
            {
                using (NpgsqlCommand cmd = new NpgsqlCommand($"SELECT * from retrieve_film_people_relation_by_film_id('{filmId}')", con))
                {
                    con.Open();
                    using (NpgsqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            filmPersonRelations.Add(new FilmPersonLink());
                            filmPersonRelations[index].filmId = (Guid)reader.GetValue(0);
                            filmPersonRelations[index].personId = (Guid)reader.GetValue(1);
                            filmPersonRelations[index].roles = (String)reader.GetValue(2);
                            index++;
                        }
                    }
                }
            }
            return filmPersonRelations;
        }
        public FilmPersonLink createUpdateFilmPersonRelationByIds(Guid filmId, Guid personId, String roles)
        {
            FilmPersonLink filmPersonRelations = new FilmPersonLink();
            Boolean isFilmCreated = false;
            using (var con = new NpgsqlConnection(connString))
            {
                con.Open();
                Console.WriteLine(filmId);
                Console.WriteLine(personId);
                Console.WriteLine(roles);
                using var batch = new NpgsqlBatch(con)
                {
                    BatchCommands = {
                        new($"SELECT * FROM add_update_film_person_relation('{filmId}', '{personId}', '{roles}')"),
                        new($"SELECT is_film_person_relation_exists('{filmId}', '{personId}')") // also check whether the film is created correctly for insert op
                    }
                };
                using (NpgsqlDataReader reader = batch.ExecuteReader())
                {
                    reader.Read(); // do the first command
                    reader.NextResult();
                    while (reader.Read())
                    {
                        isFilmCreated = (Boolean)reader.GetValue(0);
                    }
                }
                // film created successfully
                if (isFilmCreated)
                {
                    filmPersonRelations.filmId = filmId;
                    filmPersonRelations.personId = personId;
                    filmPersonRelations.roles = roles;
                }
            }
            return filmPersonRelations;
        }
        
        public Boolean deleteFilmPersonRelationByIds(Guid filmId, Guid personId)
        {
            Boolean isRelationDeleted = false;
            using (var con = new NpgsqlConnection(connString))
            {
                con.Open();
                using var batch = new NpgsqlBatch(con)
                {
                    BatchCommands = {
                        new($"SELECT delete_film_people_relation('{filmId}', '{personId}')"),
                        new($"SELECT is_film_person_relation_exists('{filmId}', '{personId}')")
                    }
                };
                using (NpgsqlDataReader reader = batch.ExecuteReader())
                {
                    reader.Read();
                    reader.NextResult();
                    while (reader.Read())
                    {
                        isRelationDeleted = (Boolean)reader.GetValue(0);
                    }
                }
            }
            return isRelationDeleted;
        }
    }
}
