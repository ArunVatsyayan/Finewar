using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Runtime.Serialization.Json;

namespace Finewar.Handlers
{
    /// <summary>
    /// Summary description for SessionHandler
    /// </summary>
    public class SessionHandler : IHttpHandler, System.Web.SessionState.IRequiresSessionState, System.Web.SessionState.IReadOnlySessionState
    {

        public void ProcessRequest(HttpContext context)
        {

            context.Session["login"] = "true";
            string user = context.Request["user"].ToString();//obj in json
            context.Session["user"] = user;

            context.Response.Write("/Home.aspx");
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}