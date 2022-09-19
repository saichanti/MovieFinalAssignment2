using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;

namespace MovieTheatreWebApp.Controllers
{
    public class AccountController : Controller
    {
        private readonly UserManager<IdentityUser> _userManager;

        public AccountController(UserManager<IdentityUser> userManager)
        {
            _userManager = userManager;

        }
        public IActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public IActionResult IsEmail(string emailId)
        {
            var isExist=_userManager.Users.Where(u=>u.Email==emailId).FirstOrDefault();
            if (isExist == null)
            {
                return Ok("0");
            }
            else
            {
                return Ok("1");
            }


        }
        [HttpPost]
        public IActionResult IsPhoneNumberExists(string phoneNumber)
        {
            var isExist = _userManager.Users.Where(u => u.PhoneNumber == phoneNumber).FirstOrDefault();
            if (isExist == null)
            {
                return Ok("0");
            }
            else
            {
                return Ok("1");
            }


        }

        
    }
}
