using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MovieTheatreWebApp.ApiModel
{
    public class TheatreApiModel
    {
        
        public int Id { get; set; }
        public string? Name { get; set; }
        public string? City { get; set; }
        public int NumberOfSeat { get; set; }
        public int Rate { get; set; }
        public int Status { get; set; }

    }
}
