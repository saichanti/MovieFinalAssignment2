namespace MovieTheatreWebApp.ApiModel
{
    public class MovieApiModel
    {
        
        public int Id { get; set; }
        public string? Title { get; set; }
        public string? TheaterName { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public int Status { get; set; }

    }
}
