using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TheatreMovieClassLibrary.Models
{
    public class Ticket
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key]
        public int Id { get; set; }
        [Column(TypeName ="varchar(50)")]
        public string? Title { get; set; }
        [Column(TypeName ="varchar(50)")]
        public string? TheatreName { get; set; }
        [Column(TypeName ="integer")]
        public int NoOfSeat { get; set; }
        [Column(TypeName ="varchar(50)")]
        public string? WhoAdded { get; set; }
        [Column(TypeName ="integer")]
        public int Status { get; set; }
    }
}
