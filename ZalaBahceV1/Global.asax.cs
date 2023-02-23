using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using ZalaBahceV1.Models;

namespace ZalaBahceV1
{


    public class MvcApplication : System.Web.HttpApplication
    {
        ZalaDB db = new ZalaDB();
        public object BundleTable { get; private set; }
        public object FilterConfig { get; private set; }
        public object WebApiConfig { get; private set; }

        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            RouteConfig.RegisterRoutes(RouteTable.Routes);

        }
        protected void Session_Start(object sender, EventArgs e)
        {
            Application.Lock();
            Sayac s1 = db.Sayac.Where(x => x.yil == DateTime.Now.Year.ToString() && x.ay == DateTime.Now.Month.ToString() && x.gün == DateTime.Now.Day.ToString()).SingleOrDefault();
            if (s1 == null)
            {
                Sayac syeni = new Sayac();
                syeni.gün = DateTime.Now.Day.ToString();
                syeni.ay = DateTime.Now.Month.ToString();
                syeni.yil = DateTime.Now.Year.ToString();
                syeni.sayi = 1;
                db.Sayac.Add(syeni);
                db.SaveChanges();

                ZiyaretciIstatistik z = new ZiyaretciIstatistik();
                z.IP = Request.UserHostAddress.ToString();
                z.Browser = Request.Browser.Browser.ToString();
                z.Dil = Request.ServerVariables["HTTP_ACCEPT_LANGUAGE"].Substring(0, 2).ToString();
                z.NereyeGeldi = Request.RawUrl.ToString();
                try
                {
                    z.NeredenGeldi = Request.UrlReferrer.ToString();
                }
                catch (Exception)
                {
                    z.NeredenGeldi = "Bilinmiyor";
                }
                db.ZiyaretciIstatistik.Add(z);
                db.SaveChanges();

            }
            else
            {
                s1.sayi = (s1.sayi + 1);
                db.SaveChanges();

                ZiyaretciIstatistik z = new ZiyaretciIstatistik();
                z.IP = Request.UserHostAddress.ToString();
                z.Browser = Request.Browser.Browser.ToString();
                z.Dil = Request.ServerVariables["HTTP_ACCEPT_LANGUAGE"].Substring(0, 2).ToString();
                z.NereyeGeldi = Request.RawUrl.ToString();
                try
                {
                    z.NeredenGeldi = Request.UrlReferrer.ToString();
                }
                catch (Exception)
                {
                    z.NeredenGeldi = "Bilinmiyor";
                }
                db.ZiyaretciIstatistik.Add(z);
                db.SaveChanges();
            }


            Application.UnLock();
        }
        protected void Session_End(object sender, EventArgs e)
        {
            Log a = new Log();
            Application.Lock();
            try
            {
                a.Kim = Session["kullanici"].ToString();
                a.Olay = Session["kullanici"].ToString() + " Tarafından Çıkış Yapıldı.";
            }
            catch (Exception)
            {
                a.Kim = "Bilinmiyor";
                a.Olay = "Bilinmiyor Tarafından Çıkış Yapıldı.";

            }
            a.Tarih = DateTime.Now.ToShortDateString() + "-" + DateTime.Now.ToShortTimeString();
            db.Log.Add(a);
            db.SaveChanges();
            Application["OnlineUsers"] = Convert.ToInt32(Application["OnlineUsers"]) - 1;
            Application.UnLock();
        }
        protected void Application_End(object sender, EventArgs e)
        {
            Application.Remove("OnlineUsers");
        }
    }
}
