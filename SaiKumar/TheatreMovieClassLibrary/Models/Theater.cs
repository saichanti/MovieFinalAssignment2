using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TheatreMovieClassLibrary.Models
{
    public class Theater
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key]
        public int Id { get; set; } 
        [Required,Column(TypeName ="varchar(50)"),MaxLength(50)]
        public string? Name { get; set; }    
        [Required,Column(TypeName ="varchar(30)"),MaxLength (30)]
        public string? City { get; set; }
        [Required,Column(TypeName ="integer")]
        public int NumberOfSeat { get; set; }
        [Required,Column(TypeName ="integer")]
        public int Rate { get; set; }
        [Column(TypeName="integer")]
        public int Status { get; set; }

        public object Get()
        {
            throw new NotImplementedException();
        }

      
    }
}
