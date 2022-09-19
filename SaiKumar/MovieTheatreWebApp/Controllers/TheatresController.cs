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
    [Authorize(Roles = "Admin")]

    public class TheatresController : Controller
    {
        private readonly TheatreApiData _context;

        public TheatresController(TheatreApiData context)
        {
            _context = context;
        }

        // GET: Theatres
        public async Task<IActionResult> Index()
        {
              return View(_context.GetTheatre());
        }

        // GET: Theatres/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null )
            {
                return NotFound();
            }

            var theatre = _context.FindById(id);
            if (theatre == null)
            {
                return NotFound();
            }

            return View(theatre);
        }

        // GET: Theatres/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Theatres/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Name,City,NumberOfSeat,Rate,Status")] Theatre theatre)
        {
            if (ModelState.IsValid)
            {
                _context.AddTheatre(theatre);
               
                return RedirectToAction(nameof(Index));
            }
            return View(theatre);
        }

        // GET: Theatres/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var theatre = _context.FindById(id);
            if (theatre == null)
            {
                return NotFound();
            }
            return View(theatre);
        }

        // POST: Theatres/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit([Bind("Id,Name,City,NumberOfSeat,Rate,Status")] Theatre theatre)
        {
            if (theatre.Id==0)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(theatre);
                    
                }
                catch (DbUpdateConcurrencyException)
                {
                    
                        return NotFound();
                    
                }
                return RedirectToAction(nameof(Index));
            }
            return View(theatre);
        }

        // GET: Theatres/Delete/5
       

        
    }
}
