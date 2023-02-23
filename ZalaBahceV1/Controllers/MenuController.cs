using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ZalaBahceV1.Models;

namespace ZalaBahceV1.Controllers
{
    public class MenuController : Controller
    {
        ZalaDB db = new ZalaDB();

        // GET: Menu
       
        public ActionResult Hosgeldiniz()
        {
            return View(db.UrunKategori.ToList());
        }
        public ActionResult Menus(int Kategori)
        {
            UrunKategori k = db.UrunKategori.Where(x => x.kategoriID == Kategori).SingleOrDefault();
            ViewBag.KatAd = k.baslik;
            ViewBag.KatAc = k.aciklama;
            return View(db.Urun.Where(x => x.katID == Kategori && x.aktif== "aktif").ToList());
        }
        public ActionResult Detail(int Urun)
        {
            return View(db.Urun.Where(x => x.urunID == Urun && x.aktif == "aktif").SingleOrDefault());
        }
    }
}