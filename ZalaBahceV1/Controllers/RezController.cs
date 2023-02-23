using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ZalaBahceV1.Models;

namespace ZalaBahceV1.Controllers
{
    public class RezController : Controller
    {
        ZalaDB db = new ZalaDB();

        // GET: Rez
        public ActionResult Hosgeldiniz()
        {
            return View();
        }
        public ActionResult Gecmis()
        {
            return View();
        }
        public ActionResult Iptal()
        {
            return View();
        }
        public ActionResult Onaylanmamis()
        {
            return View();
        }
        public ActionResult _rezGeriAl(int RezID)
        {
            Rezervasyon rez = db.Rezervasyon.Where(x => x.RezID == RezID).SingleOrDefault();
            rez.okundu = "Onaylanmamis";
            db.SaveChanges();
            return Redirect("/Rez/Onaylanmamis/");
        }
        public ActionResult _RezEkle()
        {
            return PartialView();
        }
        [HttpPost]
        public ActionResult _RezEkle(Rezervasyon r)
        {
            string trh = r.pTarih.Substring(0, 4) + "." + r.pTarih.Substring(5, 2) + "." + r.pTarih.Substring(8, 2);
            Rezervasyon rez = new Rezervasyon();
            rez.adsoyad = r.adsoyad;
            rez.hizmet = r.hizmet;
            rez.telefon = r.telefon;
            rez.kisi = r.kisi;
            rez.pTarih =trh;
            rez.pSaat = r.pSaat;
            rez.tarih = DateTime.Now.ToShortDateString()+"-"+DateTime.Now.ToShortTimeString();
            rez.aciklama = r.aciklama;
            rez.okundu = "Onaylandı";
            db.Rezervasyon.Add(rez);
            db.SaveChanges();
            return Redirect("/Rez/Hosgeldiniz/");

        }
        public ActionResult _rezGuncelle(Rezervasyon r)
        {
            Rezervasyon rez = db.Rezervasyon.Where(x => x.RezID == r.RezID).SingleOrDefault();
            rez.adsoyad = r.adsoyad;
            rez.hizmet = r.hizmet;
            rez.kisi = r.kisi;
            if (r.pTarih!=null)
            {
                string trh = r.pTarih.Substring(0, 4) + "." + r.pTarih.Substring(5, 2) + "." + r.pTarih.Substring(8, 2);
                rez.pTarih =trh;
            }
            rez.pSaat = r.pSaat;
            rez.tarih = DateTime.Now.ToLongDateString();
            rez.aciklama = r.aciklama+"("+DateTime.Now.ToShortDateString()+"-"+DateTime.Now.ToShortTimeString()+" Tarihinde Rezervasyon Bilgileri Güncellendi)";
            db.SaveChanges();
            return Redirect("/Rez/Hosgeldiniz/");
        }
        public ActionResult _rezOnayla(Rezervasyon r)
        {
            Rezervasyon rez = db.Rezervasyon.Where(x => x.RezID == r.RezID).SingleOrDefault();
            rez.adsoyad = r.adsoyad;
            rez.hizmet = r.hizmet;
            rez.kisi = r.kisi;
            if (r.pTarih != null)
            {
                rez.pTarih = r.pTarih;
            }
            else
            {
                rez.pTarih = rez.pTarih;
            }
            rez.pSaat = r.pSaat;
            rez.okundu = "Onaylandı";
            rez.tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
            rez.aciklama = r.aciklama + "(" + DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString() + " Tarihinde Rezervasyon Onaylandı)";
            db.SaveChanges();
            return Redirect("/Rez/Onaylanmamis");
        }
        public ActionResult _rezIptal(int RezID,string URL)
        {
            Rezervasyon rez = db.Rezervasyon.Where(x => x.RezID == RezID).SingleOrDefault();
            rez.okundu = "İptal";
            db.SaveChanges();
            return Redirect(URL);
        }

    }
}