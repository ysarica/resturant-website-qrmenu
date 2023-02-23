using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ZalaBahceV1.Models;

namespace ZalaBahceV1.Controllers
{
    public class MemnuniyetController : Controller
    {
        ZalaDB db = new ZalaDB();

        // GET: Memnuniyet
        public ActionResult Hosgeldiniz()
        {
            SiteAyar a = db.SiteAyar.Where(x => x.ayarID == 1).SingleOrDefault();
            if (a.siteoff == "1")
            {
                Response.Redirect("/Kapaliyiz/Simdilik");
            }
            return View();
        }
        [HttpPost]
        public ActionResult Hosgeldiniz(DegerlendirmeFormu f)
        {
            MüsteriMailDB mdb = db.MüsteriMailDB.Where(x => x.mail.ToString() == f.mail.ToString()).SingleOrDefault();
            if (mdb == null)
            {
                MüsteriMailDB maildb = new MüsteriMailDB();
                maildb.AdSoyad = f.adsoyad;
                maildb.mail = f.mail;
                maildb.tel = f.tel;
                maildb.adres = f.adres;
                db.MüsteriMailDB.Add(maildb);
                db.SaveChanges();
            }
            string yol = "/ZalaBahce/İletisim", bilgi;
            f.okundu = "Okunmadı";
            f.tarih = DateTime.Now.ToLongDateString() + "-" + DateTime.Now.ToShortTimeString();
            db.DegerlendirmeFormu.Add(f);
            db.SaveChanges();
            bilgi = "Ankete Katıldığınız İçin Teşekkür Ederiz,Cevaplarınızı Dikkate Alacağız ";
            yol = "/ZalaBahce/Bilgi?ad=" + f.adsoyad + "&bilgi=" + bilgi;
            Log a = new Log();
            a.Kim = "(Ziyaretçi)"+f.adsoyad;
            a.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
            a.Olay = f.adsoyad +" Tarafından Anket Cevaplandı ve Yönetim Tarafından Okunmadı.";
            db.Log.Add(a);
            db.SaveChanges();
            return Redirect(yol);
        }
    }
}