using System;
using System.Collections.Generic;
using System.Configuration;
using Npgsql;

namespace AMD_Project.Models
{
    public class FilmRepository : IFilmRepository
    {
        string connString;
        public FilmRepository()
        {
            connString = "Host=" + ConfigurationManager.AppSettings.Get("Host") + ";Username=" +
            ConfigurationManager.AppSettings.Get("Username") + ";Password=" + ConfigurationManager.AppSettings.Get("Password") +
            ";Database=" + ConfigurationManager.AppSettings.Get("Database") + ";Include Error Detail=true";
        }

        public List<Film> readAllFilms()
        {
            List<Film> filmList = new List<Film>();
            int index = 0;
            using (var con = new NpgsqlConnection(connString))
            {
                // get all films
                using (NpgsqlCommand cmd = new NpgsqlCommand("SELECT * from film", con))
                {
                    con.Open();
                    using (NpgsqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            filmList.Add(new Film());
                            filmList[index].id = (Guid)reader.GetValue(0);
                            filmList[index].title = (String)reader.GetValue(1);
                            filmList[index].releaseYear = (int)reader.GetValue(2);
                            filmList[index].genre = (String)reader.GetValue(3);
                            if (reader.GetValue(4).GetType() != typeof(DBNull))
                            {
                                filmList[index].minAgeOfAudience = (int)reader.GetValue(4);
                            }
                            filmList[index].countryOfProduction = (String)reader.GetValue(5);
                            if (reader.GetValue(6).GetType() != typeof(DBNull))
                            {
                                filmList[index].subordinatedTo = (Guid)reader.GetValue(6);
                            }
                            filmList[index].filmTotalRating = (int)reader.GetValue(7);
                            filmList[index].numberOfRaters = (int)reader.GetValue(8);
                            index++;
                        }
                    }
                }
            }
            return filmList;
        }

