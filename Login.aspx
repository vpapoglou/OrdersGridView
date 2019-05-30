<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>
<!DOCTYPE html>
<!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
     
</head>
<body>
    <form id="form1" runat="server" class="text-center border border-light p-5">
<%--        <div style="font-family:Arial">
<table style="border: 1px solid black">
    <tr>
        <td colspan="2">
            <b>Login</b>
        </td>
    </tr>
    <tr>
        <td>
            User Name
        </td>    
        <td>
            <asp:TextBox ID="" runat="server"/>

        </td>    
    </tr>
    <tr>
        <td>
            Password
        </td>    
        <td>
            <asp:TextBox ID="" TextMode="Password" runat="server"/>
        </td>    
    </tr>
    <tr>
        <td>
             <asp:Button ID="" runat="server" class="btn btn-primary" Text="Login" OnClick="btnLogin_Click" />                   
        </td>    

        <td colspan="2">

            <asp:CheckBox id="" runat="server"
                Text="Remember Me"
                TextAlign="Right"/>
        </td>
    </tr>
    <tr>
         <td colspan="2">
            <asp:Label ID="" CssClass="bg-error" runat="server" ForeColor="Red"></asp:Label>
        </td>  
    </tr>
</table>
<br />
           
</div>
</form>--%>
		    <p class="h4 mb-4">Sign in</p>
        <div>
        <!-- Username -->
			<asp:TextBox ID="txtUserName" runat="server" placeholder="username" class="form-control mb-4"/>
        <!-- Password -->
			<asp:TextBox ID="txtPassword" TextMode="Password" runat="server" placeholder="password" class="form-control mb-4"/>
            </div>
            <div class="d-flex justify-content-around">
            <!-- Remember me -->
            <div class="custom-control custom-checkbox">
				<asp:CheckBox type="checkbox" id="chkBoxRememberMe" runat="server"
                    TextAlign="Right" Text="Remember Me" />

			<asp:Button class="btn btn-info btn-block" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"/>

                <asp:Label ID="lblMessage" CssClass="bg-error" runat="server" ForeColor="Red"></asp:Label>

            </div>	
			</div>
        </form>
</body>
</html>




