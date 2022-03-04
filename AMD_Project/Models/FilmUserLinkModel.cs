using System;
namespace AMD_Project.Models
{
    public class FilmUserLink
    {
        public Guid filmId { get; set; }
        public Guid userId { get; set; }
        public int filmRating { get; set; }
    }
}
