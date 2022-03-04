using System;
using System.Collections.Generic;
using System.Configuration;
using Npgsql;

namespace AMD_Project.Models
{
    public class UserRepository : IUserRepository
    {
        string connString;

        public UserRepository()
        {
            connString = "Host=" + ConfigurationManager.AppSettings.Get("Host") + ";Username=" +
            ConfigurationManager.AppSettings.Get("Username") + ";Password=" + ConfigurationManager.AppSettings.Get("Password") +
            ";Database=" + ConfigurationManager.AppSettings.Get("Database");
        }

        public List<User> readAllUsers()
        {
            List<User> userList = new List<User>();
            int index = 0;
            using (var con = new NpgsqlConnection(connString))
            {
                using (NpgsqlCommand cmd = new NpgsqlCommand("SELECT * from film_rater", con))
                {
                    con.Open();
                    using (NpgsqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            // retrieve table and put its content into a list
                            userList.Add(new User());
                            userList[index].id = (Guid)reader.GetValue(0);
                            userList[index].username = (string)reader.GetValue(1);
                            index++;
                        }
                    }
                }
            }
            return userList;
        }

        public User readUserById(Guid userId)
        {
            User user = new User();
            using (var con = new NpgsqlConnection(connString))
            {
                using (NpgsqlCommand cmd = new NpgsqlCommand($"SELECT * from film_rater WHERE film_rater.id = '{userId}'", con))
                {
                    con.Open();
                    using (NpgsqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            // retrieve table and put its content into a list
                            user.id = (Guid)reader.GetValue(0);
                            user.username = (string)reader.GetValue(1);
                        }
                    }
                }
            }
            return user;
        }

        public FilmUserLink rateFilm(Guid userId, Guid filmId, int rating)
        {
            FilmUserLink ratedFilm = new FilmUserLink();
            using (var con = new NpgsqlConnection(connString))
            {
                using (NpgsqlCommand cmd = new NpgsqlCommand($"SELECT * FROM rate_film_by_id('{filmId}', '{userId}', {rating})", con))
                {
                    con.Open();
                    using (NpgsqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ratedFilm.filmId = (Guid)reader.GetValue(0);
                            ratedFilm.userId = (Guid)reader.GetValue(1);
                            ratedFilm.filmRating = (int)reader.GetValue(2);
                        }
                    }
                }
            }
            return ratedFilm;
        }

        public User createUser(String username)
        {
            User createdUser = new User();
            using (var con = new NpgsqlConnection(connString))
            {
                using (NpgsqlCommand cmd = new NpgsqlCommand($"SELECT * FROM create_user('{username}')", con))
                {
                    con.Open();
                    using (NpgsqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            createdUser.id = (Guid)reader.GetValue(0);
                            
                        }
                    }
                }
            }
            createdUser.username = username;
            return createdUser;
        }

        public User renameUsernameById(Guid userId, String username)
        {
            User renamedUser = new User();
            using (var con = new NpgsqlConnection(connString))
            {
                using (NpgsqlCommand cmd = new NpgsqlCommand($"SELECT * FROM rename_user_by_id('{userId}', '{username}')", con))
                {
                    con.Open();
                    using (NpgsqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            renamedUser.username = (String)reader.GetValue(0);
                        }
                    }
                }
            }
            renamedUser.id = userId;
            return renamedUser;
        }

        public Boolean deleteFilmRating(Guid filmId, Guid userId)
        {
            Boolean isRatingStillExist = true;
            using (var con = new NpgsqlConnection(connString))
            {
                con.Open();
                using var batch = new NpgsqlBatch(con)
                {
                    BatchCommands = {
                        new($"SELECT remove_film_rating_by_id('{userId}', '{filmId}')"),
                        new($"SELECT is_film_rating_exists('{userId}', '{filmId}')")
                    }
                };
                using (NpgsqlDataReader reader = batch.ExecuteReader())
                {
                    reader.Read();
                    reader.NextResult();
                    while (reader.Read())
                    {
                        isRatingStillExist = (Boolean)reader.GetValue(0);
                    }
                }
            }
            return isRatingStillExist;
        }

        public Boolean deleteUser(Guid userId)
        {
            Boolean isUserStillExist = true;
            using (var con = new NpgsqlConnection(connString))
            {
                con.Open();
                using var batch = new NpgsqlBatch(con)
                {
                    BatchCommands = {
                        new($"SELECT remove_film_rater_by_id('{userId}')"),
                        new($"SELECT is_film_rater_exists('{userId}')")
                    }
                };
                using (NpgsqlDataReader reader = batch.ExecuteReader())
                {
                    reader.Read(); // do the first command
                    reader.NextResult();
                    while (reader.Read())
                    {
                        isUserStillExist = (Boolean)reader.GetValue(0);
                    }
                    
                }
            }
            return isUserStillExist;
        }

        public List<FilmUserLink> readAllFilmRatingsByAllUsers()
        {
            List<FilmUserLink> filmRatings = new List<FilmUserLink>();
            int index = 0;
            using (var con = new NpgsqlConnection(connString))
            {
                using (NpgsqlCommand cmd = new NpgsqlCommand("SELECT * from film_user_link", con))
                {
                    con.Open();
                    using (NpgsqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            // retrieve table and put its content into a list
                            filmRatings.Add(new FilmUserLink());
                            filmRatings[index].filmId = (Guid)reader.GetValue(0);
                            filmRatings[index].userId = (Guid)reader.GetValue(1);
                            filmRatings[index].filmRating = (int)reader.GetValue(2);
                            index++;
                        }
                    }
                }
            }
            return filmRatings;
        }

        public List<FilmUserLink> readAllFilmRatingsFromUserById(Guid userId)
        {
            List<FilmUserLink> filmRatings = new List<FilmUserLink>();
            int index = 0;
            using (var con = new NpgsqlConnection(connString))
            {
                using (NpgsqlCommand cmd = new NpgsqlCommand($"SELECT * from retrieve_user_film_ratings_by_id('{userId}')", con))
                {
                    con.Open();
                    using (NpgsqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            // retrieve table and put its content into a list
                            filmRatings.Add(new FilmUserLink());
                            filmRatings[index].filmId = (Guid)reader.GetValue(0);
                            filmRatings[index].userId = (Guid)reader.GetValue(1);
                            filmRatings[index].filmRating = (int)reader.GetValue(2);
                            index++;
                        }
                    }
                }
            }
            return filmRatings;
        }
        public List<FilmUserLink> readAllFilmRatingsForSpecificFilm(Guid filmId)
        {
            List<FilmUserLink> filmRatings = new List<FilmUserLink>();
            int index = 0;
            using (var con = new NpgsqlConnection(connString))
            {
                using (NpgsqlCommand cmd = new NpgsqlCommand($"SELECT * from retrieve_film_ratings_by_film_id('{filmId}')", con))
                {
                    con.Open();
                    using (NpgsqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            // retrieve table and put its content into a list
                            filmRatings.Add(new FilmUserLink());
                            filmRatings[index].filmId = (Guid)reader.GetValue(0);
                            filmRatings[index].userId = (Guid)reader.GetValue(1);
                            filmRatings[index].filmRating = (int)reader.GetValue(2);
                            index++;
                        }
                    }
                }
            }
            return filmRatings;
        }
    }
}
