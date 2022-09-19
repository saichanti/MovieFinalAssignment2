using Microsoft.AspNetCore.Mvc;
using MovieTheatreWebApp.Models;

namespace MovieTheatreWebApp.Controllers
{
    public class ProductController : Controller
    {
        public IList<Product> prod = new List<Product>();
        Product Product = new Product(1, "RRR Movie");

        public IActionResult Index()
        {
            CreateProducts();
            return View(prod);
        }

        private void CreateProducts()
        {
            prod.Add(Product);
            Product = new Product(2, "KGF Movie");
            prod.Add(Product);
            Product = new Product(3, "Liger Movie");
            prod.Add(Product);
            Product = new Product(4, "Avather Movie");
        }
        public ActionResult Details(int id)
        {
            if (id < 1)
            {
                return RedirectToAction("Index");
            }
            CreateProducts();
            var product= prod.Where(x => x.Id == id);
            var name=product.FirstOrDefault()?.Name;
            return View("Details",name);
        }
       
    }
}
