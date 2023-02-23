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

    public class HizmetlerController : Controller
    {
        ZalaDB db = new ZalaDB();
        // GET: Hizmetler
        public ActionResult Index()
        {
            return View(db.Hizmetler.ToList());
        }
        public PartialViewResult _hizmetEkle()
        {

            return PartialView("_hizmetEkle");
        }
        [HttpPost]
        
        public PartialViewResult _hizmetEkle(Hizmetler h)
        {
            //Hizmetler hz = new Hizmetler();
            //hz.ad = h.ad;
            //hz.icerik = h.icerik;
            ////if (resim != null && resim.ContentLength > 0)
            ////{
            ////    //Resim ekleme 
            ////    string dosyaAdi = Guid.NewGuid().ToString() + Path.GetExtension(resim.FileName);
            ////    resim.SaveAs(Server.MapPath("/Resim/Hizmetler/" + dosyaAdi));
            ////    hz.resim = "/Resim/Hizmetler/" + dosyaAdi;
            ////}
            db.Hizmetler.Add(h);
            db.SaveChanges();

            Log a = new Log();
            a.Kim = Session["kullanici"].ToString();
            a.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
            a.Olay = Session["kullanici"].ToString() + " Tarafından ("+h.ad+") Adlı Hizmet Eklendi.";
            db.Log.Add(a);
            db.SaveChanges();
            Response.Redirect("/Hizmetler/Index");
            return PartialView();
        }
        public ActionResult HizmetSil(int HID)
        {
            Hizmetler k = db.Hizmetler.Where(x=> x.HID==HID).SingleOrDefault();

            Log a = new Log();
            a.Kim = Session["kullanici"].ToString();
            a.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
            a.Olay = Session["kullanici"].ToString() + " Tarafından (" + k.ad + ") Adlı Hizmet Silindi.";
            db.Log.Add(a);
            db.SaveChanges();

            db.Hizmetler.Remove(k);
            db.SaveChanges();
            return Redirect("/Hizmetler/Index/");
        }
        public ActionResult HizmetDuzenle(int HID)
        {
            Hizmetler k = db.Hizmetler.Where(x => x.HID == HID).SingleOrDefault();
            return View(k);
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult HizmetDuzenle(int HID, Hizmetler gk)
        {
          
                Hizmetler k = db.Hizmetler.Where(x => x.HID == HID).SingleOrDefault();
               
                k.ad = gk.ad;
                k.icerik = gk.icerik;
                db.SaveChanges();
            

            return Redirect("/Hizmetler/Index");
        }
    }
}