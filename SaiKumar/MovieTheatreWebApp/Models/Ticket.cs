using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MovieTheatreWebApp.Models
{
    public class Ticket
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key]
        public int Id { get; set; }
        [Column(TypeName = "varchar(50)")]
        public string? Title { get; set; }
        [Column(TypeName = "varchar(50)")]
        public string? TheatreName { get; set; }
        [Column(TypeName = "integer")]
        [Range(1, 5, ErrorMessage = "Minimum $ Maximum  Tickets Are 1 to 5")]
        public int NoOfSeat { get; set; }
        [Column(TypeName = "varchar(50)")]
        public string? WhoAdded { get; set; }
        [Column(TypeName = "integer")]
        public int Status { get; set; }
    }
}
