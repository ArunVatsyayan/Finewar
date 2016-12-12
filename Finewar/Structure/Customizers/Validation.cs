using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;

namespace Finewar.Structure.Customizers
{
    public class Validation
    {
        public static bool checkAlphaNumericPeriodUnderscore(string str)
        {
            Regex r = new Regex("^[a-zA-Z0-9]+[_\\.\\-]?[a-zA-Z0-9]+$");
            return r.IsMatch(str);
            
        }

        public static bool checkAlphaNumericHyphen(string str)
        {
            Regex r = new Regex("^[a-zA-Z0-9\\-\\s]+$");
            return r.IsMatch(str);

        }
        public static bool checkAlphaNumericHyphenSpacePeriodUnderscore(string str)
        {
            Regex r = new Regex("^[a-zA-Z0-9\\-\\s\\.\\_]+$");
            return r.IsMatch(str);

        }
        public void disableBrowserBackButton()
        {
            HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
            HttpContext.Current.Response.Cache.SetNoServerCaching();
            HttpContext.Current.Response.Cache.SetNoStore();
        }
        public static bool IsValidEmail(string email)
        {
            try
            {
                var addr = new System.Net.Mail.MailAddress(email);
                return addr.Address == email;
            }
            catch
            {
                return false;
            }
        }

    }
}