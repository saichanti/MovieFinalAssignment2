using AutoMapper;
using MovieTheatreWebApp.ApiModel;
using MovieTheatreWebApp.Models;

namespace MovieTheatreWebApp.Mapper
{
    public class MapperProfile:Profile
    {
        public MapperProfile()
        {
            CreateMap<Movie, MovieApiModel>().ReverseMap();
            CreateMap<Ticket, TicketApiModel>().ReverseMap();
            CreateMap<Theatre, TheatreApiModel>().ReverseMap();
        }
    }
}
