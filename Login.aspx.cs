using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        // Authenticate againts the list stored in web.config
        if (FormsAuthentication.Authenticate(txtUserName.Text, txtPassword.Text))
        {
            // Create the authentication cookie and redirect the user to welcome page
            FormsAuthentication.RedirectFromLoginPage(txtUserName.Text, chkBoxRememberMe.Checked);
        }
        else
        {
            lblMessage.Text = "Invalid UserName and/or password";
        }
    }
}