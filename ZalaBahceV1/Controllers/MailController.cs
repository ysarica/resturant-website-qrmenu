using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Net.Security;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.Helpers;
using System.Web.Mvc;
using ZalaBahceV1.Models;

namespace ZalaBahceV1.Controllers
{
    [UserAuthorize]

    public class MailController : Controller
    {
        ZalaDB db = new ZalaDB();
        // GET: Mail
        public ActionResult Index()
        {
            return View();
        }
        public PartialViewResult _Menu()
        {
            ViewBag.mailsayi = db.GonderilenMail.Count();
            ViewBag.maildbsayi = db.MüsteriMailDB.Count();
            return PartialView();
        }
        
        public ActionResult MailGonder(string MID)
        {
            ViewBag.GonderenMail = db.Mail.ToList();
            ViewBag.m = MID;

            return View();
        }
        [ValidateInput(false)]
        [HttpPost]
        public ActionResult MailGonder(GonderilenMail m)
        {
            Mail göndericimail = db.Mail.Where(x => x.mail1 == m.gönderen).SingleOrDefault();

            //SmtpClient client = new SmtpClient();
            //MailAddress from = new MailAddress(göndericimail.mail1);
            //MailAddress to = new MailAddress(m.gönderilen);//bizim mail adresi
            //MailMessage msg = new MailMessage(from, to);
            //msg.IsBodyHtml = true;
            //msg.Subject = m.konu;
            //msg.Body += göndericimail.mail1 + "  " + to + " <br>" + m.mail; //burada başında gönderen kişinin mail adresi geliyor

            //NetworkCredential info = new NetworkCredential(göndericimail.mail1.Trim(), göndericimail.Sifre.Trim());
            //client.Port = Convert.ToInt32(göndericimail.Port);
            //client.Host = göndericimail.Host.ToString();
            //client.UseDefaultCredentials = true;
            //client.EnableSsl = true;
            //client.Credentials = info;
            //client.Send(msg);
            try
            {

                WebMail.SmtpServer = göndericimail.Host.ToString(); ;
                WebMail.EnableSsl = true;
                WebMail.UserName = göndericimail.mail1;
                WebMail.Password = göndericimail.Sifre; // gerçek dışı
                WebMail.SmtpPort = Convert.ToInt32(göndericimail.Port);

                WebMail.Send(
                        m.gönderilen,

                        m.konu,
                        m.mail,
                        göndericimail.mail1
                        
                    );
               ViewBag.Sonuc = "basarili";
            }
            catch (Exception ex)
            {
                ViewBag.Hata = ex.Message;
            }

            



            //maili kaydet
            GonderilenMail mailk = new GonderilenMail();
            mailk.konu = m.konu;
            mailk.gönderen = m.gönderen;
            mailk.gönderilen = m.gönderilen;
            mailk.mail = m.mail;
            mailk.tarih = DateTime.Now.ToShortDateString() + " - " + DateTime.Now.ToShortTimeString();
            db.GonderilenMail.Add(mailk);
            db.SaveChanges();

            Log a = new Log();
            a.Kim = Session["kullanici"].ToString();
            a.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
            a.Olay = Session["kullanici"].ToString() + " Tarafından (" + m.gönderilen + ") Mail Adresine ("+m.konu+") Konulu Mail Gönderildi.";
            db.Log.Add(a);
            db.SaveChanges();
            return Redirect("/Mail/GonderilenMail?Basarili");
        }
        
