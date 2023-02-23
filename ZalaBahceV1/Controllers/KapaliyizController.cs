using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ZalaBahceV1.Models;

namespace ZalaBahceV1.Controllers
{
    public class KapaliyizController : Controller
    {
        ZalaDB db = new ZalaDB();

        // GET: Kapaliyiz
        public ActionResult Simdilik()
        {
            ViewBag.sosyal = db.Sosyal.ToList();
            return View(db.iletisim.ToList());
        }
    }
}