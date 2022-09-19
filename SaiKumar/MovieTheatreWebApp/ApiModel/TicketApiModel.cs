namespace MovieTheatreWebApp.ApiModel
{
    public class TicketApiModel
    {
        
        public int Id { get; set; }
        public string? Title { get; set; }
        public string? TheatreName { get; set; }
        public int NoOfSeat { get; set; }
        public string? WhoAdded { get; set; }
        public int Status { get; set; }
    }
}
