using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ZalaBahceV1.Models;
using PagedList.Mvc;
using PagedList;

namespace ZalaBahceV1.Controllers
{
    [UserAuthorize]

    public class UrunController : Controller
    {
        // GET: Urun
        ZalaDB db = new ZalaDB();

        // GET: Admin
        public ActionResult Index()
        {
            List<Urun> urun = db.Urun.ToList();
            return View(urun);
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

            int sayfa = Convert.ToInt32(Session["paged"].ToString());

            return Redirect("/Urun/UrunListe?p="+sayfa);
        }
   
        public ActionResult UrunSil(int urunID)
        {
            var resim = db.UrunResim.Where(x => x.urunID == urunID).ToList();
            
            foreach (var r in resim)
            {
                if (System.IO.File.Exists(Server.MapPath("/Resim/Urun/" + r.resim)))
                {
                    System.IO.File.Delete(Server.MapPath("/Resim/Urun/" + r.resim));
                }
                db.UrunResim.Remove(r);
                db.SaveChanges();
            }

            Urun u = db.Urun.Where(x => x.urunID == urunID).FirstOrDefault();

            Log ab = new Log();
            ab.Kim = Session["kullanici"].ToString();
            ab.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
            ab.Olay = Session["kullanici"].ToString() + " Tarafından " + u.urunAd + " Adlı Ürün Silindi.";
            db.Log.Add(ab);
            db.SaveChanges();

            db.Urun.Remove(u);
            db.SaveChanges();
            return Redirect("/Urun/Index");
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
            ur.sira = u.sira;
            if (resim != null && resim.ContentLength > 0)
            {
                //Resim ekleme 
                string dosyaAdi = Guid.NewGuid().ToString() + Path.GetExtension(resim.FileName);
                resim.SaveAs(Server.MapPath("/Resim/Urun/" + dosyaAdi));
                ur.kapakResim = "/Resim/Urun/" + dosyaAdi;
            }

            if (ModelState.IsValid)
            {
                ur.aciklama = u.aciklama;
                ur.icerik = u.icerik;
            }
            db.SaveChanges();
            return Redirect("/Urun/Index");

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
            return View(db.Urun.Where(x => x.urunID == urunID).FirstOrDefault());
        }
        [HttpPost]
        public ActionResult UrunResimEkle(int urunID, string urunAd, UrunResim r, HttpPostedFileBase resim)
        {
            if (resim != null && resim.ContentLength > 0)
            {
                string dosyaAdi = Guid.NewGuid().ToString() + Path.GetExtension(resim.FileName);
                resim.SaveAs(Server.MapPath("/Resim/Urun/" + dosyaAdi));
                r.urunID = urunID;
                r.resim = "/Resim/Urun/" + dosyaAdi;
                r.resimalt = urunAd;
                db.UrunResim.Add(r);
                db.SaveChanges();
            }
            return View(db.Urun.Where(x => x.urunID == urunID).FirstOrDefault());
        }
        public ActionResult UrunResimListele(int urunID)
        {
            var res = db.UrunResim.Where(x => x.urunID == urunID).ToList();
            return PartialView(res);
        }
        [HttpPost]
        public ActionResult UrunResimListele(int? urunID)
        {
            var res = db.UrunResim.Where(x => x.urunID == urunID).ToList();
            return PartialView(res);
        }
        public ActionResult resimSil(int urunID, int id)
        {
            UrunResim r = db.UrunResim.Find(id);

            if (System.IO.File.Exists(Server.MapPath("/Resim/Urun/" + r.resim)))
            {
                System.IO.File.Delete(Server.MapPath("/Resim/Urun/" + r.resim));
            }
            db.UrunResim.Remove(r);
            db.SaveChanges();
            return Redirect("/Urun/UrunResimEkle?urunID=" + urunID + "&urunAd");
        }

        //___________________Güncelleme__________________

        public ActionResult UrunListe(int p=1)
        {
            Session["paged"] = p.ToString();
            ViewBag.uKategori = db.UrunKategori.ToList();
            var urunler = db.Urun.ToList().ToPagedList(p,400);
           
            return View(urunler);
        }
        public ActionResult _UrunEkle(Urun ur,HttpPostedFileBase attachment)
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
            u.sira = ur.sira;
            u.aciklama = ur.aciklama;
            u.icerik = ur.icerik;
            u.katID = ur.katID;
            u.aktif = "aktif";
            u.TRFiyat = ur.TRFiyat;
            u.ARFiyat = ur.ARFiyat;
            db.Urun.Add(u);
            db.SaveChanges();
            int sayfa = Convert.ToInt32(Session["paged"].ToString());

            return Redirect("/Urun/UrunListe?p="+sayfa);
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
            if (u.kapakResim!="resim-yok.jpg")
            {
                System.IO.File.Delete(Server.MapPath(u.kapakResim));

            }
            db.Urun.Remove(u);
            db.SaveChanges();
            int sayfa = Convert.ToInt32(Session["paged"].ToString());

            return Redirect("/Urun/UrunListe?p="+sayfa+"&Durum=Silindi");
        }
        public ActionResult _UrunGuncelle(Urun ur, HttpPostedFileBase attachment)
        {
            Urun u = db.Urun.Where(x=> x.urunID==ur.urunID).SingleOrDefault();
            if (attachment != null)
            {
                if (ur.kapakResim!="/Resim/resim-yok.jpg")
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
            u.sira = ur.sira;
            u.katID = ur.katID;
            u.TRFiyat = ur.TRFiyat;
            u.ARFiyat = ur.ARFiyat;
            db.SaveChanges();
            int sayfa = Convert.ToInt32(Session["paged"].ToString());
            return Redirect("/Urun/UrunListe?p="+sayfa);
        }
    

    }
}