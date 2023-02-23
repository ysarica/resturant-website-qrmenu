using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ZalaBahceV1.Models;

namespace ZalaBahceV1.Controllers
{
    public class ZalaBahceController : Controller
    {
        ZalaDB db = new ZalaDB();

        // GET: ZalaBahce
        
        public ActionResult Hosgeldiniz() 
        {
            SiteAyar a = db.SiteAyar.Where(x => x.ayarID == 1).SingleOrDefault();
            if (a.siteoff=="1")
            {
                Response.Redirect("/Kapaliyiz/Simdilik");
            }
            return View();
        }
        public ActionResult Hakkimizda()
        {
            SiteAyar a = db.SiteAyar.Where(x => x.ayarID == 1).SingleOrDefault();
            if (a.siteoff == "1")
            {
                Response.Redirect("/Kapaliyiz/Simdilik");
            }

            return View(db.Hakkimizda.Where(x=> x.HID==1).SingleOrDefault());
        }




        public ActionResult İletisim()
        {
            SiteAyar a = db.SiteAyar.Where(x => x.ayarID == 1).SingleOrDefault();
            if (a.siteoff == "1")
            {
                Response.Redirect("/Kapaliyiz/Simdilik");
            }
            return View();
        }

        [ValidateInput(false)]
        [HttpPost]
        public ActionResult İletisim(GelenMesaj msj)
        {
            string msjmüsteri = "<h1> Sayın " + msj.adsoyad + " Mesajınızı Aldık En Kısa Sürede Sizinle İletişime Geçecegiz </h1> </br></br> Zala Bahçe Nargile & Cafe İletişim Ekibi.</br><br>     <img src='http://zalabahce.com//img/logo/zalalogo1.png' />";
            string msjynt = "<h1> SAYIN ZALA BAHÇE YÖNETİM EKİBİ YENİ BİR MESAJINIZ VAR MÜŞTERİ BİLGİLERİNİ SİZE SUNUYORUM; </br></br> Etkileşim Tarihi:" + DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString()+ "</br></br> ADI SOYADI:"+msj.adsoyad+ "</br></br> TELEFON:"+msj.tel+ "</br></br> MAİL:"+msj.mail+ "</br></br> KONU:"+msj.konu+ "</br></br> MÜŞTERİNİN MESAJI:"+msj.mesaj + " </h1> </br></br> Zala Bahçe Nargile &Cafe İletişim Sistemi. </br><br>     <img src='http://zalabahce.com//img/logo/zalalogo1.png'/> ";
            try
            {
                mailGonder.Mail(msj.mail, "ZALA BAHCE NARGİLE & CAFE | İletişim Ekibi", msjmüsteri);
                mailGonder.Mail("","YENİ BİR MESAJINIZ VAR | "+ msj.konu,msjynt); 

            }
            catch (Exception)
            {

            }

            MüsteriMailDB mdb = db.MüsteriMailDB.Where(x => x.mail.ToString() == msj.mail.ToString()).SingleOrDefault();
            if (mdb == null)
            {
                MüsteriMailDB maildb = new MüsteriMailDB();
                maildb.AdSoyad = msj.adsoyad;
                maildb.mail = msj.mail;
                maildb.tel = msj.tel;
                maildb.adres = "Belirtilmedi";
                db.MüsteriMailDB.Add(maildb);
                db.SaveChanges();
            }
            if (ModelState.IsValid)
            {
 string yol= "/ZalaBahce/İletisim",bilgi;
            if (msj.adsoyad!="" && (msj.mail!="" || msj.tel!=""))
            {

            GelenMesaj m = new GelenMesaj();
                msj.tarih = DateTime.Now.ToShortDateString() +"-"+ DateTime.Now.ToShortTimeString(); 
            msj.okundu = "Okunmadı";
            msj.nerden = "İletişim Sayfası";
            db.GelenMesaj.Add(msj);
            db.SaveChanges();
                bilgi = "Mesajınızı Aldık Kısa Süre İçerisinde Size Geri Dönüş Sağlayacagız :)";
                yol = "/ZalaBahce/Bilgi?ad=" + msj.adsoyad+"&bilgi="+bilgi;
              
            }
            return Redirect(yol);
            }

            return View();
        }
        public ActionResult Bilgi(string ad,string bilgi)
        {
            ViewBag.ad = ad;
            ViewBag.bilgi = bilgi;

            return View();
        }
        public PartialViewResult _IletisimBilgi()
        {

            List<iletisim> iletisim = db.iletisim.ToList();
            return PartialView(iletisim);
        }
        public PartialViewResult _Sosyal()
        {

            List<Sosyal> sosyal = db.Sosyal.ToList();
            return PartialView(sosyal);
        }
        public PartialViewResult _Harita()
        {
            List<iletisim> harita = db.iletisim.ToList();

            return PartialView(harita);
        }
        public ActionResult Menu(int kategoriID)
        {
            SiteAyar a = db.SiteAyar.Where(x => x.ayarID == 1).SingleOrDefault();
            if (a.siteoff == "1")
            {
                Response.Redirect("/Kapaliyiz/Simdilik");
            }
            try
            {
            List<Urun> Urunler = db.Urun.Where(x => x.katID == kategoriID).ToList();
            return View(Urunler);

            }
            catch (Exception)
            {
                
                    Response.Redirect("/Zalabahce/Menu?kategoriID=0");
               
                throw;
            }
      

        }
        public ActionResult MenuDetay(int urunID)
        {
            SiteAyar a = db.SiteAyar.Where(x => x.ayarID == 1).SingleOrDefault();
            if (a.siteoff == "1")
            {
                Response.Redirect("/Kapaliyiz/Simdilik");
            }
            List<Urun> Urunler = db.Urun.Where(x => x.urunID == urunID).ToList();
            ViewBag.UrunResim = db.UrunResim.Where(x => x.urunID == urunID).ToList();
            return View(Urunler);
        }
        public PartialViewResult _Slider()
        {
            List<Slider> slayt = db.Slider.ToList();
            return PartialView(slayt);
        }
        public PartialViewResult _AboutUs()
        {
            List<Hakkimizda> hakkimizda = db.Hakkimizda.ToList();
            return PartialView(hakkimizda);
        }
      
