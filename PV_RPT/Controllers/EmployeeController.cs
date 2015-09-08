using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PV_RPT.Controllers
{
    public class EmployeeController : Controller
    {
        readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        // GET: Employee
        public ActionResult Index()
        {
            logger.Error("My Custom First Error");
            return View();
        }
    }
}