         public ActionResult GonderilenMail()
        {
            return View(db.GonderilenMail.ToList());
        }
        public ActionResult MailDetay(int ID)
        {

            GonderilenMail mail = db.GonderilenMail.Where(x => x.ID == ID).SingleOrDefault();
            if (mail==null)
            {
                return Redirect("/Mail/GonderilenMail");
            }
            return View(mail);
        }
        public ActionResult MailSil(int ID)
        {
            GonderilenMail mail = db.GonderilenMail.Where(x=> x.ID==ID).SingleOrDefault();
            Log a = new Log();
            a.Kim = Session["kullanici"].ToString();
            a.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
            a.Olay = Session["kullanici"].ToString() + " Tarafından (" + mail.gönderilen + ") Mail Adresine (" + mail.konu + ") Konulu Mail Silindi.";
            db.Log.Add(a);
            db.SaveChanges();
            db.GonderilenMail.Remove(mail);
            db.SaveChanges();
            return Redirect("/Mail/GonderilenMail");
        }
        public ActionResult MailAyar()
        {
            return View(db.Mail.ToList());
        }
        public ActionResult _MailDuzenle(Mail m)
        {
            Mail ma = db.Mail.Where(x => x.MID == m.MID).SingleOrDefault();
            ma.mail1 = m.mail1;
            ma.Sifre = m.Sifre;
            ma.Port = m.Port;
            ma.Host = m.Host;
            db.SaveChanges();
            return Redirect("/Mail/MailAyar/");
        }
      public ActionResult MailAyarSil(int ID)
        {
            Mail mail = db.Mail.Where(x => x.MID == ID).SingleOrDefault();
            db.Mail.Remove(mail);
            db.SaveChanges();
            return Redirect("/Mail/MailAyar");
        }
        public ActionResult MailAyarAktif(int ID)
        {
            Mail mail = db.Mail.Where(x => x.secili == "1").SingleOrDefault();
            mail.secili = "0";
            db.SaveChanges();
            Mail mailaktif = db.Mail.Where(x => x.MID == ID).SingleOrDefault();
            mailaktif.secili = "1";
            db.SaveChanges();
            return Redirect("/Mail/MailAyar");
        }
        public PartialViewResult _MailEkle()
        {
            return PartialView("_MailEkle");
        }
        [HttpPost]
        public PartialViewResult _MailEkle(Mail m)
        {
            m.secili = "0";
            db.Mail.Add(m);
            db.SaveChanges();
            Response.Redirect("/Mail/MailAyar");
            return PartialView();
        }
        public ActionResult MailDB()
        {

            return View(db.MüsteriMailDB.ToList());
        }
        public ActionResult MailDBSil(int ID)
        {
            MüsteriMailDB mail = db.MüsteriMailDB.Where(x => x.mailID == ID).SingleOrDefault();
            db.MüsteriMailDB.Remove(mail);
            db.SaveChanges();
            return Redirect("/Mail/MailDB");
        }
        public PartialViewResult _MailDBEkle()
        {
            return PartialView("_MailDBEkle");
        }
        [HttpPost]
        public PartialViewResult _MailDBEkle(MüsteriMailDB m)
        {
            MüsteriMailDB müs = db.MüsteriMailDB.Where(x => x.mail == m.mail).SingleOrDefault();
            if (müs==null)
            {
db.MüsteriMailDB.Add(m);
            db.SaveChanges();
            
            }
            Response.Redirect("/Mail/MailDB");
            return PartialView();

        }
        public ActionResult TopluMailGonder()
        {
            ViewBag.GonderenMail = db.Mail.ToList();
            ViewBag.GonderilenMail = db.MüsteriMailDB.ToList();
            return View();
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult TopluMailGonder(GonderilenMail m)
        {
            List<MüsteriMailDB> mailstok = db.MüsteriMailDB.ToList();
            Mail göndericimail = db.Mail.Where(x => x.mail1 == m.gönderen).SingleOrDefault();
            
            SmtpClient client = new SmtpClient();
            MailAddress from = new MailAddress(göndericimail.mail1);
            foreach (var a in mailstok)
            {
               

                try
                {
                    MailAddress to = new MailAddress(a.mail);//bizim mail adresi
                    MailMessage msg = new MailMessage(from, to);
                    msg.IsBodyHtml = true;
                    msg.Subject = m.konu;
                    msg.Body += göndericimail.mail1 + "  " + to + " <br>" + m.mail; //burada başında gönderen kişinin mail adresi geliyor
                    NetworkCredential info = new NetworkCredential(göndericimail.mail1, göndericimail.Sifre);
                    client.Port = Convert.ToInt32(göndericimail.Port);
                    client.Host = göndericimail.Host.ToString();
                    client.EnableSsl = true;
                    client.Credentials = info;
                    client.Send(msg);
                }
                catch (Exception)
                {

                  
                }
             }
            

            //maili kaydet
            GonderilenMail mail = new GonderilenMail();
            mail.konu = m.konu;
            mail.gönderen = m.gönderen;
            mail.gönderilen = "Toplu Mail Gönderimi";
            mail.mail = m.mail;
            mail.tarih = DateTime.Now.ToShortDateString() + " - " + DateTime.Now.ToShortTimeString();
            db.GonderilenMail.Add(mail);
            db.SaveChanges();
            Log ab = new Log();
            ab.Kim = Session["kullanici"].ToString();
            ab.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
            ab.Olay = Session["kullanici"].ToString() + " Tarafından (Toplu Mail) Mail Adresine (" + mail.konu + ") Konulu Mail Gönderildi.";
            db.Log.Add(ab);
            db.SaveChanges();
            return Redirect("/Mail/GonderilenMail");
       
        }
        public ActionResult CCListe()
        {
            return View(db.CCMail.ToList());
        }
        public PartialViewResult CCEkle()
        {
            return PartialView("CCEkle");
        }
        [HttpPost]
        public PartialViewResult CCEkle(CCMail cc)
        {
            if (cc.mail!=null)
            {
                db.CCMail.Add(cc);
                db.SaveChanges();
               Response.Redirect("/Mail/CCListe");
            }
            return PartialView("");

        }
        public ActionResult CCSil(int ID)
        {
            CCMail cc = db.CCMail.Where(x=> x.ID==ID).SingleOrDefault();
            db.CCMail.Remove(cc);
            db.SaveChanges();
            return Redirect("/Mail/CCListe");
        }
    }
}