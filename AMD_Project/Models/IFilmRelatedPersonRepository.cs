using System;
using System.Collections.Generic;
namespace AMD_Project.Models
{
    public interface IFilmRelatedPersonRepository
    {
        List<FilmRelatedPerson> readAllFilmRelatedPersons();
        FilmRelatedPerson readFilmRelatedPersonById(Guid personId);
        FilmRelatedPerson createFilmRelatedPerson(FilmRelatedPerson person);
        FilmRelatedPerson updateFilmRelatedPersonById(FilmRelatedPerson person);
        Boolean deleteFilmRelatedPersonById(Guid personId);
        List<FilmPersonLink> readAllFilmPersonRelations();
        List<FilmPersonLink> readFilmPersonRelationsByPersonId(Guid personId);
        List<FilmPersonLink> readFilmPersonRelationsByFilmId(Guid filmId);
        FilmPersonLink createUpdateFilmPersonRelationByIds(Guid filmId, Guid personId, String roles);
        Boolean deleteFilmPersonRelationByIds(Guid personId, Guid filmId);
    }
}
