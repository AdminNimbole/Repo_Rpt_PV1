<%--<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>--%>
<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>ReportViwer in MVC4 Application</title>    
    <script runat="server">
        void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<PV_RPT.EDMX.TblCountry> lstCountries = null;
                
                PV_RPT.EDMX.NIMBOLEDBEntities dc = new PV_RPT.EDMX.NIMBOLEDBEntities();
                lstCountries = dc.TblCountries.ToList();
                ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/Reports/rptCountry.rdlc");
                ReportViewer1.LocalReport.DataSources.Clear();
                ReportDataSource rdc = new ReportDataSource("MyDataset", lstCountries);
                ReportViewer1.LocalReport.DataSources.Add(rdc);
                ReportViewer1.LocalReport.Refresh();
                
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" AsyncRendering="false" SizeToReportContent="true">
        </rsweb:ReportViewer>        
    </div>
    </form>
</body>
</html>