        public PartialViewResult _WhatExpect()
        {
            List<NelerVar> neler = db.NelerVar.ToList();
            return PartialView(neler);
        }
        public PartialViewResult _Category()
        {
            List<UrunKategori> kategori = db.UrunKategori.ToList();
            return PartialView(kategori);
        }
        public PartialViewResult _Contact()
        {
            List<iletisim> iletisim = db.iletisim.ToList();
            return PartialView(iletisim);
        }
        public PartialViewResult _Products()
        {

            List<Urun> Urunler = db.Urun.Take(16).Where(x=> x.aktif=="aktif").ToList();
            return PartialView(Urunler);

        }
        public PartialViewResult _Portfoy()
        {

            return PartialView();
        }
        public PartialViewResult _UrunYorum()
        {

            return PartialView();
        }
        public PartialViewResult _Hizmetler()
        {
            List<Hizmetler> hizmet = db.Hizmetler.ToList();
            return PartialView(hizmet);
        }
        public PartialViewResult _Markalar()
        {
            List<Markalar> marka = db.Markalar.ToList();
            return PartialView(marka);
        }
        public PartialViewResult _LSosyal()
        {
            List<Sosyal> sosyal = db.Sosyal.ToList();
            return PartialView(sosyal);
        }
        public PartialViewResult _LHozet()
        {
            List<Hakkimizda> h = db.Hakkimizda.ToList();
            return PartialView(h);
        }
        public PartialViewResult HKgaleri()
        {
          
            return PartialView(db.Galeri.ToList());
        }
        public ActionResult Sayfa(int SaID)
        {
            SiteAyar a = db.SiteAyar.Where(x => x.ayarID == 1).SingleOrDefault();
            if (a.siteoff == "1")
            {
                Response.Redirect("/Kapaliyiz/Simdilik");
            }
            return View(db.Sayfalar.Where(x=> x.SaID==SaID).SingleOrDefault());
        }
        public ActionResult Galeri()
        {
            SiteAyar a = db.SiteAyar.Where(x => x.ayarID == 1).SingleOrDefault();
            if (a.siteoff == "1")
            {
                Response.Redirect("/Kapaliyiz/Simdilik");
            }
            return View(db.Galeri.ToList());
        }
        public ActionResult HDeneme()
        {
            return View();
        }
        public PartialViewResult _AltMenu()
        {
            return PartialView(db.Sayfalar.Where(x=> x.aktif=="aktif" && x.yer== "altmenu"));
        }
        public PartialViewResult _UstMenu()
        {
            return PartialView(db.Sayfalar.Where(x => x.aktif == "aktif" && x.yer == "ustmenu"));
        }
        public PartialViewResult _Meta()
        {
            return PartialView(db.SiteAyar.Where(x=>x.ayarID==1).SingleOrDefault());
        }
        public PartialViewResult _Logo()
        {
            return PartialView(db.SiteAyar.Where(x => x.ayarID == 1).SingleOrDefault());
        }
        public PartialViewResult _WhatsApp()
        {
            return PartialView(db.iletisim.Where(x => x.ID == 1).SingleOrDefault());
        }
        public PartialViewResult _LogoFooter()
        {
            return PartialView(db.SiteAyar.Where(x => x.ayarID == 1).SingleOrDefault());
        }
        public ActionResult Menudeneme()
        {
            return View();
        }
        public ActionResult MenuKategori()
        {
            return View(db.UrunKategori.ToList());
        }
    }
}