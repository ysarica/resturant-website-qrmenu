using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ZalaBahceV1.Models;
using PagedList;
using PagedList.Mvc;

namespace ZalaBahceV1.Controllers
{
    [UserAuthorize]

    public class KategoriController : Controller
    {
        ZalaDB db = new ZalaDB();

        // GET: Kategori
        public ActionResult Index(int p=1)
        {
            Session["pagedk"] = p;
            var kategori = db.UrunKategori.ToList().ToPagedList(p,4);
            return View(kategori);
        }

        public PartialViewResult _KategoriEkle()
        {

            return PartialView("_KategoriEkle");
        }
        [HttpPost]
        public PartialViewResult _KategoriEkle(UrunKategori k, HttpPostedFileBase attachment)
        {
            if (attachment != null && attachment.ContentLength > 0)
            {
                string dosyaAdi = Guid.NewGuid().ToString() + Path.GetExtension(attachment.FileName);
                attachment.SaveAs(Server.MapPath("~/Resim/Kategori/" + dosyaAdi));
                k.resim = "/Resim/Kategori/" + dosyaAdi;
                db.UrunKategori.Add(k);
                db.SaveChanges();
                Log a = new Log();
                a.Kim = Session["kullanici"].ToString();
                a.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
                a.Olay = Session["kullanici"].ToString() + " Tarafından (" + k.baslik + ") Adlı Ürün Kategorisi Eklendi.";
                db.Log.Add(a);
                db.SaveChanges();
                Response.Redirect("/Kategori/Index/");
            }
            return PartialView();
        }
        public ActionResult KategoriSil(int kategoriID)
        {
            UrunKategori k = db.UrunKategori.Find(kategoriID);

            if (System.IO.File.Exists(Server.MapPath("/Resim/Kategori/" + k.resim)))
            {
                if (k.resim != "/Resim/resim-yok.jpg")
                {
                    System.IO.File.Exists(Server.MapPath("/Resim/Kategori/" + k.resim));

                }
            }
            db.UrunKategori.Remove(k);
            db.SaveChanges();
            Log a = new Log();
            a.Kim = Session["kullanici"].ToString();
            a.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
            a.Olay = Session["kullanici"].ToString() + " Tarafından (" + k.baslik + ") Adlı Ürün Kategori Silindi.";
            db.Log.Add(a);
            db.SaveChanges();
            return Redirect("/Kategori/Index/");
        }

        public ActionResult _KategoriDuzenle(UrunKategori gk, HttpPostedFileBase attachment)
        {
            UrunKategori k = db.UrunKategori.Where(x => x.kategoriID == gk.kategoriID).SingleOrDefault();
            if (attachment != null)
            {
                if (k.resim != "/Resim/resim-yok.jpg")
                {
                    System.IO.File.Delete(Server.MapPath(k.resim));
                }
                Random r = new Random();
                string dosyaYolu = "UK-" + r.Next(1000, 99999).ToString() + Path.GetExtension(attachment.FileName);
                var yuklemeYeri = Path.Combine(Server.MapPath("/Resim/Kategori/"), dosyaYolu);
                attachment.SaveAs(yuklemeYeri);
                k.resim = "/Resim/Kategori/" + dosyaYolu;
            }
            k.baslik = gk.baslik;
            k.aciklama = gk.aciklama;
            db.SaveChanges();

            Log a = new Log();
            a.Kim = Session["kullanici"].ToString();
            a.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
            a.Olay = Session["kullanici"].ToString() + " Tarafından (" + k.baslik + ") Adlı Ürün Kategori Düzenlendi.";
            db.Log.Add(a);
            db.SaveChanges();
            int sayfa = Convert.ToInt32(Session["pagedk"].ToString());

            return Redirect("/Kategori/Index?p="+sayfa);
        }
    }
}