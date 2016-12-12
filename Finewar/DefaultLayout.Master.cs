using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;

namespace Finewar
{
    public partial class DefaultLayout : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Context.Session["login"].ToString() != "true")
                {
                    Context.Session["login"] = "false";
                    if (Context.Request.Cookies["Username"] != null && Context.Request.Cookies["ctpy"] != null)
                    {
                        Structure.Customizers.Response<Object> Res = Structure.Login.login(new Structure.Models.LoginSubmitModel { Username = Context.Request.Cookies["Username"].Value, Password = Context.Request.Cookies["ctpy"].Value, RememberMe = true });
                        if (Res.ErrorCode == 1)
                        {
                            Context.Session["login"] = "true";
                            string user = new JavaScriptSerializer().Serialize(Res.Result);//obj in json
                            Context.Session["user"] = user;
                            Response.Redirect("/Home.aspx");
                        }
                    }
                }
               
            }
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (Request.Browser.Cookies)
            {
                Response.Cookies.Remove("username");
                var aCookie = new HttpCookie("username") { Expires = DateTime.Now.AddDays(-100) };
                Response.Cookies.Add(aCookie);
                Response.Cookies.Remove("ctpy");
                var bCookie = new HttpCookie("ctpy") { Expires = DateTime.Now.AddDays(-100) };
                Response.Cookies.Add(bCookie);
            }
            Session["login"] = "false";
            Session["user"] = null;
            Response.Redirect("/Home.aspx", false);
        }
    }
}