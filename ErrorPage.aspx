<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ErrorPage.aspx.cs" Inherits="ErrorPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Oups!</title>

     <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    
</head>
<body>
    <h1>Oups!</h1>
    <h2>Something went wrong!</h2>
    <h3>Please try again!</h3>
    
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="GoBackButton" runat="server" class="btn btn-primary" OnClick="GoBack" Text="Go Back"/>
        </div>
    </form>
</body>
</html>
