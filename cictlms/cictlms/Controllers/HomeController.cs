using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace cictlms.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Login()
        {
            ViewBag.Message = "Your login page.";

            return View();
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