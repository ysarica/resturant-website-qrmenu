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

    public class GaleriController : Controller
    {
        ZalaDB db = new ZalaDB();

        // GET: Galeri
        public ActionResult ResimListele()
        {
            return View(db.Galeri.ToList());
        }
        public ActionResult ResimSil(int ID)
        {
            Galeri r = db.Galeri.Find(ID);

            if (System.IO.File.Exists(Server.MapPath("/Galeri/Slayt/" + r.resim)))
            {
                System.IO.File.Delete(Server.MapPath("/Galeri/Slayt/" + r.resim));
            }
            db.Galeri.Remove(r);
            db.SaveChanges();
            return Redirect("/Galeri/ResimListele");
        }
        public ActionResult ResimEkle()
        {

            return View();
        }
        [HttpPost]
        public ActionResult ResimEkle(Galeri g, HttpPostedFileBase resim)
        {
           
            if (resim != null && resim.ContentLength > 0)
            {
                string dosyaAdi = Guid.NewGuid().ToString() + Path.GetExtension(resim.FileName);
                resim.SaveAs(Server.MapPath("/Resim/Galeri/" + dosyaAdi));
                g.resim = "/Resim/Galeri/" + dosyaAdi;
                db.Galeri.Add(g);
                db.SaveChanges();
            }

            return Redirect("/Galeri/ResimListele");
        }

        public ActionResult ResimDuzenle(int ID)
        {
            return View(db.Galeri.Where(x => x.ID == ID).SingleOrDefault());
        }
        [HttpPost]
        public ActionResult ResimDuzenle(Galeri r, HttpPostedFileBase resim, int ID)
        {
            Galeri slayt = db.Galeri.Where(x => x.ID == ID).SingleOrDefault();
            if (resim != null && resim.ContentLength > 0)
            {
                if (System.IO.File.Exists(Server.MapPath("/Resim/Slayt/" + r.resim)))
                {
                    System.IO.File.Delete(Server.MapPath("/Resim/Slayt/" + r.resim));
                }
                string dosyaAdi = Guid.NewGuid().ToString() + Path.GetExtension(resim.FileName);
                resim.SaveAs(Server.MapPath("~/Resim/Slayt/" + dosyaAdi));

                slayt.resim = "/Resim/Slayt/" + dosyaAdi;
               
            }
 slayt.Baslik = r.Baslik;
                slayt.aciklama = r.aciklama;
                db.SaveChanges();


            return Redirect("/Galeri/ResimListele");
        }
    }
}