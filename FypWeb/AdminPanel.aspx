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
      <style type="text/css">
          .auto-style1 {
              margin-top: 0;
              margin-bottom: 0;
              font-size: 16px;
              color: inherit;
              text-decoration: underline;
          }
      </style>
  </head>
  <body>
  	  <form id="form1" runat="server">
  	<div class="header">
	     <div class="container">
             
	        <div class="row">
	           <div class="col-md-5">
	              <div class="logo">
	              <!-- Logo -->
	                 <h1><a href="AdminPanel.aspx">Admin Panel</a></h1>
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
		  		<div class="col-md-6">
		  			<div class="content-box-large" style="width:800px;height:400px">
		  				<div class="panel-heading">
							<div class="auto-style1">FeedBacks By Customer and Visitors </div>
                             
							
							<div class="panel-options">
								<a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
								<a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
							</div>
                          </div>  
                          
		  				<div class="panel-body ">
		  					<br />
                            <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataSourceID="SqlDataSource1" Width="581px">
                                <EditItemTemplate>
                                    Name:
                                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                    <br />
                                    email:
                                    <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                                    <br />
                                    feedback:
                                    <asp:TextBox ID="feedbackTextBox" runat="server" Text='<%# Bind("feedback") %>' />
                                    <br />
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    Name:
                                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                    <br />
                                    email:
                                    <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                                    <br />
                                    feedback:
                                    <asp:TextBox ID="feedbackTextBox" runat="server" Text='<%# Bind("feedback") %>' />
                                    <br />
                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                                    <hr />Feedback:<br />&nbsp;<asp:Label ID="feedbackLabel" runat="server" style="font-style: italic; color: #FF33CC;" Text='<%# Bind("feedback") %>' />
                                    <br />
                                    <hr />
                                </ItemTemplate>
                            </asp:FormView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnClickEventsConnectionString2 %>" SelectCommand="SELECT [Name], [email], [feedback] FROM [Contact] ORDER BY [ID] DESC"></asp:SqlDataSource>
                            <br />
                            <br />
                            <br />
                              
		  				</div>
                           
						</div>
		  			
		  		</div>
                  

		  		

		  	
		  </div>

  			<div class="row">
  				<div class="col-md-6">
  					
  				</div>
                  </div>
                  </div>
  				

                  </div>
	
             <br />
             <br />
             
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