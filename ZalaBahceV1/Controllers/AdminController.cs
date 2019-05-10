using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ZalaBahceV1.Models;

namespace ZalaBahceV1.Controllers
{
    public class AdminController : Controller
    {
        ZalaDB db = new ZalaDB();

        // GET: Admin
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult durum(int urunID)
        {
            Urun ur = db.Urun.Where(x => x.urunID == urunID).SingleOrDefault();
            if (ur.aktif == "aktif")
            {
                ur.aktif = "pasif";
            }
            else
            {
                ur.aktif = "aktif";

            }

            db.SaveChanges();


            return Redirect("/Admin/Urun");
        }
        public ActionResult Urun()
        {
            List<Urun> urun = db.Urun.ToList();
            return View(urun);
        }
        public ActionResult UrunSil(int urunID)
        {
            var resim = db.UrunResim.Where(x => x.urunID == urunID).ToList();
            foreach (var r in resim)
            {
                if (System.IO.File.Exists(Server.MapPath("/img/menu/" + r.resim)))
                {
                    System.IO.File.Delete(Server.MapPath("/img/menu/" + r.resim));
                }
                db.UrunResim.Remove(r);
                db.SaveChanges();
            }
           
            Urun u = db.Urun.Where(x => x.urunID == urunID).FirstOrDefault();
            db.Urun.Remove(u);
            db.SaveChanges();
            return Redirect("/Admin/Urun");
        }
        [ValidateInput(false)]
        public ActionResult UrunEkle()
        {
            List<SelectListItem> kategori = new List<SelectListItem>();
            kategori = db.UrunKategori.ToList().Select(x => new SelectListItem
            {

                Text = x.baslik,
                Value = x.kategoriID.ToString()

            }).ToList();
            ViewBag.Kategoriler = kategori;
            return View();
        }
        [ValidateInput(false)]
        [HttpPost]
        public ActionResult UrunEkle(Urun urun,HttpPostedFileBase resim)
        {
            Urun u = new Urun();
            int id = urun.urunID;
            u.urunAd = urun.urunAd;
            if (ModelState.IsValid)
            {
                u.aciklama = urun.aciklama;
                u.aciklamaOzet = urun.aciklamaOzet;
            }
            u.katID = urun.katID;
            if (resim != null && resim.ContentLength > 0)
            {
                //Resim ekleme 
                string dosyaAdi = Guid.NewGuid().ToString() + Path.GetExtension(resim.FileName);
                resim.SaveAs(Server.MapPath("/img/menu/" + dosyaAdi));
                
                u.kapakResim ="/img/menu/" +dosyaAdi;
                u.aktif = "aktif";
            db.Urun.Add(u);
            db.SaveChanges();
            }
           
            return Redirect("/Admin/UrunResimEkle?urunID="+u.urunID+"&urunAd="+u.urunAd);
        }

        public ActionResult urunDuzenle(int urunID)
        {
            List<SelectListItem> kategori = new List<SelectListItem>();
            kategori = db.UrunKategori.ToList().Select(x => new SelectListItem
            {

                Text = x.baslik,
                Value = x.kategoriID.ToString()

            }).ToList();
            ViewBag.Kategoriler = kategori;
            return View(db.Urun.Where(x => x.urunID == urunID).SingleOrDefault());
        }
        [HttpPost]
        [ValidateInput(false)]

        public ActionResult urunDuzenle(Urun u, int urunID, HttpPostedFileBase resim)
        {
            List<SelectListItem> kategori = new List<SelectListItem>();
            kategori = db.UrunKategori.ToList().Select(x => new SelectListItem
            {

                Text = x.baslik,
                Value = x.kategoriID.ToString()

            }).ToList();
            ViewBag.Kategoriler = kategori;
            Urun ur = db.Urun.Where(x => x.urunID == urunID).SingleOrDefault();
            ur.urunAd = u.urunAd;
            ur.katID = u.katID;
            if (resim != null && resim.ContentLength > 0)
            {
                //Resim ekleme 
                string dosyaAdi = Guid.NewGuid().ToString() + Path.GetExtension(resim.FileName);
                resim.SaveAs(Server.MapPath("/img/menu/" + dosyaAdi));       
                ur.kapakResim = "/img/menu/" + dosyaAdi;  
            }

            if (ModelState.IsValid)
            {
                ur.aciklama = u.aciklama;
                ur.aciklamaOzet = u.aciklamaOzet;
            }
            db.SaveChanges();
            return Redirect("/Admin/Urun");

        }



