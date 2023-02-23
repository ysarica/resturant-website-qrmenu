using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ZalaBahceV1.Models;

namespace ZalaBahceV1.Controllers
{        [UserAuthorize]

    public class MesajController : Controller
    {

        ZalaDB db = new ZalaDB();
        public ActionResult MesajListe()
        {
            return View();
        }
        public ActionResult OkunmusMesaj()
        {
            return View();    
        }
       
        public ActionResult MesajSil(int MID)
        {
            GelenMesaj msj = db.GelenMesaj.Where(x => x.MID == MID).SingleOrDefault();
            Log a = new Log();
            a.Kim = Session["kullanici"].ToString();
            a.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
            a.Olay = Session["kullanici"].ToString() + " Tarafından (" + msj.adsoyad + ") İsimli Mesaj Silindi Silinen Mesajın Mail Adresi:" + msj.mail;
            db.Log.Add(a);
            db.SaveChanges();
            db.GelenMesaj.Remove(msj);
            db.SaveChanges();
            return Redirect("/Mesaj/OkunmusMesaj/");
        }

        public ActionResult MesajOnay(GelenMesaj m)
        {
            GelenMesaj ms = db.GelenMesaj.Where(x => x.MID == m.MID).SingleOrDefault();
            ms.aciklama = m.aciklama;
            ms.okundu = "Okundu";
            db.SaveChanges();
            Log a = new Log();
            a.Kim = Session["kullanici"].ToString();
            a.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
            a.Olay = Session["kullanici"].ToString() + " Tarafından (" + m.adsoyad + ") İsimli Mesaj Okundu Okunan Mesajın Mail Adresi:" + m.mail;
            db.Log.Add(a);
            db.SaveChanges();
            return Redirect("/Mesaj/MesajListe/");
        }
        //-------------------------------------------------------------------------------------------------------------
        public ActionResult AnketListe()
        {
            return View();
        }
        public ActionResult AnketOkunmus()
        {
            return View();
        }
        public ActionResult AnketOnay(DegerlendirmeFormu d)
        {
            DegerlendirmeFormu dg = db.DegerlendirmeFormu.Where(x => x.ID == d.ID).SingleOrDefault();
            dg.okundu = "Okundu";
            dg.aciklama = d.aciklama;
            db.SaveChanges();
            Log a = new Log();
            a.Kim = Session["kullanici"].ToString();
            a.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
            a.Olay = Session["kullanici"].ToString() + " Tarafından (" + d.adsoyad + ") İsimli Anket Okundu Okunan Mesajın Mail Adresi:" + d.mail;
            db.Log.Add(a);
            db.SaveChanges();
            return Redirect("/Mesaj/AnketListe/");
        }
        public ActionResult AnketSil(int ID)
        {
            DegerlendirmeFormu dg = db.DegerlendirmeFormu.Where(x => x.ID == ID).SingleOrDefault();
            db.DegerlendirmeFormu.Remove(dg);
            db.SaveChanges();
            Log a = new Log();
            a.Kim = Session["kullanici"].ToString();
            a.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
            a.Olay = Session["kullanici"].ToString() + " Tarafından (" + dg.adsoyad + ") İsimli Anket Silindi Silinen Mesajın Mail Adresi:" + dg.mail;
            db.Log.Add(a);
            db.SaveChanges();
            return Redirect("/Mesaj/AnketOkunmus/");
        }          
        //---------------------------------------------------------------------------------------------------------------------
        public PartialViewResult _GelenMesajlar()
        {
            int okunmamisrezsayi = 0;
            double t = Convert.ToDouble(DateTime.Now.ToString("yyyy/MM/dd"));
            List<Rezervasyon> okunmamislist = db.Rezervasyon.Where(x => x.okundu == "Onaylanmamis").ToList();
            foreach (var i in okunmamislist.OrderBy(x => x.pTarih))
            {
                if (Convert.ToDouble(i.pTarih) > t)
                {
                    okunmamisrezsayi++;
                }
            }
            ViewBag.rezsayi = okunmamisrezsayi;
            return PartialView();
        }
        public PartialViewResult _BildirimPaneli()
        {
            int okunmamisrezsayi = 0;
            double t = Convert.ToDouble(DateTime.Now.ToString("yyyy/MM/dd"));
            List<Rezervasyon> okunmamislist = db.Rezervasyon.Where(x => x.okundu == "Onaylanmamis").ToList();
            foreach (var i in okunmamislist.OrderBy(x => x.pTarih))
            {
                if (Convert.ToDouble(i.pTarih) > t)
                {
                    okunmamisrezsayi++;
                }
            }
            ViewBag.msjsayi = db.GelenMesaj.Where(x=> x.okundu== "Okunmadı").Count();
            ViewBag.rezsayi1=okunmamisrezsayi;
            ViewBag.anketsayi = db.DegerlendirmeFormu.Where(x => x.okundu == "Okunmadı").Count();
            ViewBag.totalsayi = Convert.ToInt32(ViewBag.msjsayi) + Convert.ToInt32(ViewBag.rezsayi1) + Convert.ToInt32(ViewBag.anketsayi);
            return PartialView();
        }
        //-----REZERVASYON---------------------//
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
        public ActionResult RezMenu()
        {
           return PartialView();
        }
        public ActionResult _rezGeriAl(int RezID)
        {
            Rezervasyon rez = db.Rezervasyon.Where(x => x.RezID == RezID).SingleOrDefault();
            rez.okundu = "Onaylanmamis";
            db.SaveChanges();
            Log a = new Log();
            a.Kim = Session["kullanici"].ToString();
            a.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
            a.Olay = Session["kullanici"].ToString() + " Tarafından (" + rez.adsoyad + ") İsimli Müşterinin Rezervasyonu Tekrarlandı";
            db.Log.Add(a);
            db.SaveChanges();
            return Redirect("/Mesaj/Onaylanmamis/");
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
            rez.pTarih = trh;
            rez.pSaat = r.pSaat;
            rez.tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
            rez.aciklama = r.aciklama;
            rez.okundu = "Onaylandı";
            db.Rezervasyon.Add(rez);
            db.SaveChanges();
            Log a = new Log();
            a.Kim = Session["kullanici"].ToString();
            a.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
            a.Olay = Session["kullanici"].ToString() + " Tarafından (" + r.adsoyad + ") İsimli Müşteriye Rezervasyon Oluşturdu";
            db.Log.Add(a);
            db.SaveChanges();
            return Redirect("/Mesaj/Hosgeldiniz/");

        }
        public ActionResult _rezGuncelle(Rezervasyon r)
        {
            Rezervasyon rez = db.Rezervasyon.Where(x => x.RezID == r.RezID).SingleOrDefault();
            rez.adsoyad = r.adsoyad;
            rez.hizmet = r.hizmet;
            rez.kisi = r.kisi;
            rez.telefon = r.telefon;
            if (r.pTarih != null)
            {
                string trh = r.pTarih.Substring(0, 4) + "." + r.pTarih.Substring(5, 2) + "." + r.pTarih.Substring(8, 2);
                rez.pTarih = trh;
            }
            rez.pSaat = r.pSaat;
            rez.tarih = DateTime.Now.ToLongDateString();
            rez.aciklama = r.aciklama + "(" + DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString() + " Tarihinde Rezervasyon Bilgileri Güncellendi)";
            db.SaveChanges();
            Log a = new Log();
            a.Kim = Session["kullanici"].ToString();
            a.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
            a.Olay = Session["kullanici"].ToString() + " Tarafından (" + r.adsoyad + ") İsimli Müşterinin Rezervasyonu Güncellendi";
            db.Log.Add(a);
            db.SaveChanges();
            return Redirect("/Mesaj/Hosgeldiniz/");
        }
        public ActionResult _rezOnayla(Rezervasyon r)
        {
            Rezervasyon rez = db.Rezervasyon.Where(x => x.RezID == r.RezID).SingleOrDefault();
            rez.adsoyad = r.adsoyad;
            rez.hizmet = r.hizmet;
            rez.kisi = r.kisi;
            rez.telefon = r.telefon;
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
            Log a = new Log();
            a.Kim = Session["kullanici"].ToString();
            a.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
            a.Olay = Session["kullanici"].ToString() + " Tarafından (" + r.adsoyad + ") İsimli Müşterinin Rezervasyonu Onaylandı";
            db.Log.Add(a);
            db.SaveChanges();
            return Redirect("/Mesaj/Onaylanmamis");
        }
        public ActionResult _rezIptal(int RezID, string URL)
        {
            Rezervasyon rez = db.Rezervasyon.Where(x => x.RezID == RezID).SingleOrDefault();
            rez.okundu = "İptal";
            db.SaveChanges();
            Log a = new Log();
            a.Kim = Session["kullanici"].ToString();
            a.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
            a.Olay = Session["kullanici"].ToString() + " Tarafından (" + rez.adsoyad + ") İsimli Müşterinin Rezervasyonu İptal Edildi";
            db.Log.Add(a);
            db.SaveChanges();
            return Redirect(URL);
        }
    }
}