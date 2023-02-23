using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Mvc;
using ZalaBahceV1.Models;

namespace ZalaBahceV1.Controllers
{
    public class RezervasyonController : Controller
    {
        ZalaDB db = new ZalaDB();
        // GET: Rezervasyon
        public ActionResult Index()
        {
            SiteAyar a = db.SiteAyar.Where(x => x.ayarID == 1).SingleOrDefault();
            if (a.siteoff == "1")
            {
                Response.Redirect("/Kapaliyiz/Simdilik");
            }
            List<SelectListItem> hizmetler = new List<SelectListItem>();
            ViewBag.hizmetler = db.Hizmetler.ToList();
          
            return View();
        }
        [ValidateInput(false)]
        [HttpPost]
        public ActionResult Index(Rezervasyon r)
        {
            SiteAyar a = db.SiteAyar.Where(x => x.ayarID == 1).SingleOrDefault();
            if (a.siteoff == "1")
            {
                Response.Redirect("/Kapaliyiz/Simdilik");
            }
            string msjmüsteri = "<h1> Sayın " + r.adsoyad + " Rezervasyon Talebiniz Aldık En Kısa Sürede Sizinle İletişime Geçecegiz </h1> </br></br> Zala Bahçe Nargile & Cafe İletişim Ekibi. </br><br>     <img src='http://zalabahce.com//img/logo/zalalogo1.png' />";
            string msjynt = "<h1> SAYIN ZALA BAHÇE YÖNETİM EKİBİ YENİ BİR REZERVASYON TALEBİNİZ VAR MÜŞTERİ BİLGİLERİNİ SİZE SUNUYORUM; </br></br> Etkileşim Tarihi:"+ DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString()+ "</br></br>ADI SOYADI:" + r.adsoyad + "</br></br> MAİL:" + r.mail + "</br></br> TELEFON:" + r.telefon + "</br></br> ADRES:" + r.adres + "</br></br> İSTENİLEN HİZMET TÜRÜ:" + r.hizmet + "</br></br> TAHMİNİ KİŞİ SAYISI:" + r.kisi + "</br></br> MÜŞTERİNİN MESAJI:"+r.mesaj+ "</br></br> REZERVASYON TARİHİ:" + r.pTarih + "</br></br> REZERVASYON SAATİ:"+r.pSaat+" </h1> </br></br> Zala Bahçe Nargile &Cafe Rezervasyon Sistemi. </br><br>     <img src='http://zalabahce.com//img/logo/zalalogo1.png'/> ";
            try
            {
                
                mailGonder.Mail("", "YENİ REZERVASYON TALEBİNİZ VAR | " + DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString(), msjynt);
                mailGonder.Mail(r.mail, "Rezervasyon Talebinizi Aldık", msjmüsteri);

            }
            catch (Exception)
            {

                
            }

            MüsteriMailDB mdb = db.MüsteriMailDB.Where(x=> x.mail.ToString()==r.mail.ToString()).SingleOrDefault();
            if (mdb==null)
            {
                MüsteriMailDB maildb = new MüsteriMailDB();
                maildb.AdSoyad = r.adsoyad;
                maildb.mail = r.mail;
                maildb.tel = r.telefon;
                maildb.adres = r.adres;
                db.MüsteriMailDB.Add(maildb);
                db.SaveChanges();

                
            }

            string trh = r.pTarih.Substring(0, 4) + "." + r.pTarih.Substring(5, 2) + "." + r.pTarih.Substring(8, 2);
            string yol = "/ZalaBahce/İletisim", bilgi;
            Rezervasyon rs = new Rezervasyon();
            rs.adsoyad = r.adsoyad;
            rs.mail = r.mail;
            rs.telefon = r.telefon;
            rs.adres = r.adres;
            rs.hizmet = r.hizmet;
            rs.kisi = r.kisi;
            rs.mesaj = r.mesaj;
            rs.pSaat = r.pSaat;
            rs.pTarih = trh;
            rs.aciklama = "";
            rs.okundu = "Onaylanmamis";
            rs.tarih= DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
            db.Rezervasyon.Add(rs);
            db.SaveChanges();
            bilgi = "Rezervasyon Talebinizi Aldık En Kısa Sürede Sizinle İletişime Geçeceğiz :)";
            yol = "/ZalaBahce/Bilgi?ad=" + r.adsoyad + "&bilgi=" + bilgi;

            Log ab = new Log();
            ab.Kim = "(Ziyaretci)" + r.adsoyad;
            ab.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
            ab.Olay = r.adsoyad + " Tarafından Rezervasyon Yapıldı Mail Adresi:" + r.mail;
            db.Log.Add(ab);
            db.SaveChanges();

            return Redirect(yol);

        }
      
    }
}