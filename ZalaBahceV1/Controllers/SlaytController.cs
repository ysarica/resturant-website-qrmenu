using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ZalaBahceV1.Models;

namespace ZalaBahceV1.Controllers
{
    [UserAuthorize]

    public class SlaytController : Controller
    {
        ZalaDB db = new ZalaDB();

        // GET: Slayt
        public ActionResult Index()
        {
            return View(db.Slider.ToList());
        }
        public ActionResult SlaytEkle()
        {
            return View();
        }
        [HttpPost]
        public ActionResult SlaytEkle(Slider r, HttpPostedFileBase resim)
        {
            if (resim != null && resim.ContentLength > 0)
            {
                string dosyaAdi = Guid.NewGuid().ToString() + Path.GetExtension(resim.FileName);
                resim.SaveAs(Server.MapPath("~/Resim/Slayt/" + dosyaAdi));

                r.resim ="/Resim/Slayt/" + dosyaAdi;
                if (r.link=="")
                {
                    r.link = "bos";
                }    
                db.Slider.Add(r);
                db.SaveChanges();
            }

            return Redirect("/Slayt/Index");

        }
        public ActionResult SlaytDuzenle(int SID)
        {
            return View(db.Slider.Where(x => x.SID == SID).SingleOrDefault());
        }
        [HttpPost]
        public ActionResult SlaytDuzenle(Slider r, HttpPostedFileBase resim, int SID)
        {
            Slider slayt = db.Slider.Where(x => x.SID == SID).SingleOrDefault();
            if (resim != null && resim.ContentLength > 0)
            {
                if (System.IO.File.Exists(Server.MapPath("/Resim/Slayt/" + r.resim)))
                {
                    System.IO.File.Delete(Server.MapPath("/Resim/Slayt/" + r.resim));
                }
                string dosyaAdi = Guid.NewGuid().ToString() + Path.GetExtension(resim.FileName);
                resim.SaveAs(Server.MapPath("~/Resim/Slayt/" + dosyaAdi));

                slayt.resim = "/Resim/Slayt/" + dosyaAdi;
                slayt.baslik = r.baslik;
                slayt.slogan = r.slogan;
                if (r.link == "")
                {
                    r.link = "bos";
                }
                else
                {
                    slayt.link = r.link;

                }
                db.SaveChanges();
            }



            return Redirect("/Slayt/Index");
        }
        public ActionResult SlaytSil(int SID)
        {
            Slider r = db.Slider.Find(SID);

            if (System.IO.File.Exists(Server.MapPath("/Resim/Slayt/" + r.resim)))
            {
                System.IO.File.Delete(Server.MapPath("/Resim/Slayt/" + r.resim));
            }
            db.Slider.Remove(r);
            db.SaveChanges();
            return Redirect("/Slayt/Index");
        }
    }
}