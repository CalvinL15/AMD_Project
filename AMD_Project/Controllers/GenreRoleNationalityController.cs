using System;
using System.Collections.Generic;
using AMD_Project.Models;
using Microsoft.AspNetCore.Mvc;

namespace AMD_Project.Controllers
{
    public class GenreRoleNationalityController
    {
        private readonly IGenreRoleNationalityRepository _genreRoleNationalityRepository;
        public GenreRoleNationalityController(IGenreRoleNationalityRepository genreRoleNationalityRepository)
        {
            _genreRoleNationalityRepository = genreRoleNationalityRepository;
        }

        [HttpGet("genres")]
        public List<String> getAllAvailableGenres()
        {
            return _genreRoleNationalityRepository.readAllAvailableGenres();
        }

        [HttpGet("roles")]
        public List<String> getAllAvailableRoles()
        {
            return _genreRoleNationalityRepository.readAllAvailableRoles();
        }

        [HttpGet("nationalities")]
        public List<String> getAllAvailableNationalities()
        {
            return _genreRoleNationalityRepository.readAllAvailableNationalities();
        }
    }
}
