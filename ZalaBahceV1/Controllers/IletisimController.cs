using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ZalaBahceV1.Models;

namespace ZalaBahceV1.Controllers
{
    [UserAuthorize]

    public class IletisimController : Controller
    {
        ZalaDB db = new ZalaDB();

        // GET: Iletisim
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult BilgiDuzenle(int ID)
        {
            return View(db.iletisim.Where(x=> x.ID==ID).SingleOrDefault());
        }
        [HttpPost]
        [ValidateInput(false)]
         public ActionResult BilgiDuzenle(iletisim i,int ID)
        {
            iletisim iletisim = db.iletisim.Where(x => x.ID == ID).SingleOrDefault();
            iletisim.baslik = i.baslik;
            iletisim.mail = i.mail;
            iletisim.telefon = i.telefon;
            if (ModelState.IsValid)
            {
            iletisim.adres = i.adres;
                iletisim.harita = i.harita;
            }
            iletisim.wpNo = i.wpNo;
            iletisim.wpMesaj = i.wpMesaj;
            db.SaveChanges();
            return Redirect("/Iletisim/BilgiDuzenle?ID=1");
        }
        public ActionResult Sosyal()
        {
            return View(db.Sosyal.ToList());
        }
        public PartialViewResult _SosyalEkle()
        {

            return PartialView("_SosyalEkle");
        }
        [HttpPost]
        public PartialViewResult _SosyalEkle(Sosyal s)
        {
           
                db.Sosyal.Add(s);
                db.SaveChanges();
                Response.Redirect("/Iletisim/Sosyal/");
                return PartialView();
        }
        public ActionResult _SosyalDuzenle(Sosyal s)
        {
            Sosyal so = db.Sosyal.Where(x => x.SID == s.SID).SingleOrDefault();
            so.ad = s.ad;
            so.icon = s.icon;
            so.link = s.link;
            db.SaveChanges();
            return Redirect("/Iletisim/Sosyal");
        }
        public ActionResult SosyalSil(int SID)
        {
            Sosyal k = db.Sosyal.Find(SID);
          
            db.Sosyal.Remove(k);
            db.SaveChanges();
            return Redirect("/Iletisim/Sosyal/");
        }
      


    }
}