        public ActionResult UrunDetay(int urunID)
        {
            var urun = db.Urun.Where(x => x.urunID == urunID).SingleOrDefault();
            var resim = db.UrunResim.Where(x => x.urunID == urunID).ToList();
            ViewBag.urunresimdetay = resim;
            return View(urun);
        }
        public ActionResult UrunResimEkle(int urunID)
        {
            return View(db.Urun.Where(x=> x.urunID ==urunID).FirstOrDefault());
        }
        [HttpPost]
        public ActionResult UrunResimEkle(int urunID, string urunAd, UrunResim r,HttpPostedFileBase resim)
        {
            if (resim !=null && resim.ContentLength>0)
            {
                string dosyaAdi =  Guid.NewGuid().ToString() + Path.GetExtension(resim.FileName);
                resim.SaveAs(Server.MapPath("/img/menu/" + dosyaAdi));
                r.urunID = urunID;
                r.resim = "/img/menu/" + dosyaAdi;
                r.resimalt = urunAd;
                db.UrunResim.Add(r);
                db.SaveChanges();
            }
            return View(db.Urun.Where(x => x.urunID == urunID).FirstOrDefault());
        }
        public ActionResult UrunResimListele(int urunID)
        {
            var res = db.UrunResim.Where(x=> x.urunID==urunID).ToList();
            return PartialView(res);
        }
        [HttpPost]
        public ActionResult UrunResimListele(int?urunID)
        {
            var res = db.UrunResim.Where(x => x.urunID == urunID).ToList();
            return PartialView(res);
        }
        public ActionResult resimSil(int urunID, int id)
        {
            UrunResim r = db.UrunResim.Find(id);

            if (System.IO.File.Exists(Server.MapPath("/img/menu/" + r.resim)))
            {
                System.IO.File.Delete(Server.MapPath("/img/menu/" + r.resim));
            }
            db.UrunResim.Remove(r);
            db.SaveChanges();
            return Redirect("/Admin/UrunResimEkle?urunID=" + urunID + "&urunAd");
        }

       
        public ActionResult Kategori()
        {
            List<UrunKategori> kategori = db.UrunKategori.ToList();
            return View(kategori);
        }
        public PartialViewResult _KategoriEkle()
        {

            return PartialView("_KategoriEkle");
        }
        [HttpPost]
        public PartialViewResult _KategoriEkle(UrunKategori k, HttpPostedFileBase resim)
        {
            if (resim != null && resim.ContentLength > 0)
            {
                string dosyaAdi = Guid.NewGuid().ToString() + Path.GetExtension(resim.FileName);
                resim.SaveAs(Server.MapPath("~/img/menu/" + dosyaAdi));
                k.resim = "/img/menu/" +dosyaAdi;
                db.UrunKategori.Add(k);
                db.SaveChanges();
                Response.Redirect("/Admin/Kategori/");
            }
             return PartialView();
        }
        public  ActionResult KategoriSil(int kategoriID)
        {
            UrunKategori k = db.UrunKategori.Find(kategoriID);
            if (System.IO.File.Exists(Server.MapPath("/img/menu/"+k.resim)))
            {
                System.IO.File.Exists(Server.MapPath("/img/menu/" + k.resim));
            }
            db.UrunKategori.Remove(k);
            db.SaveChanges();
            return Redirect("/Admin/Kategori/");
        }
        public ActionResult KategoriDuzenle(int kategoriID)
        {
            UrunKategori k = db.UrunKategori.Where(x => x.kategoriID == kategoriID).SingleOrDefault();
            return View(k);
        }
        [HttpPost]
        public ActionResult KategoriDuzenle(int kategoriID,UrunKategori gk, HttpPostedFileBase resim)
        {
            if (resim != null && resim.ContentLength > 0)
            {
                UrunKategori k = db.UrunKategori.Where(x => x.kategoriID == kategoriID).SingleOrDefault();
                string dosyaAdi = Guid.NewGuid().ToString() + Path.GetExtension(resim.FileName);
                resim.SaveAs(Server.MapPath("~/img/menu/" + dosyaAdi));
                k.resim = "/img/menu/" + dosyaAdi;
                k.baslik = gk.baslik;
                k.aciklama = gk.aciklama;
                db.SaveChanges();
            }

            return Redirect("/Admin/Kategori/");
        }
    }
}