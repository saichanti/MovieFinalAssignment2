using AutoMapper;
using MovieTheatreWebApp.ApiModel;
using MovieTheatreWebApp.Models;
using Newtonsoft.Json;

namespace MovieTheatreWebApp.ApiDataServices
{
    public class MovieApiData
    {
        readonly Uri baseAddress;
        readonly HttpClient httpClient;
        private readonly IMapper _mapper;
        public MovieApiData(IMapper mapper)
        {
            this.baseAddress = new Uri("https://localhost:7247/");
            this.httpClient = new HttpClient();
            _mapper = mapper;
        }
        public List<Movie> GetMovies()
        {
            HttpResponseMessage Response = httpClient.GetAsync(baseAddress + "Movies/Index").Result;
            if (Response.IsSuccessStatusCode)
            {
                string data = Response.Content.ReadAsStringAsync().Result;
                var list = JsonConvert.DeserializeObject<List<MovieApiModel>>(data);
                var movie = _mapper.Map<List<Movie>>(list);
                return movie;

            }

            return new List<Movie>();


        }

        //create
        public bool AddMovie(Movie movie)
        {
            var movieApiModel = _mapper.Map<MovieApiModel>(movie);

            var data = JsonConvert.SerializeObject(movieApiModel);
            var contentData = new StringContent(data, System.Text.Encoding.UTF8, "application/json");
            HttpResponseMessage response = httpClient.PostAsync(baseAddress + "Movies/Create", contentData).Result;
            if (response.IsSuccessStatusCode)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public bool Update(Movie movie)
        {
            var movieApi = _mapper.Map<MovieApiModel>(movie);
            string stringData = JsonConvert.SerializeObject(movieApi);
            var contentData = new StringContent(stringData, System.Text.Encoding.UTF8, "application/json");
            HttpResponseMessage response = httpClient.PutAsync(baseAddress + "Movies/Edit", contentData).Result;
            if (response.IsSuccessStatusCode)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public Movie FindById(int id)
        {
            HttpResponseMessage response = httpClient.GetAsync(baseAddress + "Movies/Details?id=" + id).Result;
            string stringData = response.Content.ReadAsStringAsync().Result;
            MovieApiModel data = JsonConvert.DeserializeObject<MovieApiModel>(stringData)!;
            var movie = _mapper.Map<Movie>(data);
            return (movie);
        }
        public List<string> OnlyName()
        {
            HttpResponseMessage Response = httpClient.GetAsync(baseAddress + "Movies/OnlyMovieName").Result;
            if (Response.IsSuccessStatusCode)
            {
                string data = Response.Content.ReadAsStringAsync().Result;
                var list = JsonConvert.DeserializeObject<List<string>>(data);
               
                return list;

            }

            return new List<string>();

        }
    }
}
