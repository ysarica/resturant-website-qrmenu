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

    public class SayfaController : Controller
    {
        ZalaDB db = new ZalaDB();

        public ActionResult SayfaDurum(int SaID)
        {
        
            Sayfalar sa = db.Sayfalar.Where(x => x.SaID == SaID).SingleOrDefault();
            if (sa.aktif == "aktif")
            {
                sa.aktif = "pasif";
            }
            else
            {
                sa.aktif = "aktif";

            }

            db.SaveChanges();


            return Redirect("/Sayfa/SayfaListele");
        }
        public ActionResult SayfaSil(int SaID)
        {
            var sayfa = db.Sayfalar.Where(x => x.SaID == SaID).SingleOrDefault();
            Log ab = new Log();
            ab.Kim = Session["kullanici"].ToString();
            ab.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
            ab.Olay = Session["kullanici"].ToString() + " Tarafından " + sayfa.baslik + " Başlıklı Sayfa Silindi";
            db.Log.Add(ab);
            db.SaveChanges();
            if (System.IO.File.Exists(Server.MapPath("/Resim/Sayfa/" + sayfa.resim)))
                {
                    System.IO.File.Delete(Server.MapPath("/Resim/Sayfa/" + sayfa.resim));
                }
                db.Sayfalar.Remove(sayfa);
                db.SaveChanges();
           
            return Redirect("/Sayfa/SayfaListele");
        }
        public ActionResult SayfaListele()
        {
            ViewBag.hks = db.Hakkimizda.Where(x => x.HID == 1).ToList();
            return View(db.Sayfalar.ToList());
        }
        public ActionResult SayfaEkle()
        {
            return View();
        }
        [ValidateInput(false)]
        [HttpPost]
        
        public ActionResult SayfaEkle(Sayfalar s,HttpPostedFileBase resim)
        {
            s.aktif = "aktif";
            if (resim != null && resim.ContentLength > 0)
            {
                //Resim ekleme 
                string dosyaAdi = Guid.NewGuid().ToString() + Path.GetExtension(resim.FileName);
                resim.SaveAs(Server.MapPath("/Resim/Sayfa/" + dosyaAdi));

                s.resim = "/Resim/Sayfa/" + dosyaAdi;
               
            }
            if (s.yer=="0")
            {
                s.yer = "ekleme";
            }
            db.Sayfalar.Add(s);
            db.SaveChanges();

            Log ab = new Log();
            ab.Kim = Session["kullanici"].ToString();
            ab.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
            ab.Olay = Session["kullanici"].ToString()+" Tarafından "+s.baslik+" Başlıklı Sayfa Oluşturuldu";
            db.Log.Add(ab);
            db.SaveChanges();

            return Redirect("/Sayfa/SayfaListele");
        }
        public ActionResult SayfaDuzenle(int SaID)
        {
            return View(db.Sayfalar.Where(x=>x.SaID==SaID).SingleOrDefault());
        }
        [ValidateInput(false)]
        [HttpPost]

        public ActionResult SayfaDuzenle(Sayfalar s, HttpPostedFileBase resim,int SaID)
        {
            Sayfalar ss = db.Sayfalar.Where(x=> x.SaID==SaID).SingleOrDefault(); 
            if (resim != null && resim.ContentLength > 0)
            {
                //Resim ekleme 
                string dosyaAdi = Guid.NewGuid().ToString() + Path.GetExtension(resim.FileName);
                resim.SaveAs(Server.MapPath("/Resim/Sayfa/" + dosyaAdi));
                ss.resim = "/Resim/Sayfa/" + dosyaAdi;
                
            }
            if (s.yer == "0")
            {
                ss.yer = s.yer;
            }
            ss.baslik = s.baslik;
                ss.baslik2 = s.baslik2;
                ss.icerik = s.icerik;
                ss.yer = s.yer;
                db.SaveChanges();
            return Redirect("/Sayfa/SayfaListele");
        }
        public PartialViewResult _SayfaListe()
        {
            return PartialView(db.Sayfalar.ToList());
        }

    }
}