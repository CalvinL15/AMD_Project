using System;
using System.Collections.Generic;
namespace AMD_Project.Models
{
    public interface IUserRepository
    {
        List<User> readAllUsers();
        User readUserById(Guid userId);
        User createUser(string username);
        User renameUsernameById(Guid userId, string username);
        FilmUserLink rateFilm(Guid filmId, Guid userId, int rating);
        Boolean deleteFilmRating(Guid userId, Guid filmId);
        Boolean deleteUser(Guid userId);
        List<FilmUserLink> readAllFilmRatingsByAllUsers();
        List<FilmUserLink> readAllFilmRatingsFromUserById(Guid userId);
        List<FilmUserLink> readAllFilmRatingsForSpecificFilm(Guid filmId);
    }
}
