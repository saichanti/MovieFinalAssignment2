using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using TheatreMovieClassLibrary.Data;
using TheatreMovieClassLibrary.Models;

namespace TheatreMovieApi.Controllers
{
    [ApiController]
    [Route("[controller]/[action]")]
    public class MoviesController : Controller
    {
        private ApiApplicationDbContext _context;

        public MoviesController(ApiApplicationDbContext apiApplicationDbContext)
        {
            _context = apiApplicationDbContext;
        }
        [HttpGet]
public ActionResult Index()
{
    var theatre = _context.Movies!.Where(t => t.Status != 0).OrderBy(t => t.Title).ToList();
    return Ok(JsonConvert.SerializeObject(theatre));
}

// GET: TheatreController/Details/5
[HttpGet]
public ActionResult Details(int id)
{
    var movie = _context.Movies!.Find(id);

    return Ok(JsonConvert.SerializeObject(movie));
}

// GET: TheatreController/Create
[HttpPost]
public ActionResult Create(Movie movie)
{
    if (movie == null)
    {
        return BadRequest();
    }
    var movieId = _context.Movies!.Where(m => m.Title == movie.Title && m.Status == 0).FirstOrDefault();
    if (movieId == null)
    {
        _context.Movies!.Add(movie);
        _context.SaveChanges();
        return Ok("Success");

    }
    else
    {


        movieId.Status = movie.Status;
        movieId.StartDate = movie.StartDate;
        movieId.EndDate = movie.EndDate;
        movieId.TheaterName=movie.TheaterName;  
                
                

        _context.Movies!.Update(movieId);
        _context.SaveChanges();
        return Ok("Success");

    }

}


[HttpGet]
public ActionResult ByName(string name)
{
    var movie = _context.Movies!.Where(m => m.Title == name && m.Status!=0).FirstOrDefault();
    if (movie == null)
    {
        return BadRequest();
    }
    return Ok(JsonConvert.SerializeObject(movie));

}

        // POST: TheatreController/Edit/5
       
        [HttpPut]
public ActionResult Edit(Movie movie)
{
    try
    {

        if (movie == null)
        {
            return BadRequest();
        }
        else
        {

            _context.Movies!.Update(movie);
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
    var movie = _context.Movies!.Find(id);
    if (movie == null)
    {
        return BadRequest();
    }
    movie.Status = 0;

    _context.Movies!.Update(movie);
    _context.SaveChanges();
    return Ok();
}
        [HttpGet]
        public List<string> OnlyMovieName()
        {
            return _context.Movies!.Where(m=>m.Status!=0).Select(mo=>mo.Title).ToList()!;    
        }


    }
}
