using AMD_Project.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;

namespace AMD_Project.Controllers
{
    public class FilmController : Controller
    {
        private readonly IFilmRepository _filmRepository;
        public FilmController(IFilmRepository filmRepository)
        {
            _filmRepository = filmRepository;
        }
        [HttpGet("films")]
        public List<Film> readFilms([FromQuery] Guid subordinatedTo, [FromQuery] Boolean isRoot, [FromQuery] Guid filmRecTo)
        {
            if (subordinatedTo != Guid.Empty)
                return _filmRepository.readSubordinatedFilms(subordinatedTo);
            else if (isRoot)
                return _filmRepository.readRootFilms();
            else if (filmRecTo != Guid.Empty)
                return _filmRepository.readFilmRecommendationByUserId(filmRecTo);
            else return _filmRepository.readAllFilms();
        }
        [HttpGet("films/{filmId}")]
        public Film readFilmById([FromRoute] Guid filmId)
        {
            return _filmRepository.readFilmById(filmId);
        }

        [HttpPost("films")]
        public Film createFilm(Film film)
        {
            return _filmRepository.createFilm(film);
        }

        [HttpPut("films/{filmId}")]
        public Film updateFilmById(Film film)
        {
            return _filmRepository.updateFilmById(film);
        }

        [HttpDelete("films/{filmId}")]
        public Boolean deleteFilmById([FromRoute] Guid filmId)
        {
            Boolean isDeletionSuccess = _filmRepository.deleteFilmById(filmId) ? false : true;
            return isDeletionSuccess;
        }
    }
}
