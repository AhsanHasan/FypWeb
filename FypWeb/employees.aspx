<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="employees.aspx.cs" Inherits="FypWeb.employees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Employee<br />
        <br />
        <br />
        <br />
    
    </div>
        <br />
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" CellPadding="4" DataKeyNames="EmployeeID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
             <AlternatingRowStyle BackColor="White" />
             <Columns>
                 <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" InsertVisible="False" ReadOnly="True" SortExpression="EmployeeID" />
                 <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                 <asp:BoundField DataField="Dob" HeaderText="Dob" SortExpression="Dob" />
                 <asp:BoundField DataField="Cnic" HeaderText="Cnic" SortExpression="Cnic" />
                 <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                 <asp:BoundField DataField="BankAccount" HeaderText="BankAccount" SortExpression="BankAccount" />
                 <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
                 <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
             </Columns>
             <EditRowStyle BackColor="#2461BF" />
             <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
             <RowStyle BackColor="#EFF3FB" />
             <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
             <SortedAscendingCellStyle BackColor="#F5F7FB" />
             <SortedAscendingHeaderStyle BackColor="#6D95E1" />
             <SortedDescendingCellStyle BackColor="#E9EBEF" />
             <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnClickEventsConnectionString %>" SelectCommand="SELECT * FROM [Employee]"></asp:SqlDataSource>
    </form>
</body>
</html>
