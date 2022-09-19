using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TheatreMovieClassLibrary.Models
{
    public class Movie
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key]
        public int Id { get; set; }
        [Required,Column(TypeName ="varchar(50)"),MaxLength(50)]
        public string? Title { get; set; }
        [Required,Column(TypeName ="varchar(50)"),MaxLength(50)]
        public string? TheaterName { get; set; }
        [Required, DataType(DataType.Date)]
        public DateTime StartDate { get; set; }
        [Required, DataType(DataType.Date)]
        public DateTime EndDate { get; set; }
        [Column(TypeName ="integer")]
        public int Status { get; set; }

    }
}
