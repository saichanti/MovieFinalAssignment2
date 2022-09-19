using AutoMapper;
using MovieTheatreWebApp.ApiModel;
using MovieTheatreWebApp.Models;
using Newtonsoft.Json;

namespace MovieTheatreWebApp.ApiDataServices
{
    public class TheatreApiData
    {
        readonly Uri baseAddress;
        readonly HttpClient httpClient;
        private readonly IMapper _mapper;
        public TheatreApiData(IMapper mapper)
        {
            this.baseAddress = new Uri("https://localhost:7247/");
            this.httpClient = new HttpClient();
            _mapper = mapper;
        }
        public List<Theatre> GetTheatre()
        {
            HttpResponseMessage Response = httpClient.GetAsync(baseAddress + "Theatre/Index").Result;
            if (Response.IsSuccessStatusCode)
            {
                string data = Response.Content.ReadAsStringAsync().Result;
                var list = JsonConvert.DeserializeObject<List<TheatreApiModel>>(data);
                var Movie = _mapper.Map<List<Theatre>>(list);
                return Movie;

            }

            return new List<Theatre>();


        }

        //create
        public bool AddTheatre(Theatre theatre)
        {
            var TheatreApiModel = _mapper.Map<TheatreApiModel>(theatre);

            var data = JsonConvert.SerializeObject(TheatreApiModel);
            var contentData = new StringContent(data, System.Text.Encoding.UTF8, "application/json");
            HttpResponseMessage response = httpClient.PostAsync(baseAddress + "Theatre/Create", contentData).Result;
            if (response.IsSuccessStatusCode)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public bool Update(Theatre theatre)
        {
            var theatreApi = _mapper.Map<TheatreApiModel>(theatre);
            string stringData = JsonConvert.SerializeObject(theatreApi);
            var contentData = new StringContent(stringData, System.Text.Encoding.UTF8, "application/json");
            HttpResponseMessage response = httpClient.PutAsync(baseAddress + "Theatre/Edit", contentData).Result;
            if (response.IsSuccessStatusCode)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public List<string> TheatreNames()
        {

            HttpResponseMessage Response = httpClient.GetAsync(baseAddress + "Theatre/OnlyTheatreName").Result;
            if (Response.IsSuccessStatusCode)
            {
                string data = Response.Content.ReadAsStringAsync().Result;
                var list = JsonConvert.DeserializeObject<List<string>>(data);

                return list;

            }

            return new List<string>();

        }
        
        public Theatre FindById(int? id)
        {
            HttpResponseMessage response = httpClient.GetAsync(baseAddress + "Theatre/Details?id=" + id).Result;
            string stringData = response.Content.ReadAsStringAsync().Result;
            TheatreApiModel data = JsonConvert.DeserializeObject<TheatreApiModel>(stringData)!;
            var theatre = _mapper.Map<Theatre>(data);
            return theatre;
        }
    }
}
