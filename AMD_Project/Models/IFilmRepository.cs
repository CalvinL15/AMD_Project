using System;
using System.Collections.Generic;
namespace AMD_Project.Models
{
    public interface IFilmRepository
    {
        List<Film> readAllFilms();
        List<Film> readRootFilms();
        List<Film> readSubordinatedFilms(Guid filmId);
        Film readFilmById(Guid filmId);
        Film createFilm(Film film);
        Film updateFilmById(Film film);
        Boolean deleteFilmById(Guid id);
        List<Film> readFilmRecommendationByUserId(Guid userId);
    }
}
