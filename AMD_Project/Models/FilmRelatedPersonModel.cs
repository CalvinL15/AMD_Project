using System;
using System.Collections.Generic;

namespace AMD_Project.Models
{
    public class FilmRelatedPerson
    {
        public Guid id { get; set; }
        public NameModel name { get; set; }
        public DateTime dateofBirth { get; set; }
        public String sex { get; set; }
        public String nationality { get; set; }
    }
}
