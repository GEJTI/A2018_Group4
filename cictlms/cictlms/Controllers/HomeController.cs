using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using cictlms.Models;

namespace cictlms.Controllers
{
    public class HomeController : Controller
    {
        cictlmsEntities1 db = new cictlmsEntities1();
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Login()
        {
            ViewBag.Message = "Your login page.";
            return View();
        }
        [HttpPost]
        public ActionResult Login(login log)
        {

            var login=db.logins.Where(x => x.Username ==log.Username && x.Password== log.Password).Count();
            if (login > 0)
            {
                return RedirectToAction("Jee");


            }
            else
            {
                return View();

            }
        }
        public ActionResult Gate()
        {
            ViewBag.Message = "Your gate page.";

            return View();
        }
        public ActionResult Computer_Courses()
        {
            ViewBag.Message = "Your computer courses page.";

            return View();
        }
        public ActionResult Jee()
        {
            ViewBag.Message = "Your jee page.";

            return View();
        }
        public ActionResult Quiz()
        {
            ViewBag.Message = "Your quiz page.";

            return View();
        }

    }
}