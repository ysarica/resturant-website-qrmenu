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

            return View();
        }
        public ActionResult Hakkimizda()
        {
            List<Hakkimizda> hakkimizda = db.Hakkimizda.ToList();

            return View(hakkimizda);
        }



        //public ActionResult UrunEkle()
        //{
        //    List<SelectListItem> kategori = new List<SelectListItem>();
        //    kategori = db.UrunKategori.ToList().Select(x => new SelectListItem
        //    {

        //        Text = x.baslik,
        //        Value = x.kategoriID.ToString()

        //    }).ToList();
        //    ViewBag.Kategoriler = kategori;
        //    return View();
        //}
        //[ValidateInput(false)]
        //[HttpPost]
        //public ActionResult UrunEkle(Urun urun, HttpPostedFileBase resim)
        //{
        //    Urun u = new Urun();
        //    int id = urun.urunID;
        //    u.urunAd = urun.urunAd;
        //    if (ModelState.IsValid)
        //    {
        //        u.aciklama = urun.aciklama;
        //        u.aciklamaOzet = urun.aciklamaOzet;
        //    }
        //    u.katID = urun.katID;
        //    if (resim != null && resim.ContentLength > 0)
        //    {
        //        Resim ekleme
        //        string dosyaAdi = Guid.NewGuid().ToString() + Path.GetExtension(resim.FileName);
        //        resim.SaveAs(Server.MapPath("/Resim/Urun/" + dosyaAdi));

        //        u.kapakResim = "/Resim/Urun/" + dosyaAdi;
        //        u.aktif = "aktif";
        //        db.Urun.Add(u);
        //        db.SaveChanges();
        //    }

        //    return Redirect("/Urun/UrunResimEkle?urunID=" + u.urunID + "&urunAd=" + u.urunAd);
        //}




        public ActionResult İletisim()
        {
         
            return View();
        }

        [ValidateInput(false)]
        [HttpPost]
        public ActionResult İletisim(GelenMesaj msj)
        {
            string yol= "/ZalaBahce/İletisim",bilgi;
            if (msj.adsoyad!="" && (msj.mail!="" || msj.tel!=""))
            {

            GelenMesaj m = new GelenMesaj();
                msj.tarih = DateTime.Now.ToLongDateString() +"-"+ DateTime.Now.ToShortTimeString(); ;
            msj.okundu = "0";
            msj.nerden = "İletişim Sayfası";
            db.GelenMesaj.Add(msj);
            db.SaveChanges();
                bilgi = "Mesajınızı Aldık Kısa Süre İçerisinde Size Geri Dönüş Sağlayacagız :)";
                yol = "/ZalaBahce/Bilgi?ad=" + msj.adsoyad+"&bilgi="+bilgi;
              
            }
            return Redirect(yol);
           
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
    }
}