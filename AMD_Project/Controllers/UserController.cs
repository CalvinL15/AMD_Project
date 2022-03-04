using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System;
using AMD_Project.Models;

namespace AMD_Project.Controllers
{
    public class UserController : Controller
    {
        private readonly IUserRepository _userRepository;

        public UserController(IUserRepository userRepository)
        {
            _userRepository = userRepository;
        }

        [HttpGet("users")]
        public List<User> readUsers()
        {
            return _userRepository.readAllUsers();
        }

        [HttpGet("users/{userId}")]
        public User readUserById(Guid userId)
        {
            return _userRepository.readUserById(userId);
        }

        [HttpPost("user")]
        public User createUser(String username)
        {
            return _userRepository.createUser(username);
        }

        [HttpPut("user/{userId}")]
        public User renameUserById([FromRoute] Guid userId, String username)
        {
            Console.WriteLine(userId);
            Console.WriteLine(username);
            return _userRepository.renameUsernameById(userId, username);
        }

        // POST user/userRating?userId={userId}&filmId={filmId}
        [HttpPost("user/userRating")]
        public FilmUserLink rateFilm([FromQuery] Guid userId, [FromQuery] Guid filmId, int rating)
        {
            return _userRepository.rateFilm(userId, filmId, rating);
        }

        [HttpDelete("user/{userId}")]
        public Boolean deleteUser([FromRoute] Guid userId)
        {
            Boolean isDeletionSuccess = _userRepository.deleteUser(userId) ? false : true;
            return isDeletionSuccess;
        }

        // DELETE user/userRating?userId={userId}&filmId={filmId}
        [HttpDelete("user/userRating")]
        public Boolean deleteFilmRating([FromQuery] Guid filmId, [FromQuery] Guid userId)
        {
            Boolean isDeletionSuccess = _userRepository.deleteFilmRating(filmId, userId) ? false : true;
            return isDeletionSuccess;
        }

        [HttpGet("users/filmRatings")]
        public List<FilmUserLink> readFilmRatings([FromQuery] Guid userId, [FromQuery] Guid filmId)
        {
            Console.WriteLine(userId);
            if(userId == Guid.Empty && filmId == Guid.Empty)
            {
                return _userRepository.readAllFilmRatingsByAllUsers();
            } else if(userId != Guid.Empty)
            {
                // get film rating from a specific user
                
                return _userRepository.readAllFilmRatingsFromUserById(userId);
            } else
            {
                // get film rating for a specific film
                return _userRepository.readAllFilmRatingsForSpecificFilm(filmId);
            }
        }
    }
}
