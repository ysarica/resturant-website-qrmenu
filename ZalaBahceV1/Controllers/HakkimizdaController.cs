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

    public class HakkimizdaController : Controller
    {
        ZalaDB db = new ZalaDB();
        // GET: Hakkimizda
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult HakkimizdaDuzenle(int HID)
        {
            return View(db.Hakkimizda.Where(x=> x.HID == HID).SingleOrDefault());
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult HakkimizdaDuzenle(int HID,Hakkimizda h, HttpPostedFileBase resim1, HttpPostedFileBase resim2, HttpPostedFileBase resim3)
        {
            Hakkimizda hk = db.Hakkimizda.Where(x => x.HID == HID).SingleOrDefault();
            hk.hskkimizda = h.hskkimizda;
           
            hk.baslik1 = h.baslik1;
            hk.baslik2 = h.baslik2;
            hk.ozet = h.ozet;
            if (resim1 != null && resim1.ContentLength > 0)
            {
                //Resim ekleme 
                string dosyaAdi = Guid.NewGuid().ToString() + Path.GetExtension(resim1.FileName);
                resim1.SaveAs(Server.MapPath("/Resim/Hakkimizda/" + dosyaAdi));
                hk.resim1 = "/Resim/Hakkimizda/" + dosyaAdi;
            }
            if (resim2 != null && resim2.ContentLength > 0)
            {
                //Resim ekleme 
                string dosyaAdi = Guid.NewGuid().ToString() + Path.GetExtension(resim2.FileName);
                resim2.SaveAs(Server.MapPath("/Resim/Hakkimizda/" + dosyaAdi));
                hk.resim2 = "/Resim/Hakkimizda/" + dosyaAdi;
            }
            if (resim3 != null && resim3.ContentLength > 0)
            {
                //Resim ekleme 
                string dosyaAdi = Guid.NewGuid().ToString() + Path.GetExtension(resim3.FileName);
                resim3.SaveAs(Server.MapPath("/Resim/Hakkimizda/" + dosyaAdi));
                hk.resim3 = "/Resim/Hakkimizda/" + dosyaAdi;
            }

            db.SaveChanges();
            return Redirect("/Hakkimizda/HakkimizdaDuzenle?HID=1");
        }
        public ActionResult VizyonumuzDuzenle(int HID)
        {
            return View(db.Hakkimizda.Where(x => x.HID == HID).SingleOrDefault());
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult VizyonumuzDuzenle(Hakkimizda hk,int HID)
        {
          
            return Redirect("/Hakkimizda/VizyonumuzDuzenle?HID=1");
        }
        public ActionResult MisyonumuzDuzenle(int HID)
        {
            return View(db.Hakkimizda.Where(x => x.HID == HID).SingleOrDefault());
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult MisyonumuzDuzenle(Hakkimizda hk, int HID)
        {
           
            return Redirect("/Hakkimizda/MisyonumuzDuzenle?HID=1");
        }
        public ActionResult SayfaAyar(int HID)
        {
            return View(db.Hakkimizda.Where(x => x.HID == HID).SingleOrDefault());
        }
        [HttpPost]
        public ActionResult SayfaAyar(int HID, Hakkimizda h,HttpPostedFile video, HttpPostedFile bgresim, HttpPostedFile panelresim)
        {
           

            return Redirect("/Hakkimizda/SayfaAyar?HID=1");
        }
    }
}