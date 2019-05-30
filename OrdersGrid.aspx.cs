using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class OrdersGrid : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-G20562D\SQLEXPRESS;Initial Catalog=Northwind;Integrated Security=True");

    //public string OrderID { get; private set; }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //Response.Redirect("OrdersGrid.aspx");
            GridView1.DataBind();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string message = string.Empty;
        try
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Orders values('" + CustomerID.Text + "', '" + EmployeeID.Text + "','" + OrderDate.Text + "','" + RequiredDate.Text + "','" + ShippedDate.Text + "','" + ShipVia.Text + "','" + Freight.Text + "','" + ShipName.Text + "','" + ShipAddress.Text + "','" + ShipCity.Text + "','" + ShipRegion.Text + "','" + ShipPostalCode.Text + "','" + ShipCountry.Text + "')";
            cmd.ExecuteNonQuery();

            con.Close();
            GridView1.DataBind();
            message = "Have a Nice Day!";
        }
        catch(Exception ex)
        {
            message = "Something went wrong!" + ex.Message;
        }

        lblMessage.Text = message;
        lblMessage.Visible = true;

    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string message = string.Empty;
        try
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            //Label lbldeleteid = (Label)row.FindControl("lblID");
            //con.Open();
            SqlCommand cmd1 = new SqlCommand("delete FROM Order Details where OrderID='" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()));
            SqlCommand cmd = new SqlCommand("delete FROM Orders where OrderID='" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()));
            //cmd.ExecuteNonQuery();
            //con.Close();
            //Response.Redirect("OrdersGrid.aspx");
            GridView1.DataBind();
            message = "Have a Nice Day!";
        }
        catch (Exception ex)
        {
            message = "Something went wrong!" + ex.Message;
        }
        finally
        {
            //con.Close();
            //con.Dispose();
        }

        lblMessage.Text = message;
        lblMessage.Visible = true;
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        string message = string.Empty;
        try
        {
            GridView1.EditIndex = e.NewEditIndex;
            //Response.Redirect("OrdersGrid.aspx");
        }
        catch (Exception ex)
        {
            message = "Something went wrong!" + ex.Message;
        }
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //int OrderID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        //GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        //Label lblID = (Label)row.FindControl("lblID");
        ////TextBox txtname=(TextBox)gr.cell[].control[];  
        //TextBox CustomerID = (TextBox)row.FindControl("CustomerID");
        //DropDownList EmployeeID = (DropDownList)row.FindControl("EmployeeID");
        //TextBox OrderDate = (TextBox)row.FindControl("OrderDate");
        //TextBox RequiredDate = (TextBox)row.FindControl("RequiredDate");
        //TextBox ShippedDate = (TextBox)row.FindControl("ShippedDate");
        //DropDownList ShipVia = (DropDownList)row.FindControl("ShipVia");
        //TextBox Freight = (TextBox)row.FindControl("Freight");
        //TextBox ShipName = (TextBox)row.FindControl("ShipName");
        //TextBox ShipAddress = (TextBox)row.FindControl("ShipAddress");
        //TextBox ShipCity = (TextBox)row.FindControl("ShipCity");
        //TextBox ShipRegion = (TextBox)row.FindControl("ShipRegion");
        //TextBox ShipPostalCode = (TextBox)row.FindControl("ShipPostalCode");
        //TextBox ShipCountry = (TextBox)row.FindControl("ShipCountry");
        ////TextBox textadd = (TextBox)row.FindControl("txtadd");  
        ////TextBox textc = (TextBox)row.FindControl("txtc");  
        //GridView1.EditIndex = -1;
        //con.Open();
        //SqlCommand cmd = new SqlCommand("SELECT * FROM Orders", con);

        ////SqlCommand cmd = new SqlCommand("update Orders set CustomerID='" + CustomerID.Text + "',EmployeeID='" + EmployeeID.Text + "',OrderDate='" + OrderDate.Text + "',RequiredDate='" + RequiredDate.Text + "',ShippedDate='" + ShippedDate.Text + "',ShipVia='" + ShipVia.Text + "',Freight='" + Freight.Text + "',ShipName='" + ShipName.Text + "',ShipAddress='" + ShipAddress.Text + "',ShipCity='" + ShipCity.Text + "',ShipRegion='" + ShipRegion.Text + "',ShipPostalCode='" + ShipPostalCode.Text + "',ShipCountry='" + ShipCountry.Text + "'where OrderID='" + OrderID + "'", con);


        //cmd.ExecuteNonQuery();
        //con.Close();
        ////Response.Redirect("OrdersGrid.aspx");
        //GridView1.DataBind();
    }
    //protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    //{
    //    GridView1.PageIndex = e.NewPageIndex;
    //    Response.Redirect("OrdersGrid.aspx");
    //}
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        Response.Redirect("OrdersGrid.aspx");
    }

}