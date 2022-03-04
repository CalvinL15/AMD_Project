using AMD_Project.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;

namespace AMD_Project.Controllers
{
    public class FilmRelatedPersonController : Controller
    {
        private readonly IFilmRelatedPersonRepository _filmRelatedPersonRepository;
        public FilmRelatedPersonController(IFilmRelatedPersonRepository filmRelatedPersonRepository)
        {
            _filmRelatedPersonRepository = filmRelatedPersonRepository;
        }
        [HttpGet("persons")]
        public List<FilmRelatedPerson> readAllFilmRelatedPersons()
        {
            return _filmRelatedPersonRepository.readAllFilmRelatedPersons();
        }

        [HttpGet("persons/{personId}")]
        public FilmRelatedPerson readFilmRelatedPersonById(Guid personId)
        {
            return _filmRelatedPersonRepository.readFilmRelatedPersonById(personId); 
        }

        [HttpPost("person")]
        public FilmRelatedPerson createFilmRelatedPerson(FilmRelatedPerson person)
        {
            return _filmRelatedPersonRepository.createFilmRelatedPerson(person);
        }

        [HttpPut("person/{personId}")]
        public FilmRelatedPerson updateFilmRelatedPersonById(FilmRelatedPerson person)
        {
            return _filmRelatedPersonRepository.updateFilmRelatedPersonById(person);
        }

        [HttpDelete("person/{personId}")]
        public Boolean deleteFilmRelatedPersonById([FromRoute] Guid personId)
        {
            Boolean isDeletionSuccess = _filmRelatedPersonRepository.deleteFilmRelatedPersonById(personId) ? false : true;
            return isDeletionSuccess;
        }

        [HttpGet("filmpersonrel")]
        public List<FilmPersonLink> readFilmPersonRelations([FromQuery] Guid filmId, [FromQuery] Guid personId)
        {
            if (filmId == Guid.Empty && personId == Guid.Empty)
                return _filmRelatedPersonRepository.readAllFilmPersonRelations();
            else if (filmId != Guid.Empty)
                return _filmRelatedPersonRepository.readFilmPersonRelationsByFilmId(filmId);
            else return _filmRelatedPersonRepository.readFilmPersonRelationsByPersonId(personId);
        }

        [HttpPost("filmpersonrel")]
        public FilmPersonLink createUpdateFilmPersonRelationByIds(Guid filmId, Guid personId, String roles)
        {
            return _filmRelatedPersonRepository.createUpdateFilmPersonRelationByIds(filmId, personId, roles);
        }

        [HttpDelete("filmpersonrel")]
        public Boolean deleteFilmPersonRelationByIds([FromQuery] Guid filmId,[FromQuery] Guid personId)
        {
            Boolean isDeletionSuccess = _filmRelatedPersonRepository.deleteFilmPersonRelationByIds(filmId, personId) ? false : true;
            return isDeletionSuccess;
        }
    }
}
