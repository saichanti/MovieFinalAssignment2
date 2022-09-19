using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using MovieTheatreWebApp.Models;

namespace MovieTheatreWebApp.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext()
        {
        }

        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }
        public DbSet<MovieTheatreWebApp.Models.Movie> Movie { get; set; }
        public DbSet<MovieTheatreWebApp.Models.Theatre> Theatre { get; set; }
        public DbSet<MovieTheatreWebApp.Models.Ticket> Ticket { get; set; }
    }
}