using AutoMapper;
using MovieTheatreWebApp.ApiModel;
using MovieTheatreWebApp.Models;
using Newtonsoft.Json;

namespace MovieTheatreWebApp.ApiDataServices
{
    public class TicketApiData
    {
        readonly Uri baseAddress;
        readonly HttpClient httpClient;
        private readonly IMapper _mapper;
        public TicketApiData(IMapper mapper)
        {
            this.baseAddress = new Uri("https://localhost:7247/");
            this.httpClient = new HttpClient();
            _mapper = mapper;
        }
        public List<Ticket> GetTicket(string email)
        {
            HttpResponseMessage Response = httpClient.GetAsync(baseAddress + "Ticket/Index?email="+email).Result;
            if (Response.IsSuccessStatusCode)
            {
                string data = Response.Content.ReadAsStringAsync().Result;
                var list = JsonConvert.DeserializeObject<List<TicketApiModel>>(data);
                var tkts = _mapper.Map<List<Ticket>>(list);
                return tkts;

            }

            return new List<Ticket>();


        }

        //create
        public bool AddTicket(Ticket ticket)
        {
            var ticketApiModel = _mapper.Map<TicketApiModel>(ticket);

            var data = JsonConvert.SerializeObject(ticketApiModel);
            var contentData = new StringContent(data, System.Text.Encoding.UTF8, "application/json");
            HttpResponseMessage response = httpClient.PostAsync(baseAddress + "Ticket/Create", contentData).Result;
            if (response.IsSuccessStatusCode)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

    }
}
