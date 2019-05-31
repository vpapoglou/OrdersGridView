<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrdersGrid.aspx.cs" Inherits="OrdersGrid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
 
    <!-- Datatables-->
    <link href="bootstrap/vendors/datatables.net-bs4/css/dataTables.bootstrap4.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="jumbotron text-center">
            <h1>Orders</h1></div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT * FROM [Orders]" ConflictDetection="CompareAllValues" DeleteCommand="Delete from [Order Details] where [OrderID] = 
            @original_OrderID; DELETE FROM [Orders] WHERE [OrderID] = @original_OrderID AND (([CustomerID] = @original_CustomerID) OR ([CustomerID] IS NULL AND @original_CustomerID IS NULL)) AND (([EmployeeID] = @original_EmployeeID) OR ([EmployeeID] IS NULL AND @original_EmployeeID IS NULL)) AND (([OrderDate] = @original_OrderDate) OR ([OrderDate] IS NULL AND @original_OrderDate IS NULL)) AND (([RequiredDate] = @original_RequiredDate) OR ([RequiredDate] IS NULL AND @original_RequiredDate IS NULL)) AND (([ShippedDate] = @original_ShippedDate) OR ([ShippedDate] IS NULL AND @original_ShippedDate IS NULL)) AND (([ShipVia] = @original_ShipVia) OR ([ShipVia] IS NULL AND @original_ShipVia IS NULL)) AND (([Freight] = @original_Freight) OR ([Freight] IS NULL AND @original_Freight IS NULL)) AND (([ShipName] = @original_ShipName) OR ([ShipName] IS NULL AND @original_ShipName IS NULL)) AND (([ShipAddress] = @original_ShipAddress) OR ([ShipAddress] IS NULL AND @original_ShipAddress IS NULL)) AND (([ShipCity] = @original_ShipCity) OR ([ShipCity] IS NULL AND @original_ShipCity IS NULL)) AND (([ShipRegion] = @original_ShipRegion) OR ([ShipRegion] IS NULL AND @original_ShipRegion IS NULL)) AND (([ShipPostalCode] = @original_ShipPostalCode) OR ([ShipPostalCode] IS NULL AND @original_ShipPostalCode IS NULL)) AND (([ShipCountry] = @original_ShipCountry) OR ([ShipCountry] IS NULL AND @original_ShipCountry IS NULL))" InsertCommand="INSERT INTO [Orders] ([CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (@CustomerID, @EmployeeID, @OrderDate, @RequiredDate, @ShippedDate, @ShipVia, @Freight, @ShipName, @ShipAddress, @ShipCity, @ShipRegion, @ShipPostalCode, @ShipCountry)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Orders] SET [CustomerID] = @CustomerID, [EmployeeID] = @EmployeeID, [OrderDate] = @OrderDate, [RequiredDate] = @RequiredDate, [ShippedDate] = @ShippedDate, [ShipVia] = @ShipVia, [Freight] = @Freight, [ShipName] = @ShipName, [ShipAddress] = @ShipAddress, [ShipCity] = @ShipCity, [ShipRegion] = @ShipRegion, [ShipPostalCode] = @ShipPostalCode, [ShipCountry] = @ShipCountry WHERE [OrderID] = @original_OrderID AND (([CustomerID] = @original_CustomerID) OR ([CustomerID] IS NULL AND @original_CustomerID IS NULL)) AND (([EmployeeID] = @original_EmployeeID) OR ([EmployeeID] IS NULL AND @original_EmployeeID IS NULL)) AND (([OrderDate] = @original_OrderDate) OR ([OrderDate] IS NULL AND @original_OrderDate IS NULL)) AND (([RequiredDate] = @original_RequiredDate) OR ([RequiredDate] IS NULL AND @original_RequiredDate IS NULL)) AND (([ShippedDate] = @original_ShippedDate) OR ([ShippedDate] IS NULL AND @original_ShippedDate IS NULL)) AND (([ShipVia] = @original_ShipVia) OR ([ShipVia] IS NULL AND @original_ShipVia IS NULL)) AND (([Freight] = @original_Freight) OR ([Freight] IS NULL AND @original_Freight IS NULL)) AND (([ShipName] = @original_ShipName) OR ([ShipName] IS NULL AND @original_ShipName IS NULL)) AND (([ShipAddress] = @original_ShipAddress) OR ([ShipAddress] IS NULL AND @original_ShipAddress IS NULL)) AND (([ShipCity] = @original_ShipCity) OR ([ShipCity] IS NULL AND @original_ShipCity IS NULL)) AND (([ShipRegion] = @original_ShipRegion) OR ([ShipRegion] IS NULL AND @original_ShipRegion IS NULL)) AND (([ShipPostalCode] = @original_ShipPostalCode) OR ([ShipPostalCode] IS NULL AND @original_ShipPostalCode IS NULL)) AND (([ShipCountry] = @original_ShipCountry) OR ([ShipCountry] IS NULL AND @original_ShipCountry IS NULL))">
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
        </div>
        <asp:Label ID="lblMessage1" CssClass="bg-error" runat="server" Visible="false"></asp:Label>
        <asp:GridView ID="GridView1" CssClass="table table-stripped table-bordered table-hover" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4"
            DataKeyNames="OrderID" DataSourceID="SqlDataSource1" EnableModelValidation="True" style="margin-top: 16px" ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting" > <%--OnRowCancelingEdit="GridView1_RowCancelingEdit"   OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating"--%>
            <AlternatingRowStyle BackColor="White" />
            <Columns>
<%--                <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkdelete" runat="server" CommandName="Delete" >Delete</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>--%>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" CancelText="Cancel" DeleteText="Delete" EditText="Edit" UpdateText="Update" />
                <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                <asp:TemplateField HeaderText="CustomerID" SortExpression="CustomerID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CustomerID") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="erfvCustomerID" ControlToValidate="TextBox1" ErrorMessage="Please enter a CustomerID" Display="Dynamic" ValidationGroup="vEdit"/>
                        <asp:RegularExpressionValidator runat="server" ID="erevCustomerID" ControlToValidate="TextBox1" ValidationExpression="^[A-Za-z]{5}$" ErrorMessage="Please enter 5 letters" Display="Dynamic" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("CustomerID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="EmployeeID" SortExpression="EmployeeID">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("EmployeeID") %>'>
                            <asp:ListItem Text="Davolio" Value="1"/>
                            <asp:ListItem Text="Fuller" Value="2"/>
                            <asp:ListItem Text="Leverling" Value="3"/>
                            <asp:ListItem Text="Peacock" Value="4"/>
                            <asp:ListItem Text="Buchanan" Value="5"/>
                            <asp:ListItem Text="Suyama" Value="6"/>
                            <asp:ListItem Text="King" Value="7"/>
                            <asp:ListItem Text="Callahan" Value="8"/>
                            <asp:ListItem Text="Dodsworth" Value="9"/>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("EmployeeID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OrderDate" SortExpression="OrderDate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("OrderDate") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="erfvOrderDate" ControlToValidate="TextBox2" ErrorMessage="Please enter an Order Date" Display="Dynamic" ValidationGroup="vEdit"/>
                        <asp:RegularExpressionValidator runat="server" ID="erevOrderDate" ControlToValidate="TextBox2" ValidationExpression="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$" ErrorMessage="Please enter Date like XX-XX-XXXX" Display="Dynamic" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="OrderDate" runat="server" Text='<%# Bind("OrderDate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="RequiredDate" SortExpression="RequiredDate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("RequiredDate") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="erfvRequiredDate" ControlToValidate="TextBox3" ErrorMessage="Please enter an Required Date" Display="Dynamic" ValidationGroup="vEdit"/>
                        <asp:RegularExpressionValidator runat="server" ID="erevRequiredDate" ControlToValidate="TextBox3" ValidationExpression="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$" ErrorMessage="Please enter Date like XX-XX-XXXX" Display="Dynamic" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("RequiredDate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ShippedDate" SortExpression="ShippedDate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("ShippedDate") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="erfvShippedDate" ControlToValidate="TextBox4" ErrorMessage="Please enter a Shipped Date" Display="Dynamic" ValidationGroup="vEdit"/>
                        <asp:RegularExpressionValidator runat="server" ID="erevShippedDate" ControlToValidate="TextBox4" ValidationExpression="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$" ErrorMessage="Please enter Date like XX-XX-XXXX" Display="Dynamic" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("ShippedDate") %>'></asp:Label>                        
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ShipVia" SortExpression="ShipVia">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind("ShipVia") %>'>
                            <asp:ListItem Text="Speedy Express" Value="1"/>
                            <asp:ListItem Text="United Package" Value="2"/>
                            <asp:ListItem Text="Federal Shipping" Value="3"/>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("ShipVia") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Freight" SortExpression="Freight">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Freight") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="erfvFreight" ControlToValidate="TextBox5" ErrorMessage="Please enter a Freight" ValidationGroup="vEdit" Display="Dynamic"/>
                        <asp:RegularExpressionValidator runat="server" ID="erefFreight" ControlToValidate="TextBox5" ValidationExpression="\d+(\.\d{1,5})?" ErrorMessage="Please enter Freight number like (*).XXXXX"/><br /><br />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("Freight") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ShipName" SortExpression="ShipName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("ShipName") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="erfvShipName" ControlToValidate="TextBox6" ErrorMessage="Please enter a Ship Name" Display="Dynamic" ValidationGroup="vEdit"/>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("ShipName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ShipAddress" SortExpression="ShipAddress">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("ShipAddress") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="erfvShipAddress" ControlToValidate="TextBox7" ErrorMessage="Please enter a Ship Address" Display="Dynamic" ValidationGroup="vEdit"/>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("ShipAddress") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ShipCity" SortExpression="ShipCity">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("ShipCity") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="erfvShipCity" ControlToValidate="TextBox8" ErrorMessage="Please enter a Ship City" Display="Dynamic" ValidationGroup="vEdit"/>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label10" runat="server" Text='<%# Bind("ShipCity") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ShipRegion" SortExpression="ShipRegion">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("ShipRegion") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="erfvShipRegion" ControlToValidate="TextBox9" ErrorMessage="Please enter a Ship Region" Display="Dynamic" ValidationGroup="vEdit"/>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label11" runat="server" Text='<%# Bind("ShipRegion") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ShipPostalCode" SortExpression="ShipPostalCode">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("ShipPostalCode") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="erfvShipPostalCode" ControlToValidate="TextBox10" ErrorMessage="Please enter a Ship Postal Code" Display="Dynamic" ValidationGroup="vEdit"/>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label12" runat="server" Text='<%# Bind("ShipPostalCode") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ShipCountry" SortExpression="ShipCountry">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("ShipCountry") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="erfvShipCountry" ControlToValidate="TextBox11" ErrorMessage="Please enter a Ship Country" Display="Dynamic" ValidationGroup="vEdit"/>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label13" runat="server" Text='<%# Bind("ShipCountry") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        </asp:GridView>

        <h1>Create New Order</h1>
        <%--<asp:ValidationSummary runat="server" ID="vSummary" ValidationGroup="vCreate" />--%>
        <asp:Label ID="lblMessage" CssClass="bg-error" runat="server" Visible="false"></asp:Label>
        <label>Customer ID<br /></label><br />
        <asp:TextBox ID="CustomerID" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="rfvCustomerID" ControlToValidate="CustomerID" ErrorMessage="Please enter a CustomerID" Display="Dynamic" ValidationGroup="vCreate"/>
        <asp:RegularExpressionValidator runat="server" ID="revCustomerID" ControlToValidate="CustomerID" ValidationExpression="^[A-Za-z]{5}$" ErrorMessage="Please enter 5 letters" Display="Dynamic" /><br /><br />
        <label>Employee ID</label><br />
        <asp:DropDownList ID="EmployeeID" runat="server" Height="23px" Width="132px">
            <asp:ListItem Text="Davolio" Value="1"/>
            <asp:ListItem Text="Fuller" Value="2"/>
            <asp:ListItem Text="Leverling" Value="3"/>
            <asp:ListItem Text="Peacock" Value="4"/>
            <asp:ListItem Text="Buchanan" Value="5"/>
            <asp:ListItem Text="Suyama" Value="6"/>
            <asp:ListItem Text="King" Value="7"/>
            <asp:ListItem Text="Callahan" Value="8"/>
            <asp:ListItem Text="Dodsworth" Value="9"/>
        </asp:DropDownList><br /><br />
        <label>Order Date</label><br />
        <asp:TextBox ID="OrderDate" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="rfvOrderDate" ControlToValidate="OrderDate" ErrorMessage="Please enter an Order Date" Display="Dynamic" ValidationGroup="vCreate"/>
        <asp:RegularExpressionValidator runat="server" ID="revOrderDate" ControlToValidate="OrderDate" ValidationExpression="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$" ErrorMessage="Please enter Date like XX-XX-XXXX" Display="Dynamic" /><br /><br />
        <label>Required Date</label><br />
        <asp:TextBox ID="RequiredDate" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="rfvRequiredDate" ControlToValidate="RequiredDate" ErrorMessage="Please enter a Required Date" Display="Dynamic" ValidationGroup="vCreate"/>
        <asp:RegularExpressionValidator runat="server" ID="revRequiredDate" ControlToValidate="RequiredDate" ValidationExpression="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$" ErrorMessage="Please enter Date like XX-XX-XXXX" Display="Dynamic" /><br /><br />
        <label>Shipped Date</label><br />
        <asp:TextBox ID="ShippedDate" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="rfvShippedDate" ControlToValidate="ShippedDate" ErrorMessage="Please enter a Shipped Date" Display="Dynamic" ValidationGroup="vCreate"/>
        <asp:RegularExpressionValidator runat="server" ID="revShippedDate" ControlToValidate="ShippedDate" ValidationExpression="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$" ErrorMessage="Please enter Date like XX-XX-XXXX" Display="Dynamic" /><br /><br />
        <label>Ship Via</label><br />
        <asp:DropDownList ID="ShipVia" runat="server" Height="22px" Width="130px">
            <asp:ListItem Text="Speedy Express" Value="1"/>
            <asp:ListItem Text="United Package" Value="2"/>
            <asp:ListItem Text="Federal Shipping" Value="3"/>
        </asp:DropDownList><br /><br />
        <label>Freight</label><br />
        <asp:TextBox ID="Freight" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="rfvFreight" ControlToValidate="Freight" ErrorMessage="Please enter a Freight" ValidationGroup="vCreate" Display="Dynamic"/>
        <asp:RegularExpressionValidator runat="server" ID="refFreight" ControlToValidate="Freight" ValidationExpression="\d+(\.\d{1,5})?" ErrorMessage="Please enter Freight number like (*).XXXXX"/><br /><br />
        <label>Ship Name</label><br />
        <asp:TextBox ID="ShipName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="rfvShipName" ControlToValidate="ShipName" ErrorMessage="Please enter a ShipName" Display="Dynamic" ValidationGroup="vCreate"/><br /><br />
        <label>Ship Address</label><br />
        <asp:TextBox ID="ShipAddress" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="rfvShipAddress" ControlToValidate="ShipAddress" ErrorMessage="Please enter a ShipAddress" Display="Dynamic" ValidationGroup="vCreate"/><br /><br />
        <label>Ship City</label><br />
        <asp:TextBox ID="ShipCity" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="rfvShipCity" ControlToValidate="ShipCity" ErrorMessage="Please enter a ShipCity" Display="Dynamic" ValidationGroup="vCreate"/><br /><br />
        <label>Ship Region</label><br />
        <asp:TextBox ID="ShipRegion" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="rfvShipRegion" ControlToValidate="ShipRegion" ErrorMessage="Please enter a ShipRegion" Display="Dynamic" ValidationGroup="vCreate"/><br /><br />
        <label>Ship Postal Code</label><br />
        <asp:TextBox ID="ShipPostalCode" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="rfvShipPostalCode" ControlToValidate="ShipPostalCode" ErrorMessage="Please enter a ShipPostalCode" Display="Dynamic" ValidationGroup="vCreate"/><br /><br />
        <label>Ship Country</label><br />
        <asp:TextBox ID="ShipCountry" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="rfvShipCountry" ControlToValidate="ShipCountry" ErrorMessage="Please enter a ShipCountry" Display="Dynamic" ValidationGroup="vCreate"/><br />
        <br />
        <asp:Button ID="Button1" class="btn btn-primary" runat="server" OnClick="Button1_Click" Text="Create" ValidationGroup="vCreate" />
        
        </form>

</body>
</html>
