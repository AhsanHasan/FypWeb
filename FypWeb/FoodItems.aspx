﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FoodItems.aspx.cs" Inherits="FypWeb.FoodItems" %>

<!DOCTYPE html>
<html>
  <head>
    <title>Bootstrap Admin Theme v3</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- jQuery UI -->
    <link href="https://code.jquery.com/ui/1.10.3/themes/redmond/jquery-ui.css" rel="stylesheet" media="screen">

    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- styles -->
    <link href="css2/styles.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
  	  <form id="form3" runat="server">
  	<div class="header">
	     <div class="container">
             
	        <div class="row">
	           <div class="col-md-5">
	              <!-- Logo -->
	              <div class="logo">
	                 <h1><a href="index.html">OnCLickEvents Admin Panel</a></h1>
	              </div>
	           </div>
	           
	           <div class="col-md-6">
	              <div class="navbar navbar-inverse" role="banner">
	                  <nav class="collapse navbar-collapse bs-navbar-collapse navbar-right" role="navigation">
	                    <ul class="nav navbar-nav">
	                      
	                    </ul>
	                  </nav>
	              </div>
	           </div>
	        </div>
	     </div>
	</div>

    <div class="page-content">
    	<div class="row">
		  <div class="col-md-2">
		  	<div class="sidebar content-box" style="display: block;">
                <ul class="nav">
                    <!-- Main menu -->
                    <li><a href="AdminPanel.aspx"><i class="glyphicon glyphicon-home"></i> Dashboard</a></li>
                    
                    
                    <li class="submenu">
                         <a href="#">
                            <i class="glyphicon glyphicon-list"></i> Tables
                            <span class="caret pull-right"></span>
                         </a>
                         <!-- Sub menu -->
                         <ul>
                            <li><a href="cust.aspx">Customers</a></li>
                            <li><a href="emp.aspx">Employees</a></li>
                             <li><a href="ent.aspx">Entertainers</a></li>
                             <li><a href="FoodItems.aspx">Food Items</a></li>
                             <li><a href="Venues.aspx">Venues</a></li>
                             <li><a href="VenueSchedule.aspx">Venue Schedule</a></li>
                             

                        </ul>
                    </li>
                </ul>
             </div>
		  </div>
		  <div class="col-md-10">

		  	<div class="row">
  				
  					<div class="content-box-large">
		  				<div class="panel-heading">
							<div class="panel-title">Food Items</div>
							
							
							
									
                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="2px" CellPadding="2" DataKeyNames="foodPackage_ID" DataSourceID="SqlDataSource1" GridLines="Vertical" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" Width="60%" Font-Bold="True" Font-Size="Small" >
                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                <Columns>
                                    <asp:BoundField DataField="foodPackage_ID" HeaderText="foodPackage_ID" InsertVisible="False" ReadOnly="True" SortExpression="foodPackage_ID" />
                                    <asp:TemplateField HeaderText="Pictures" SortExpression="Pictures">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Pictures") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Image ID="Image1" runat="server" Height="83px" ImageUrl='<%# Eval("Pictures") %>' Width="114px" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="PackageID" HeaderText="PackageID" SortExpression="PackageID" />
                                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                    <asp:BoundField DataField="Names" HeaderText="Names" SortExpression="Names" />
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#000065" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:OnClickEventsConnectionString2 %>" DeleteCommand="DELETE FROM [FoodPackages] WHERE [foodPackage_ID] = @original_foodPackage_ID AND [Pictures] = @original_Pictures AND [PackageID] = @original_PackageID AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Names] = @original_Names) OR ([Names] IS NULL AND @original_Names IS NULL))" InsertCommand="INSERT INTO [FoodPackages] ([Pictures], [PackageID], [Price], [Names]) VALUES (@Pictures, @PackageID, @Price, @Names)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [FoodPackages]" UpdateCommand="UPDATE [FoodPackages] SET [Pictures] = @Pictures, [PackageID] = @PackageID, [Price] = @Price, [Names] = @Names WHERE [foodPackage_ID] = @original_foodPackage_ID AND [Pictures] = @original_Pictures AND [PackageID] = @original_PackageID AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Names] = @original_Names) OR ([Names] IS NULL AND @original_Names IS NULL))">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_foodPackage_ID" Type="Int32" />
                                    <asp:Parameter Name="original_Pictures" Type="String" />
                                    <asp:Parameter Name="original_PackageID" Type="Int32" />
                                    <asp:Parameter Name="original_Price" Type="Int32" />
                                    <asp:Parameter Name="original_Names" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Pictures" Type="String" />
                                    <asp:Parameter Name="PackageID" Type="Int32" />
                                    <asp:Parameter Name="Price" Type="Int32" />
                                    <asp:Parameter Name="Names" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Pictures" Type="String" />
                                    <asp:Parameter Name="PackageID" Type="Int32" />
                                    <asp:Parameter Name="Price" Type="Int32" />
                                    <asp:Parameter Name="Names" Type="String" />
                                    <asp:Parameter Name="original_foodPackage_ID" Type="Int32" />
                                    <asp:Parameter Name="original_Pictures" Type="String" />
                                    <asp:Parameter Name="original_PackageID" Type="Int32" />
                                    <asp:Parameter Name="original_Price" Type="Int32" />
                                    <asp:Parameter Name="original_Names" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
							</div>
                          <br />
                          <br />

                           <div class="panel-title"><h3> Add FoodItem</h3></div>
                          <table>
                                  <tr>
                                      
                              

                              <td>Image </td>
                                <td>  <asp:FileUpload ID="f1" runat="server" />
                                    <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" ControlToValidate="f1" ErrorMessage="Please enter values" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                                  
                            </tr>
                              <tr>
                                      <td>PackageID</td>
                                      <td><asp:TextBox ID="pid" runat="server"></asp:TextBox>
                                          <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator16" ControlToValidate="pid" ErrorMessage="Please enter values" ForeColor="Red"></asp:RequiredFieldValidator>
                                      </td>
                                
                                    <td>Price</td>
                                      <td><asp:TextBox ID="pr" runat="server"></asp:TextBox>
                                          <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator2" ControlToValidate="pr" ErrorMessage="Please enter values" ForeColor="Red"></asp:RequiredFieldValidator>
                                      </td>
                                   <td>Names</td>
                                      <td><asp:TextBox ID="Name" runat="server"></asp:TextBox>
                                          <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator3" ControlToValidate="Name" ErrorMessage="Please enter values" ForeColor="Red"></asp:RequiredFieldValidator>
                                      </td>
                                  </tr>

                              <tr>
                                  <td colspan="5" align="center">
                                      <asp:Button ID="b2" runat="server" Text="Upload" OnClick="b2_Click" />
                                  </td>
                                      </tr>
		  					</table>
							
							
							</div>
		  				    
		  				
		  			</div>
  				</div>
  				
  			</div>

  			<div class="row">
  				<div class="col-md-6">
  					
  				</div>
                  </div>
                  </div>
  				


	

    <footer>
         <div class="container">
         
            <div class="copy text-center">
               OnClickEvents <a href="Login.aspx">Website</a>
            </div>
            
         </div>
      </footer>

      <link href="vendors/datatables/dataTables.bootstrap.css" rel="stylesheet" media="screen">

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- jQuery UI -->
    <script src="https://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>

    <script src="vendors/datatables/js/jquery.dataTables.min.js"></script>

    <script src="vendors/datatables/dataTables.bootstrap.js"></script>

    <script src="js2/custom.js"></script>
    <script src="js2/tables.js"></script>
      </form>
  </body>
</html>