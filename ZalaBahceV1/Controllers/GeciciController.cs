using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ZalaBahceV1.Models;

namespace ZalaBahceV1.Controllers
{
    public class GeciciController : Controller
    {
        ZalaDB db = new ZalaDB();

        // GET: Gecici
        public ActionResult UrunListe()
        {
            ViewBag.uKategori = db.UrunKategori.ToList();
            return View(db.Urun.ToList());
        }
        public ActionResult _UrunEkle(Urun ur, HttpPostedFileBase attachment)
        {
            Urun u = new Urun();
            if (attachment != null)
            {
                Random r = new Random();
                string dosyaYolu = "U-" + r.Next(1000, 99999).ToString() + Path.GetExtension(attachment.FileName);
                var yuklemeYeri = Path.Combine(Server.MapPath("/Resim/Urun/"), dosyaYolu);
                attachment.SaveAs(yuklemeYeri);
                u.kapakResim = "/Resim/Urun/" + dosyaYolu;
            }
            else
            {
                u.kapakResim = "/Resim/resim-yok.jpg";
            }
            u.urunAd = ur.urunAd;
            u.aciklama = ur.aciklama;
            u.icerik = ur.icerik;
            u.katID = ur.katID;
            u.aktif = "aktif";
            u.TRFiyat = ur.TRFiyat;
            u.ARFiyat = ur.ARFiyat;
            db.Urun.Add(u);
            db.SaveChanges();
            return Redirect("/Gecici/UrunListe/");
        }
        public ActionResult _UrunSil(int urunID)
        {
            Urun u = db.Urun.Where(x => x.urunID == urunID).SingleOrDefault();
            List<UrunResim> ur = db.UrunResim.Where(x => x.urunID == u.urunID).ToList();
            foreach (var a in ur)
            {
                UrunResim res = db.UrunResim.Where(x => x.resimID == a.resimID).SingleOrDefault();
                System.IO.File.Delete(Server.MapPath(res.resim));
                db.UrunResim.Remove(res);
                db.SaveChanges();
            }
            System.IO.File.Delete(Server.MapPath(u.kapakResim));
            db.Urun.Remove(u);
            db.SaveChanges();
            return Redirect("/Gecici/UrunListe?Durum=Silindi");
        }
        public ActionResult _UrunGuncelle(Urun ur, HttpPostedFileBase attachment)
        {
            Urun u = db.Urun.Where(x => x.urunID == ur.urunID).SingleOrDefault();
            if (attachment != null)
            {
                if (ur.kapakResim != "/Resim/resim-yok.jpg")
                {
                    System.IO.File.Delete(Server.MapPath(ur.kapakResim));
                }
                Random r = new Random();
                string dosyaYolu = "U-" + r.Next(1000, 99999).ToString() + Path.GetExtension(attachment.FileName);
                var yuklemeYeri = Path.Combine(Server.MapPath("/Resim/Urun/"), dosyaYolu);
                attachment.SaveAs(yuklemeYeri);
                u.kapakResim = "/Resim/Urun/" + dosyaYolu;
            }
            u.urunAd = ur.urunAd;
            u.aciklama = ur.aciklama;
            u.icerik = ur.icerik;
            u.katID = ur.katID;
            u.TRFiyat = ur.TRFiyat;
            u.ARFiyat = ur.ARFiyat;
            db.SaveChanges();
            return Redirect("/Gecici/UrunListe/");
        }

        /*------------------kategori--------------------------*/

        public ActionResult KategoriListe()
        {
            return View(db.UrunKategori.ToList());
        }
        public ActionResult _KategoriEkle(UrunKategori ur, HttpPostedFileBase attachment)
        {
            UrunKategori u = new UrunKategori();
            if (attachment != null)
            {
                Random r = new Random();
                string dosyaYolu = "UK-" + r.Next(1000, 99999).ToString() + Path.GetExtension(attachment.FileName);
                var yuklemeYeri = Path.Combine(Server.MapPath("/Resim/Urun/"), dosyaYolu);
                attachment.SaveAs(yuklemeYeri);
                u.resim = "/Resim/Urun/" + dosyaYolu;
            }
            else
            {
                u.resim = "/Resim/resim-yok.jpg";
            }
            u.baslik = ur.baslik;
            u.aciklama = ur.aciklama;
            db.UrunKategori.Add(u);
            db.SaveChanges();
            return Redirect("/Gecici/KategoriListe/");
        }
        public ActionResult _KategoriSil(int kategoriID)
        {
            UrunKategori u = db.UrunKategori.Where(x => x.kategoriID == kategoriID).SingleOrDefault();
            System.IO.File.Delete(Server.MapPath(u.resim));
            db.UrunKategori.Remove(u);
            db.SaveChanges();
            return Redirect("/Gecici/KategoriListe?Durum=Silindi");
        }
        public ActionResult _KategoriGuncelle(UrunKategori ur, HttpPostedFileBase attachment)
        {
            UrunKategori u = db.UrunKategori.Where(x => x.kategoriID == ur.kategoriID).SingleOrDefault();
            if (attachment != null)
            {
                if (ur.resim != "/Resim/resim-yok.jpg")
                {
                    System.IO.File.Delete(Server.MapPath(ur.resim));
                }
                Random r = new Random();
                string dosyaYolu = "UK-" + r.Next(1000, 99999).ToString() + Path.GetExtension(attachment.FileName);
                var yuklemeYeri = Path.Combine(Server.MapPath("/Resim/Urun/"), dosyaYolu);
                attachment.SaveAs(yuklemeYeri);
                u.resim = "/Resim/Urun/" + dosyaYolu;
            }
            u.baslik = ur.baslik;
            u.aciklama = ur.aciklama;
            db.SaveChanges();
            return Redirect("/Gecici/KategoriListe/");
        }
    }
}