        public List<Film> readRootFilms()
        {
            List<Film> filmList = new List<Film>();
            int index = 0;
            using (var con = new NpgsqlConnection(connString))
            {
                // get all films
                using (NpgsqlCommand cmd = new NpgsqlCommand("SELECT * from retrieve_root_films()", con))
                {
                    con.Open();
                    using (NpgsqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            filmList.Add(new Film());
                            filmList[index].id = (Guid)reader.GetValue(0);
                            filmList[index].title = (String)reader.GetValue(1);
                            filmList[index].releaseYear = (int)reader.GetValue(2);
                            filmList[index].genre = (String)reader.GetValue(3);
                            if(reader.GetValue(4).GetType() != typeof(DBNull)){
                                filmList[index].minAgeOfAudience = (int)reader.GetValue(4);
                            }
                            filmList[index].countryOfProduction = (String)reader.GetValue(5);
                            //if(reader.GetValue(6).GetType() != typeof(DBNull))
                            //{
                            //    filmList[index].subordinatedTo = (Guid)reader.GetValue(6);
                            //}
                            filmList[index].filmTotalRating = (int)reader.GetValue(7);
                            filmList[index].numberOfRaters = (int)reader.GetValue(8);
                            index++;
                        }
                    }
                }
            }
            return filmList;
        }

        public List<Film> readSubordinatedFilms(Guid filmId)
        {
            List<Film> filmList = new List<Film>();
            int index = 0;
            using (var con = new NpgsqlConnection(connString))
            {
                // get all films
                using (NpgsqlCommand cmd = new NpgsqlCommand($"SELECT * from retrieve_films_by_parent_id('{filmId}')", con))
                {
                    con.Open();
                    using (NpgsqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            filmList.Add(new Film());
                            filmList[index].id = (Guid)reader.GetValue(0);
                            filmList[index].title = (String)reader.GetValue(1);
                            filmList[index].releaseYear = (int)reader.GetValue(2);
                            filmList[index].genre = (String)reader.GetValue(3);
                            if (reader.GetValue(4).GetType() != typeof(DBNull))
                            {
                                filmList[index].minAgeOfAudience = (int)reader.GetValue(4);
                            }
                            filmList[index].countryOfProduction = (String)reader.GetValue(5);
                            if (reader.GetValue(6).GetType() != typeof(DBNull))
                            {
                                filmList[index].subordinatedTo = (Guid)reader.GetValue(6);
                            }
                            filmList[index].filmTotalRating = (int)reader.GetValue(7);
                            filmList[index].numberOfRaters = (int)reader.GetValue(8);
                            index++;
                        }
                    }
                }
            }
            return filmList;
        }

        public Film readFilmById(Guid filmId)
        {
            Film film = new Film();
            using (var con = new NpgsqlConnection(connString))
            {
                // get all films
                using (NpgsqlCommand cmd = new NpgsqlCommand($"SELECT * from retrieve_film_details_by_id('{filmId}')", con))
                {
                    con.Open();
                    using (NpgsqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            film.id = (Guid)reader.GetValue(0);
                            film.title = (String)reader.GetValue(1);
                            film.releaseYear = (int)reader.GetValue(2);
                            film.genre = (String)reader.GetValue(3);
                            if (reader.GetValue(4).GetType() != typeof(DBNull))
                            {
                                film.minAgeOfAudience = (int)reader.GetValue(4);
                            }
                            film.countryOfProduction = (String)reader.GetValue(5);
                            if (reader.GetValue(6).GetType() != typeof(DBNull))
                            {
                                film.subordinatedTo = (Guid)reader.GetValue(6);
                            }
                            film.filmTotalRating = (int)reader.GetValue(7);
                            film.numberOfRaters = (int)reader.GetValue(8);
                           
                        }
                    }
                }
            }
            return film;
        }

        public List<Film> readFilmsByIds(Guid[] filmIds)
        {
            List<Film> filmList = new List <Film>();
            int index = 0;
            using (var con = new NpgsqlConnection(connString))
            {
                // get all films
                using (NpgsqlCommand cmd = new NpgsqlCommand($"SELECT * from retrieve_films_details_by_ids({filmIds})", con))
                {
                    con.Open();
                    using (NpgsqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            filmList.Add(new Film());
                            filmList[index].id = (Guid)reader.GetValue(0);
                            filmList[index].title = (String)reader.GetValue(1);
                            filmList[index].releaseYear = (int)reader.GetValue(2);
                            filmList[index].genre = (String)reader.GetValue(3);
                            if (reader.GetValue(4).GetType() != typeof(DBNull))
                            {
                                filmList[index].minAgeOfAudience = (int)reader.GetValue(4);
                            }
                            filmList[index].countryOfProduction = (String)reader.GetValue(5);
                            if (reader.GetValue(6).GetType() != typeof(DBNull))
                            {
                                filmList[index].subordinatedTo = (Guid)reader.GetValue(6);
                            }
                            filmList[index].filmTotalRating = (int)reader.GetValue(7);
                            filmList[index].numberOfRaters = (int)reader.GetValue(8);
                            index++;

                        }
                    }
                }
            }
            return filmList;
        }

        public List<Film> readFilmRecommendationByUserId(Guid userId)
        {
            List<Film> recommendedFilmList = new List<Film>();
            int index = 0;
            using (var con = new NpgsqlConnection(connString))
            {
                using (NpgsqlCommand cmd = new NpgsqlCommand($"SELECT * FROM recommend_film_for_user_by_id('{userId}')", con))
                {
                    con.Open();
                    using (NpgsqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            recommendedFilmList.Add(new Film());
                            recommendedFilmList[index].id = (Guid)reader.GetValue(0);
                            recommendedFilmList[index].title = (String)reader.GetValue(1);
                            recommendedFilmList[index].releaseYear = (int)reader.GetValue(2);
                            recommendedFilmList[index].genre = (String)reader.GetValue(3);
                            if (reader.GetValue(4).GetType() != typeof(DBNull))
                            {
                                recommendedFilmList[index].minAgeOfAudience = (int)reader.GetValue(4);
                            }
                            recommendedFilmList[index].countryOfProduction = (String)reader.GetValue(5);
                            if (reader.GetValue(6).GetType() != typeof(DBNull))
                            {
                                recommendedFilmList[index].subordinatedTo = (Guid)reader.GetValue(6);
                            }
                            recommendedFilmList[index].filmTotalRating = (int)reader.GetValue(7);
                            recommendedFilmList[index].numberOfRaters = (int)reader.GetValue(8);
                            index++;
                        }
                    }
                }
            }
            return recommendedFilmList;
        }

        public Film createFilm(Film film)
        {
            using (var con = new NpgsqlConnection(connString))
            {
                using (NpgsqlCommand cmd = new NpgsqlCommand($"SELECT * FROM add_film('{film.title}', '{film.releaseYear}', '{film.genre}', '{film.minAgeOfAudience}', '{film.countryOfProduction}', '{film.subordinatedTo}', NULL, NULL)", con))
                {
                    con.Open();
                    using (NpgsqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            // if the query returns an id, it means that the request is successful
                            film.id = (Guid)reader.GetValue(0);
                        }
                    }
                }
            }
            return film;
        }
        public Film updateFilmById(Film film)
        {
            Film updatedFilm = new Film();
            using (var con = new NpgsqlConnection(connString))
            {
                Console.WriteLine(film.genre);
                using (NpgsqlCommand cmd = new NpgsqlCommand($"SELECT * FROM update_film_by_id('{film.id}', '{film.title}', '{film.releaseYear}', '{film.genre}', '{film.minAgeOfAudience}', '{film.countryOfProduction}', '{film.subordinatedTo}')", con))
                {
                    con.Open();
                    using (NpgsqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            // if the query returns sth, it means that the request is successful
                            film.id = (Guid)reader.GetValue(0);
                        }
                    }
                }
            }
            return film;
        }
        public Boolean deleteFilmById(Guid filmId)
        {
            Boolean isFilmDeleted = false;
            using (var con = new NpgsqlConnection(connString))
            {
                con.Open();
                using var batch = new NpgsqlBatch(con)
                {
                    BatchCommands = {
                        new($"SELECT remove_film_by_id('{filmId}')"),
                        new($"SELECT is_film_exists('{filmId}')")
                    }
                };
                using (NpgsqlDataReader reader = batch.ExecuteReader())
                {
                    reader.Read();
                    reader.NextResult();
                    while (reader.Read())
                    {
                        isFilmDeleted = (Boolean)reader.GetValue(0);
                    }
                }
            }
            return isFilmDeleted;
        }
    }
}
