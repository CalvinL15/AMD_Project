using System;
using System.Collections.Generic;

namespace AMD_Project.Models
{
    public interface IGenreRoleNationalityRepository
    {
        List<String> readAllAvailableRoles();
        List<String> readAllAvailableGenres();
        List<String> readAllAvailableNationalities();
    }
}
