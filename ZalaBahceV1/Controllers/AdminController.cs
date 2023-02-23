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

    public class AdminController : Controller
    {
        ZalaDB db = new ZalaDB();

        // GET: Admin
        public ActionResult Index()
        {
            ViewBag.rezsayi = db.Rezervasyon.Count();
            ViewBag.msjsayi = db.GelenMesaj.Count();
            ViewBag.anketsayi = db.DegerlendirmeFormu.Count();
            ViewBag.urunsayi = db.Urun.Count();
            return View(db.GelenMesaj.Where(x=> x.okundu=="0").ToList());
        }
        public ActionResult Okundu(int MID)
        {
            GelenMesaj msj = db.GelenMesaj.Where(x => x.MID == MID).SingleOrDefault();
            msj.okundu = "1";
            db.SaveChanges();

            Log a = new Log();
            a.Kim = Session["kullanici"].ToString();
            a.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
            a.Olay = Session["kullanici"].ToString() + " Tarafından ("+MID+") Nolu Mesaj Okundu Olarak İşaretlendi.";
            db.Log.Add(a);
            db.SaveChanges();

            return Redirect("/Admin/Index/");
        }
        public ActionResult SifreDegistir()
        {
            return View(db.Kullanici.Where(x => x.ID == 1).SingleOrDefault());

        }
        [HttpPost]
        public ActionResult SifreDegistir(string pw)
        {
            Kullanici k = db.Kullanici.Where(x => x.ID == 1).SingleOrDefault();
            k.pw = pw;
            db.SaveChanges();
            Log a = new Log();
            a.Kim = Session["kullanici"].ToString();
            a.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
            a.Olay = Session["kullanici"].ToString() + " Tarafından Şifre Değiştirildi.";
            db.Log.Add(a);
            db.SaveChanges();
            Session.Clear();
            return Redirect("/Admin/Index");
        }
        public ActionResult Cikis()
        {
            Log a = new Log();
            a.Kim = Session["kullanici"].ToString();
            a.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
            a.Olay = Session["kullanici"].ToString() + " Tarafından Çıkış Yapıldı.";
            db.Log.Add(a);
            db.SaveChanges();
            Session.Abandon();
            return Redirect("/Admin/Cikis");
        }
        public ActionResult SiteAyar()
        {
            return View(db.SiteAyar.Where(x=> x.ayarID==1).SingleOrDefault());
        }
        [HttpPost]
        public ActionResult SiteAyar(SiteAyar s, HttpPostedFileBase logo1, HttpPostedFileBase logo2)
        {
            SiteAyar a = db.SiteAyar.Where(x=> x.ayarID==1).SingleOrDefault();
            a.aciklama = s.aciklama;
            a.anahtarKelime = s.anahtarKelime;
            if (logo1 != null && logo1.ContentLength > 0)
            {
                //Resim ekleme 
                string dosyaAdi = Guid.NewGuid().ToString() + Path.GetExtension(logo1.FileName);
                logo1.SaveAs(Server.MapPath("/Resim/Site/" + dosyaAdi));
                a.logo1= "/Resim/Site/" + dosyaAdi;
            }
            if (logo2 != null && logo2.ContentLength > 0)
            {
                //Resim ekleme 
                string dosyaAdi = Guid.NewGuid().ToString() + Path.GetExtension(logo2.FileName);
                logo2.SaveAs(Server.MapPath("/Resim/Site/" + dosyaAdi));
                a.logo2 = "/Resim/Site/" + dosyaAdi;
            }
           
            a.title = s.title;
            a.siteurl = s.siteurl;
            a.firmaadi = s.firmaadi;
            a.anahtarKelime = s.anahtarKelime;
            db.SaveChanges();
            return Redirect("/Admin/SiteAyar");
        }
        public ActionResult SiteOff()
        {
            
            SiteAyar sa = db.SiteAyar.Where(x => x.ayarID == 1).SingleOrDefault();
            if (sa.siteoff == "1")
            {
                sa.siteoff = "0";
                Log a = new Log();
                a.Kim = Session["kullanici"].ToString();
                a.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
                a.Olay = Session["kullanici"].ToString() + " Tarafından Site Kapatıldı.";
                db.Log.Add(a);
                db.SaveChanges();
            }
            else
            {
                sa.siteoff = "1";
                Log a = new Log();
                a.Kim = Session["kullanici"].ToString();
                a.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
                a.Olay = Session["kullanici"].ToString() + " Tarafından Site Açıldı.";
                db.Log.Add(a);
                db.SaveChanges();

            }
            db.SaveChanges();
            
            return Redirect("/Admin/SiteAyar");
        }
        public ActionResult Profil()
        {
            int ID = Convert.ToInt32(Session["kaID"]);
            
            return View(db.Kullanici.Where(x=> x.ID== ID).SingleOrDefault());
        }
        [HttpPost]
        public ActionResult Profil(Kullanici k)
        {
            int ID = Convert.ToInt32(Session["kaID"]);
            Kullanici ka = db.Kullanici.Where(x => x.ID == ID).SingleOrDefault();
            ka.adsoyad = k.adsoyad;
            ka.ka = k.ka;
            ka.pw = k.pw;
            ka.mail = k.mail;
            db.SaveChanges();
            Log a = new Log();
            a.Kim = Session["kullanici"].ToString();
            a.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
            a.Olay = Session["kullanici"].ToString() + " Tarafından Şifre Değiştirildi.";
            db.Log.Add(a);
            db.SaveChanges();
            Session.Clear();
            return Redirect("/Admin/Profil");
        }
        public ActionResult Kullanici()
        {
            return View(db.Kullanici.ToList());
        }
        public PartialViewResult _KullaniciEkle()
        {
            return PartialView("_KullaniciEkle");
        }
        [HttpPost]
        public PartialViewResult _KullaniciEkle(Kullanici k)
        {
          
            Kullanici check = db.Kullanici.Where(x => x.ka == k.ka || x.mail == k.mail).SingleOrDefault();
            if (check==null)
            {
                Kullanici ka = new Kullanici();
                ka.adsoyad = k.adsoyad;
                ka.ka = k.ka;
                ka.mail = k.mail;
                ka.pw = k.pw;
                ka.yetki = k.yetki;
                db.Kullanici.Add(ka);
                db.SaveChanges();
                Log a = new Log();
                a.Kim = Session["kullanici"].ToString();
                a.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
                a.Olay = Session["kullanici"].ToString() + " Tarafından (" + k.adsoyad + ") Adlı Kullani Eklendi.";
                db.Log.Add(a);
                db.SaveChanges();
            }
            else
            {
                Log a = new Log();
                a.Kim = Session["kullanici"].ToString();
                a.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
                a.Olay = Session["kullanici"].ToString() + " Tarafından (" + k.adsoyad + ") Adlı Kullanici Eklenemedi.";
                db.Log.Add(a);
                db.SaveChanges();
            }
            Response.Redirect("/Admin/Kullanici");

            return PartialView();
        }
        public ActionResult KullaniciSil(int ID)
        {
            Kullanici k = db.Kullanici.Find(ID);
            Log a = new Log();
            a.Kim = Session["kullanici"].ToString();
            a.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
            a.Olay = Session["kullanici"].ToString() + " Tarafından (" + k.adsoyad + ") Adlı Kullanici Silindi.";
            db.Log.Add(a);
            db.SaveChanges();
            db.Kullanici.Remove(k);
            db.SaveChanges();
            Response.Redirect("/Admin/Kullanici/");
            return View();
        }


    }
}