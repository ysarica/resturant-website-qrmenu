using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Helpers;
using System.Web.Mvc;
using ZalaBahceV1.Models;

namespace ZalaBahceV1.Controllers
{
    public class GirisController : Controller
    {
        // GET: Giris
        ZalaDB db = new ZalaDB();
        [HttpGet]
        public ActionResult Hosgeldiniz()
        {
            if (Session["kullanici"] == null)
            {
                return View();
            }
            else
            {
                return Redirect("/Admin/Index");
            }
                
        }

        [HttpPost]
        public ActionResult Hosgeldiniz(string ka, string pw)
        {
            ViewBag.h = "normal";
            Kullanici k = db.Kullanici.Where(x => x.ka == ka && x.pw == pw).SingleOrDefault();
            if (k != null)
            {
                Session["kullanici"] = k.adsoyad;
                Session["kaID"] = k.ID.ToString();
                Session["isim"] = k.pw;
                Session["Yetki"] = k.yetki.ToString();
                Log a = new Log();
                a.Kim = Session["kullanici"].ToString();
                a.Tarih = DateTime.Now.ToShortDateString()+"-"+DateTime.Now.ToShortTimeString();
                a.Olay = Session["kullanici"].ToString()+ " Tarafından Giriş Yapıldı.";
                db.Log.Add(a);
                db.SaveChanges();

                k.songiris = (DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString()).ToString();
                db.SaveChanges();

                return RedirectToAction("Index", "Admin");

                
            }
            else
            {
                ViewBag.h = "hata";
                Log a = new Log();
                a.Kim ="Bilinmiyor IP:"+Request.UserHostAddress.ToString();
                a.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
                a.Olay ="Başarısız Giriş Denemesi Yapıldı.";
                db.Log.Add(a);
                db.SaveChanges();
            }
            return View();
        }
        public ActionResult cikis()
        {
            Session.Clear();
            return Redirect("/Giris/Index");
        }
        public ActionResult SifreYenile()
        {
           
            return View();
        }
        [HttpPost]
        public ActionResult SifreYenile(Kullanici k)
        {
            Kullanici ka = db.Kullanici.Where(x => x.ka == k.ka || x.mail == k.ka).SingleOrDefault();


            try
            {
                Mail göndericimail = db.Mail.Where(x => x.secili == "1").SingleOrDefault();
                WebMail.SmtpServer = göndericimail.Host.ToString(); ;
                WebMail.EnableSsl = true;
                WebMail.UserName = göndericimail.mail1;
                WebMail.Password = göndericimail.Sifre; // gerçek dışı
                WebMail.SmtpPort = Convert.ToInt32(göndericimail.Port);

                WebMail.Send(ka.mail,"S R C ADMİN ŞİFRE HATIRLATICI","<p>Merhabalar "+ka.adsoyad+ " Kullanıcı Bilgilerinizi Aşağıda Size Sunuyorum Okuduktan Sonra Maili Silmenizi Öneririm.<br /><br /><br />Kullanıcı Adı:" + ka.ka+ "<br />Şifre:"+ka.pw+ "<br />Mail:"+ka.mail+ "<br />Yetki:"+ka.yetki+ "<br /><br /> Saygılarımla S R C Admin", göndericimail.mail1);
                ViewBag.Sonuc = "basarili";
            }
            catch (Exception ex)
            {
                ViewBag.Hata = ex.Message;
            }
            Response.Redirect("/Giris/Hosgeldiniz");
            return View();
        }
    }
}