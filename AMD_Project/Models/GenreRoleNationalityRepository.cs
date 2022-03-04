using System;
using System.Collections.Generic;
using System.Configuration;
using Npgsql;

namespace AMD_Project.Models
{
    public class GenreRoleNationalityRepository : IGenreRoleNationalityRepository
    {
        string connString;
        public GenreRoleNationalityRepository()
        {
            connString = "Host=" + ConfigurationManager.AppSettings.Get("Host") + ";Username=" +
            ConfigurationManager.AppSettings.Get("Username") + ";Password=" + ConfigurationManager.AppSettings.Get("Password") +
            ";Database=" + ConfigurationManager.AppSettings.Get("Database");
        }

        public List<String> readAllAvailableRoles()
        {
            List<String> rolesList = new List<String>();
            using (var con = new NpgsqlConnection(connString))
            {
                using (NpgsqlCommand cmd = new NpgsqlCommand("SELECT * FROM role_list", con))
                {
                    con.Open();
                    using (NpgsqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            rolesList.Add((String)reader.GetValue(0));
                        }
                    }
                }   
            }
            return rolesList;
        }

        public List<String> readAllAvailableGenres()
        {
            List<String> genresList = new List<String>();
            using (var con = new NpgsqlConnection(connString))
            {
                using (NpgsqlCommand cmd = new NpgsqlCommand("SELECT * FROM film_genre_list", con))
                {
                    con.Open();
                    using (NpgsqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            genresList.Add((String)reader.GetValue(0));
                        }
                    }
                }
            }
            return genresList;
        }

        public List<String> readAllAvailableNationalities()
        {
            List<String> nationalitiesList = new List<String>();
            using (var con = new NpgsqlConnection(connString))
            {
                using (NpgsqlCommand cmd = new NpgsqlCommand("SELECT * FROM country_list", con))
                {
                    con.Open();
                    using (NpgsqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            nationalitiesList.Add((String)reader.GetValue(0));
                        }
                    }
                }
            }
            return nationalitiesList;
        }
    }
}
