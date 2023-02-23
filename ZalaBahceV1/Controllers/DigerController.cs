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

    public class DigerController : Controller
    {
        ZalaDB db = new ZalaDB();

        // GET: Diger
        public ActionResult NelerVarListe()
        {
            return View(db.NelerVar.ToList());
        }
        public ActionResult NelerVarDuzenle(int ID)
        {
            return View(db.NelerVar.Where(x => x.ID == ID).SingleOrDefault());
        }
        [HttpPost]
        public ActionResult NelerVarDuzenle(int ID,NelerVar n)
        {
            NelerVar ne = db.NelerVar.Where(x=> x.ID==ID).SingleOrDefault();
            ne.baslik = n.baslik;
            ne.aciklama = n.aciklama;
            db.SaveChanges();
            return Redirect("/Diger/NelerVarListe");
        }

        public ActionResult Markalar()
        {
            return View(db.Markalar.ToList());
        }
        public PartialViewResult _MarkaEkle()
        {

            return PartialView("_MarkaEkle");
        }
        [HttpPost]
        public PartialViewResult _MarkaEkle(Markalar m, HttpPostedFileBase markaResim)
        {
            if (markaResim != null && markaResim.ContentLength > 0)
            {
                string dosyaAdi = Guid.NewGuid().ToString() + Path.GetExtension(markaResim.FileName);
                markaResim.SaveAs(Server.MapPath("~/Resim/Kategori/" + dosyaAdi));
                m.markaResim = "/Resim/Kategori/" + dosyaAdi;
                db.Markalar.Add(m);
                db.SaveChanges();

                Log a = new Log();
                a.Kim = Session["kullanici"].ToString();
                a.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
                a.Olay = Session["kullanici"].ToString() + " Tarafından ("+m.markaAd+") Adlı Marka Eklendi";
                db.Log.Add(a);
                db.SaveChanges();
                Response.Redirect("/Diger/Markalar/");
            }
            return PartialView();
        }
        public ActionResult MarkaDuzenle(int MID)
        {
            return View(db.Markalar.Where(x => x.MID == MID).SingleOrDefault());
        }
        [HttpPost]
        public ActionResult MarkaDuzenle(int MID, Markalar m,HttpPostedFileBase markaResim)
        {
            Markalar me = db.Markalar.Where(x => x.MID == MID).SingleOrDefault();
            me.markaAd = m.markaAd;
            if (markaResim != null && markaResim.ContentLength > 0)
            {
                string dosyaAdi = Guid.NewGuid().ToString() + Path.GetExtension(markaResim.FileName);
                markaResim.SaveAs(Server.MapPath("~/Resim/Kategori/" + dosyaAdi));
                me.markaResim = "/Resim/Kategori/" + dosyaAdi;
            }

            db.SaveChanges();
            return Redirect("/Diger/Markalar");
        }
        public ActionResult MarkaSil(int MID)
        {
            Markalar m = db.Markalar.Find(MID);
            if (System.IO.File.Exists(Server.MapPath("/Resim/Kategori/" + m.markaResim)))
            {
                System.IO.File.Exists(Server.MapPath("/Resim/Kategori/" + m.markaResim));
            }
            db.Markalar.Remove(m);
            db.SaveChanges();
            return Redirect("/Diger/Markalar");
        }
        public PartialViewResult _Sayac()
        {
            return PartialView(db.Sayac.ToList());
        }
        public PartialViewResult _ZiyaretçiGünlük()
        {
            return PartialView(db.Sayac.Take(30).OrderByDescending(x=> x.SID).ToList());
        }
        public PartialViewResult _ZiyaretçiAylik()
        {
            return PartialView(db.Sayac.ToList());
        }
        public PartialViewResult _ZiyaretçiYillik()
        {
            return PartialView(db.Sayac.ToList());
        }
        public PartialViewResult _ZiyaretciBilgi()
        {
            //--toplamziyaretçi
            ViewBag.toplamziyaretci = db.Sayac.Sum(x => x.sayi);
            //--gün sayısı
            ViewBag.günsayisi = db.Sayac.Count();
            //--ortalama günlük ziyaretci
            ViewBag.ortziyaretci = (db.Sayac.Sum(x => x.sayi)/ db.Sayac.Count()).ToString();

            return PartialView(db.Sayac.OrderByDescending(x => x.SID).ToList());
        }
        public ActionResult ZiyaretciDetay()
        {
            return View(db.Sayac.ToList());
        }
        public ActionResult IstatistikSifirla()
        {
            foreach (var ab in db.Sayac.ToList())
            {
                Sayac s = db.Sayac.Where(x =>x.SID==ab.SID).SingleOrDefault();
                db.Sayac.Remove(s);
                db.SaveChanges();
            }
            Log a = new Log();
            a.Kim = Session["kullanici"].ToString();
            a.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
            a.Olay = Session["kullanici"].ToString() + " Tarafından Ziyaretçi İstatistikleri Sıfırlandı.";
            db.Log.Add(a);
            db.SaveChanges();
            return Redirect("/Diger/ZiyaretciDetay");
        }
        public ActionResult LOG()
        {
            return View(db.Log.OrderBy(x => x.ID).ToList());
        }
    }
}