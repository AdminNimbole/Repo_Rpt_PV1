using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace PV_RPT
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            log4net.Config.XmlConfigurator.Configure(new FileInfo(Server.MapPath("~/Web.config")));
            // Code that runs on application startup
           AreaRegistration.RegisterAllAreas();
           RouteConfig.RegisterRoutes(RouteTable.Routes);
        }
    }
}