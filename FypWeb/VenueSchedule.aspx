﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VenueSchedule.aspx.cs" Inherits="FypWeb.VenueSchedule" %>

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
  	  <form id="form1" runat="server">
  	<div class="header">
	     <div class="container">
          
	        <div class="row">
	           <div class="col-md-5">
	              <!-- Logo -->
	              <div class="logo">
	                 <h1><a href="index.html">Admin Panel</a></h1>
	              </div>
	           </div>
	           
	           <div class="col-md-6">
	              <div class="navbar navbar-inverse" role="banner">
	                  <nav class="collapse navbar-collapse bs-navbar-collapse navbar-right" role="navigation">
	                    
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
                             <li><a href="en.aspx">Entertainers</a></li>
                             <li><a href="FoodItems.aspx">FOod Items</a></li>
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
							<div class="panel-title"><h3>Venues Schedule</h3></div>
							
							
							
									
							<br />
                              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical">
                                  <AlternatingRowStyle BackColor="#DCDCDC" />
                                  <Columns>
                                      <asp:BoundField DataField="VenueID" HeaderText="VenueID" SortExpression="VenueID" />
                                      <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                      <asp:BoundField DataField="TimeSlot" HeaderText="TimeSlot" SortExpression="TimeSlot" />
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnClickEventsConnectionString2 %>" SelectCommand="SELECT * FROM [VenueSchedule]"></asp:SqlDataSource>
                              <br />
                              <br />

							
							<div class="panel-title"><h3> Add Schedule</h3></div>
									
		  					<table>
                                  <tr>
                                      <td>Date</td>
                                      <td><asp:TextBox ID="t1" runat="server"></asp:TextBox>
                                          <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator16" ControlToValidate="t1" ErrorMessage="Please enter values" ForeColor="Red"></asp:RequiredFieldValidator>
                                      </td>
                                  </tr>
                                   <tr>
                                      <td>Time Slot</td>
                                      <td><asp:TextBox ID="t2" runat="server"></asp:TextBox>
                                          <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" ControlToValidate="t2" ErrorMessage="Please enter values" ForeColor="Red"></asp:RequiredFieldValidator>
                                      </td>
                                  </tr>
                                  <tr>
                                  <td colspan="2" align="center">
                                      <asp:Button ID="b1" runat="server" Text="Upload" OnClick="b1_Click" />
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
               OnClickEvents <a href='#'>Website</a>
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