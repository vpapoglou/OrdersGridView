<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrdersGrid.aspx.cs" Inherits="OrdersGrid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Orders</div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT * FROM [Orders]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Orders] WHERE [OrderID] = @original_OrderID AND (([CustomerID] = @original_CustomerID) OR ([CustomerID] IS NULL AND @original_CustomerID IS NULL)) AND (([EmployeeID] = @original_EmployeeID) OR ([EmployeeID] IS NULL AND @original_EmployeeID IS NULL)) AND (([OrderDate] = @original_OrderDate) OR ([OrderDate] IS NULL AND @original_OrderDate IS NULL)) AND (([RequiredDate] = @original_RequiredDate) OR ([RequiredDate] IS NULL AND @original_RequiredDate IS NULL)) AND (([ShippedDate] = @original_ShippedDate) OR ([ShippedDate] IS NULL AND @original_ShippedDate IS NULL)) AND (([ShipVia] = @original_ShipVia) OR ([ShipVia] IS NULL AND @original_ShipVia IS NULL)) AND (([Freight] = @original_Freight) OR ([Freight] IS NULL AND @original_Freight IS NULL)) AND (([ShipName] = @original_ShipName) OR ([ShipName] IS NULL AND @original_ShipName IS NULL)) AND (([ShipAddress] = @original_ShipAddress) OR ([ShipAddress] IS NULL AND @original_ShipAddress IS NULL)) AND (([ShipCity] = @original_ShipCity) OR ([ShipCity] IS NULL AND @original_ShipCity IS NULL)) AND (([ShipRegion] = @original_ShipRegion) OR ([ShipRegion] IS NULL AND @original_ShipRegion IS NULL)) AND (([ShipPostalCode] = @original_ShipPostalCode) OR ([ShipPostalCode] IS NULL AND @original_ShipPostalCode IS NULL)) AND (([ShipCountry] = @original_ShipCountry) OR ([ShipCountry] IS NULL AND @original_ShipCountry IS NULL))" InsertCommand="INSERT INTO [Orders] ([CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (@CustomerID, @EmployeeID, @OrderDate, @RequiredDate, @ShippedDate, @ShipVia, @Freight, @ShipName, @ShipAddress, @ShipCity, @ShipRegion, @ShipPostalCode, @ShipCountry)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Orders] SET [CustomerID] = @CustomerID, [EmployeeID] = @EmployeeID, [OrderDate] = @OrderDate, [RequiredDate] = @RequiredDate, [ShippedDate] = @ShippedDate, [ShipVia] = @ShipVia, [Freight] = @Freight, [ShipName] = @ShipName, [ShipAddress] = @ShipAddress, [ShipCity] = @ShipCity, [ShipRegion] = @ShipRegion, [ShipPostalCode] = @ShipPostalCode, [ShipCountry] = @ShipCountry WHERE [OrderID] = @original_OrderID AND (([CustomerID] = @original_CustomerID) OR ([CustomerID] IS NULL AND @original_CustomerID IS NULL)) AND (([EmployeeID] = @original_EmployeeID) OR ([EmployeeID] IS NULL AND @original_EmployeeID IS NULL)) AND (([OrderDate] = @original_OrderDate) OR ([OrderDate] IS NULL AND @original_OrderDate IS NULL)) AND (([RequiredDate] = @original_RequiredDate) OR ([RequiredDate] IS NULL AND @original_RequiredDate IS NULL)) AND (([ShippedDate] = @original_ShippedDate) OR ([ShippedDate] IS NULL AND @original_ShippedDate IS NULL)) AND (([ShipVia] = @original_ShipVia) OR ([ShipVia] IS NULL AND @original_ShipVia IS NULL)) AND (([Freight] = @original_Freight) OR ([Freight] IS NULL AND @original_Freight IS NULL)) AND (([ShipName] = @original_ShipName) OR ([ShipName] IS NULL AND @original_ShipName IS NULL)) AND (([ShipAddress] = @original_ShipAddress) OR ([ShipAddress] IS NULL AND @original_ShipAddress IS NULL)) AND (([ShipCity] = @original_ShipCity) OR ([ShipCity] IS NULL AND @original_ShipCity IS NULL)) AND (([ShipRegion] = @original_ShipRegion) OR ([ShipRegion] IS NULL AND @original_ShipRegion IS NULL)) AND (([ShipPostalCode] = @original_ShipPostalCode) OR ([ShipPostalCode] IS NULL AND @original_ShipPostalCode IS NULL)) AND (([ShipCountry] = @original_ShipCountry) OR ([ShipCountry] IS NULL AND @original_ShipCountry IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_OrderID" Type="Int32" />
                <asp:Parameter Name="original_CustomerID" Type="String" />
                <asp:Parameter Name="original_EmployeeID" Type="Int32" />
                <asp:Parameter Name="original_OrderDate" Type="DateTime" />
                <asp:Parameter Name="original_RequiredDate" Type="DateTime" />
                <asp:Parameter Name="original_ShippedDate" Type="DateTime" />
                <asp:Parameter Name="original_ShipVia" Type="Int32" />
                <asp:Parameter Name="original_Freight" Type="Decimal" />
                <asp:Parameter Name="original_ShipName" Type="String" />
                <asp:Parameter Name="original_ShipAddress" Type="String" />
                <asp:Parameter Name="original_ShipCity" Type="String" />
                <asp:Parameter Name="original_ShipRegion" Type="String" />
                <asp:Parameter Name="original_ShipPostalCode" Type="String" />
                <asp:Parameter Name="original_ShipCountry" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CustomerID" Type="String" />
                <asp:Parameter Name="EmployeeID" Type="Int32" />
                <asp:Parameter Name="OrderDate" Type="DateTime" />
                <asp:Parameter Name="RequiredDate" Type="DateTime" />
                <asp:Parameter Name="ShippedDate" Type="DateTime" />
                <asp:Parameter Name="ShipVia" Type="Int32" />
                <asp:Parameter Name="Freight" Type="Decimal" />
                <asp:Parameter Name="ShipName" Type="String" />
                <asp:Parameter Name="ShipAddress" Type="String" />
                <asp:Parameter Name="ShipCity" Type="String" />
                <asp:Parameter Name="ShipRegion" Type="String" />
                <asp:Parameter Name="ShipPostalCode" Type="String" />
                <asp:Parameter Name="ShipCountry" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CustomerID" Type="String" />
                <asp:Parameter Name="EmployeeID" Type="Int32" />
                <asp:Parameter Name="OrderDate" Type="DateTime" />
                <asp:Parameter Name="RequiredDate" Type="DateTime" />
                <asp:Parameter Name="ShippedDate" Type="DateTime" />
                <asp:Parameter Name="ShipVia" Type="Int32" />
                <asp:Parameter Name="Freight" Type="Decimal" />
                <asp:Parameter Name="ShipName" Type="String" />
                <asp:Parameter Name="ShipAddress" Type="String" />
                <asp:Parameter Name="ShipCity" Type="String" />
                <asp:Parameter Name="ShipRegion" Type="String" />
                <asp:Parameter Name="ShipPostalCode" Type="String" />
                <asp:Parameter Name="ShipCountry" Type="String" />
                <asp:Parameter Name="original_OrderID" Type="Int32" />
                <asp:Parameter Name="original_CustomerID" Type="String" />
                <asp:Parameter Name="original_EmployeeID" Type="Int32" />
                <asp:Parameter Name="original_OrderDate" Type="DateTime" />
                <asp:Parameter Name="original_RequiredDate" Type="DateTime" />
                <asp:Parameter Name="original_ShippedDate" Type="DateTime" />
                <asp:Parameter Name="original_ShipVia" Type="Int32" />
                <asp:Parameter Name="original_Freight" Type="Decimal" />
                <asp:Parameter Name="original_ShipName" Type="String" />
                <asp:Parameter Name="original_ShipAddress" Type="String" />
                <asp:Parameter Name="original_ShipCity" Type="String" />
                <asp:Parameter Name="original_ShipRegion" Type="String" />
                <asp:Parameter Name="original_ShipPostalCode" Type="String" />
                <asp:Parameter Name="original_ShipCountry" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2"
            DataKeyNames="OrderID" DataSourceID="SqlDataSource1" EnableModelValidation="True" style="margin-top: 16px"  OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting"  OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button"/>
                <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
                <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" SortExpression="EmployeeID" />
                <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
                <asp:BoundField DataField="RequiredDate" HeaderText="RequiredDate" SortExpression="RequiredDate" />
                <asp:BoundField DataField="ShippedDate" HeaderText="ShippedDate" SortExpression="ShippedDate" />
                <asp:BoundField DataField="ShipVia" HeaderText="ShipVia" SortExpression="ShipVia" />
                <asp:BoundField DataField="Freight" HeaderText="Freight" SortExpression="Freight" />
                <asp:BoundField DataField="ShipName" HeaderText="ShipName" SortExpression="ShipName" />
                <asp:BoundField DataField="ShipAddress" HeaderText="ShipAddress" SortExpression="ShipAddress" />
                <asp:BoundField DataField="ShipCity" HeaderText="ShipCity" SortExpression="ShipCity" />
                <asp:BoundField DataField="ShipRegion" HeaderText="ShipRegion" SortExpression="ShipRegion" />
                <asp:BoundField DataField="ShipPostalCode" HeaderText="ShipPostalCode" SortExpression="ShipPostalCode" />
                <asp:BoundField DataField="ShipCountry" HeaderText="ShipCountry" SortExpression="ShipCountry" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:TextBox ID="CustomerID" runat="server"></asp:TextBox>
        <asp:TextBox ID="EmployeeID" runat="server"></asp:TextBox>
        <asp:TextBox ID="OrderDate" runat="server"></asp:TextBox>
        <asp:TextBox ID="RequiredDate" runat="server"></asp:TextBox>
        <asp:TextBox ID="ShippedDate" runat="server"></asp:TextBox>
        <asp:TextBox ID="ShipVia" runat="server"></asp:TextBox>
        <asp:TextBox ID="Freight" runat="server"></asp:TextBox>
        <asp:TextBox ID="ShipName" runat="server"></asp:TextBox>
        <asp:TextBox ID="ShipAddress" runat="server"></asp:TextBox>
        <asp:TextBox ID="ShipCity" runat="server"></asp:TextBox>
        <asp:TextBox ID="ShipRegion" runat="server"></asp:TextBox>
        <asp:TextBox ID="ShipPostalCode" runat="server"></asp:TextBox>
        <asp:TextBox ID="ShipCountry" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Create" />
        </form>
</body>
</html>
