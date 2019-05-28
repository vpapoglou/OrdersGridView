<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>My Future Job</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="productsDataSource" Runat="server" SelectCommand="SELECT [ProductID], [ProductName], [QuantityPerUnit], [UnitPrice], [UnitsInStock] FROM [Products]"
            ConnectionString="<%$ ConnectionStrings:NWConnectionString %>" DataSourceMode="DataReader">
        </asp:SqlDataSource>
        <asp:GridView ID="productGridView" Runat="server" DataSourceID="productsDataSource"
            DataKeyNames="ProductID" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField ReadOnly="True" HeaderText="ProductID" InsertVisible="False" DataField="ProductID"
                    SortExpression="ProductID"></asp:BoundField>
                <asp:BoundField HeaderText="ProductName" DataField="ProductName" SortExpression="ProductName"></asp:BoundField>
                <asp:BoundField HeaderText="QuantityPerUnit" DataField="QuantityPerUnit" SortExpression="QuantityPerUnit"></asp:BoundField>
                <asp:BoundField HeaderText="UnitPrice" DataField="UnitPrice" SortExpression="UnitPrice"></asp:BoundField>
                <asp:BoundField HeaderText="UnitsInStock" DataField="UnitsInStock" SortExpression="UnitsInStock"></asp:BoundField>
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
