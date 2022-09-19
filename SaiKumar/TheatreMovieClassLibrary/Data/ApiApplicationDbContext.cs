using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TheatreMovieClassLibrary.Models;

namespace TheatreMovieClassLibrary.Data
{
    public class ApiApplicationDbContext:DbContext
    {
        public DbSet<Ticket>? Tickets { get; set; }
        public DbSet<Movie>? Movies { get; set; }
        public DbSet<Theater>? Theaters { get; set; }
        public ApiApplicationDbContext(DbContextOptions<ApiApplicationDbContext> dbContextOptions) : base(dbContextOptions)
        {

        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Theater>().HasIndex(u => u.Name).IsUnique();
            modelBuilder.Entity<Movie>().HasIndex(m=>m.Title).IsUnique();
        }
    }
}
