using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using MovieTheatreWebApp.ApiDataServices;
using MovieTheatreWebApp.Data;
using MovieTheatreWebApp.Models;

namespace MovieTheatreWebApp.Controllers
{
    [Authorize(Roles = "Customer")]

    public class TicketsController : Controller
    {
        private readonly TicketApiData _context;
        private readonly TheatreApiData _Thcontext;
        private readonly MovieApiData _Mocontext;

        public TicketsController(TicketApiData context,TheatreApiData theatreApiData,MovieApiData movieApiData)
        {
            _context = context;
            _Thcontext = theatreApiData;
            _Mocontext = movieApiData;
        }

        // GET: Tickets
        public async Task<IActionResult> Index()
        {
              return View(_context.GetTicket(HttpContext.Session.GetString("UserName")!));
        }

       
        public IActionResult Create()
        {
            ViewBag.WhoAdded = HttpContext.Session.GetString("UserName");
           ViewBag.Theatres = _Thcontext.TheatreNames();
           ViewBag.Movies = _Mocontext.OnlyName();
            return View();
        }

        // POST: Tickets/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Title,TheatreName,NoOfSeat,WhoAdded,Status")] Ticket ticket)
        {
            if (ModelState.IsValid)
            {
                _context.AddTicket(ticket);
                return RedirectToAction(nameof(Index));
            }
            return View(ticket);
        }

        // GET: Tickets/Edit/5
       
    }
}
