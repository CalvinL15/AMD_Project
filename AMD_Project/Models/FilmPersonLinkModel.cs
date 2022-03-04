using System;
namespace AMD_Project.Models
{
    public class FilmPersonLink
    {
        public Guid filmId { get; set; }
        public Guid personId { get; set; }
        public String roles { get; set; }
    }
}
