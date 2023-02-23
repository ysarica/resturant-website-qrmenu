using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;

namespace ZalaBahceV1.Models
{
    public class mailGonder
    {
        
        public static void Mail(string gondMail, string baslik, string mailbody)
        {
            int b=1;
         ZalaDB db = new ZalaDB();
         Mail göndericimail = db.Mail.Where(x=> x.secili=="1").SingleOrDefault();
         List<CCMail> cc = db.CCMail.ToList();
            if (gondMail=="")
            {
                gondMail = göndericimail.mail1;
                b = 0;
            }

            SmtpClient client = new SmtpClient();
            MailAddress from = new MailAddress(göndericimail.mail1);
            MailAddress to = new MailAddress(gondMail);//bizim mail adresi
            MailMessage msg = new MailMessage(from, to);
            msg.IsBodyHtml = true;
            msg.Subject = baslik;
            msg.Body += göndericimail.mail1 +"  "+ to +" <h1> " +mailbody + " <h1> "; //burada başında gönderen kişinin mail adresi geliyor
            if (b==0)
            {
            foreach (var a in cc)
            {
                msg.CC.Add(a.mail.ToString());//herkes görür

            }
            }
            NetworkCredential info = new NetworkCredential(göndericimail.mail1,göndericimail.Sifre);
            client.Port =Convert.ToInt32(göndericimail.Port);
            client.Host = göndericimail.Host.ToString();
            client.EnableSsl = true;
            client.Credentials = info;
            client.Send(msg);

        }
    }
}