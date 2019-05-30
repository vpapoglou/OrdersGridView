using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ErrorPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
        }
    }

    protected void GoBack(object sender, EventArgs e)
    {
        Exception ex = Server.GetLastError();
        Server.ClearError();
        Response.Redirect("OrdersGrid.aspx");
    }
}