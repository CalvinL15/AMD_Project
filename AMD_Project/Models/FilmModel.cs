using System;
using System.Collections.Generic;

namespace AMD_Project.Models
{
    public class Film
    {
        public Guid id { get; set; }
        public string title { get; set; }
        public int releaseYear { get; set; }
        public string genre { get; set; }
        public int minAgeOfAudience { get; set; }
        public string countryOfProduction { get; set; }
        public Guid subordinatedTo { get; set; }
        public int filmTotalRating { get; set; }
        public int numberOfRaters { get; set; }
    }
}
