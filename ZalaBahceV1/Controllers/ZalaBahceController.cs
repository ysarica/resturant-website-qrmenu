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

            return View();
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
            return PartialView();
        }
        public PartialViewResult _WhatExpect()
        {
            return PartialView();
        }
        public PartialViewResult _Category()
        {
            List<UrunKategori> kategori = db.UrunKategori.ToList();
            return PartialView(kategori);
        }
        public PartialViewResult _Contact()
        {
            return PartialView();
        }
        public PartialViewResult _Products()
        {

            List<Urun> Urunler = db.Urun.Take(16).Where(x=> x.aktif=="aktif").ToList();
            return PartialView(Urunler);

        }
    }
}