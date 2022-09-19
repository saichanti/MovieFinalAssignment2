using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using TheatreMovieClassLibrary.Data;
using TheatreMovieClassLibrary.Models;

namespace TheatreMovieApi.Controllers
{
    [ApiController]
    [Route("[controller]/[action]")]
    public class TicketController : Controller
    {
        private ApiApplicationDbContext _context;

        public TicketController(ApiApplicationDbContext apiApplicationDbContext)
        {
            _context = apiApplicationDbContext;
        }
        // GET: TicketController
        [HttpGet]
        public ActionResult Index(string email)
        {

            var ticket = _context.Tickets!.Where(t => t.Status != 0&& t.WhoAdded==email).OrderBy(t => t.TheatreName).ToList();
            return Ok(JsonConvert.SerializeObject(ticket));
        }

        // GET: TicketController/Details/5
        [HttpGet]
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: TicketController/Create
        [HttpPost]
        public ActionResult Create(Ticket ticket)
        {
            if (ticket == null)
            {
                return BadRequest();
            }
            var tkt = _context.Tickets!.Where(t => t.Title == ticket.Title && t.Status == 0).FirstOrDefault();
            if (tkt == null)
            {
                _context.Tickets!.Add(ticket);
                _context.SaveChanges();
                return Ok("Success");

            }
            else
            {


                tkt.Status = ticket.Status;
                tkt.TheatreName = ticket.TheatreName;
                tkt.WhoAdded = ticket.WhoAdded;
                tkt.NoOfSeat = ticket.NoOfSeat;

                _context.Tickets!.Update(tkt);
                _context.SaveChanges();
                return Ok("Success");

            }
        }


            // GET: TicketController/Delete/5
            [HttpDelete]
            public ActionResult Delete(int id)
                 {
                var movie = _context.Tickets!.Find(id);
                if (movie == null)
                {
                    return BadRequest();
                }
                movie.Status = 0;

                _context.Tickets!.Update(movie);
                _context.SaveChanges();
                return Ok();
                }


    }
    
}
