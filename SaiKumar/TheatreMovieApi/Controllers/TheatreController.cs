using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using TheatreMovieClassLibrary.Data;
using TheatreMovieClassLibrary.Models;

namespace TheatreMovieApi.Controllers
{
    [ApiController]
    [Route("[controller]/[action]")]
    public class TheatreController : Controller
    {
        private ApiApplicationDbContext _context;

        public TheatreController(ApiApplicationDbContext apiApplicationDbcontext)
        {
            _context = apiApplicationDbcontext;
        }
        // GET: TheatreController
        private bool check(Theater theatre)
        {
            if (theatre == null)
            {
                return false;
            }
            var theaterId = _context.Theaters!.Where(t => t.Name == theatre.Name && t.Status == 0).FirstOrDefault();
            if (theaterId != null)
            {
                theaterId.Status = 1;
                _context.Theaters!.Update(theaterId);
                _context.SaveChanges();
                return true;

            }
            else
            {


                //theaterId.Status = theatre.Status;
                //theaterId.Rate = theatre.Rate;
                //theaterId.City = theatre.City;
                //theaterId.NumberOfSeat = theatre.NumberOfSeat;

                _context.Theaters!.Update(theatre);
                _context.SaveChanges();
                return true;

            }
        }
        [HttpGet]
        public ActionResult Index()
        {
            var theatre = _context.Theaters!.Where(t=>t.Status!=0).OrderBy(t=>t.Name).ToList();
            return Ok(JsonConvert.SerializeObject(theatre));
        }

        // GET: TheatreController/Details/5
        [HttpGet]
        public ActionResult Details(int id)
        {
            var theatre = _context.Theaters!.Find(id);

            return Ok(JsonConvert.SerializeObject(theatre));
        }

        // GET: TheatreController/Create
        [HttpPost]
        public ActionResult Create(Theater theatre)
        {
            if (theatre == null)
            {
                return BadRequest();
            }
            var theaterId = _context.Theaters!.Where(t => t.Name == theatre.Name && t.Status==0).FirstOrDefault();
            if (theaterId == null)
            {
                _context.Theaters!.Add(theatre);
                
                _context.SaveChanges();
                return Ok("Success");

            }
            else
            {
                
                
                theaterId.Status = theatre.Status;
                theaterId.Rate=theatre.Rate;
                theaterId.City=theatre.City;
                theaterId.NumberOfSeat=theatre.NumberOfSeat;
                
                _context.Theaters!.Update(theaterId);
                _context.SaveChanges();
                return Ok("Success");

            }
            
        }

        [HttpGet]
        public ActionResult ByName(string name)
        {
            var theater=_context.Theaters!.Where(t=>t.Name==name).FirstOrDefault();
            if (theater == null)
            {
                return BadRequest();
            }
            return Ok(JsonConvert.SerializeObject(theater));
           
        }

        // POST: TheatreController/Edit/5
        [HttpPut]
       
        public ActionResult Edit(Theater theater)
        {
            try
            {
                
                if (theater == null)
                {
                    return BadRequest();
                }
                else
                {

                    _context.Update(theater);
                    _context.SaveChanges();

                    return Ok();
                }
            }
            catch
            {
                return BadRequest();
            }
        }

        // GET: TheatreController/Delete/5
        [HttpDelete]
        public ActionResult Delete(int id)
        {
            var theater = _context.Theaters!.Find(id);
            if(theater == null)
            {
                return BadRequest();
            }
            theater.Status = 0;

            _context.Theaters.Update(theater);
            _context.SaveChanges();
            return Ok();
        }
        [HttpGet]
        public List<string> OnlyTheatreName()
        {
            var list = _context.Theaters!.Where(th => th.Status != 0).Select(t => t.Name).ToList();
            return list;

        }

      
        
    }
}
