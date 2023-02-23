using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ZalaBahceV1.Models
{
    public class UserAuthorize : AuthorizeAttribute
    {
        protected override bool AuthorizeCore(HttpContextBase httpContext)
        {
            if (httpContext.Session["kullanici"] != null)
            {
                return true;
            }
            else
            {
                httpContext.Response.Redirect("/Giris/Hosgeldiniz");
                return false;
            }

        }
    }
}