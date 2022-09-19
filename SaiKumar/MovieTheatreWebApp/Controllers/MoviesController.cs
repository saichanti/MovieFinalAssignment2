using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using MovieTheatreWebApp.ApiDataServices;
using MovieTheatreWebApp.Models;

namespace MovieTheatreWebApp.Controllers
{
    [Authorize(Roles = "Admin")]
    public class MoviesController : Controller
    {
        private readonly MovieApiData _context;
        private readonly TheatreApiData _context_2;

        // GET: MoviesController
        public MoviesController(MovieApiData movieApiData, TheatreApiData theatreApiData)
        {
            _context = movieApiData;
            _context_2 = theatreApiData;
        }
        public ActionResult Index()
        {


            return View(_context.GetMovies());
        }

        // GET: MoviesController/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: MoviesController/Create
        public ActionResult Create()
        {
            ViewBag.Theatres = _context_2.TheatreNames();
            return View();
        }

        // POST: MoviesController/Create
        [HttpPost]
        // [ValidateAntiForgeryToken]
        public ActionResult Create(Movie movie)
        {
            try
            {
                _context.AddMovie(movie);
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: MoviesController/Edit/5
        [HttpGet]
        public ActionResult Edit(int id)
        {
            return View(_context.FindById(id));
        }

        // POST: MoviesController/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Movie movie)
        {
            try
            {
                _context.Update(movie);
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: MoviesController/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: MoviesController/Delete/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Delete(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }
        [HttpGet]
        public JsonResult ValidateEndName(DateTime startDate, DateTime endDate) 
        {
            if (startDate > endDate)
                return Json("EndDate Date should Not be  Lessthen  StartDate ");
            else
                return Json(true);
        }
    }
}
    
   