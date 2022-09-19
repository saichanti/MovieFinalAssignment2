using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MovieTheatreWebApp.Models
{
    public class Theatre
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key]
        public int Id { get; set; }
        [Required, Column(TypeName = "varchar(50)"), MaxLength(50)]
        public string? Name { get; set; }
        [Required, Column(TypeName = "varchar(30)"), MaxLength(30)]
        public string? City { get; set; }
        [Required, Column(TypeName = "integer")]
        [Range(50,300, ErrorMessage = "Minimum $ Maximum Seats  Are 50 to 300")]
        public int NumberOfSeat { get; set; }
        [Required, Column(TypeName = "integer")]
        [Range(200,int.MaxValue,ErrorMessage ="Minimum Rate 200")]
        public int Rate { get; set; }
        [Column(TypeName = "integer")]
        
        public int Status { get; set; }

    }
}
