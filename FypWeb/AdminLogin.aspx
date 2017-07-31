<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="FypWeb.AdminLogin" %>

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
    
  <body class="login-bg">
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
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">My Account <b class="caret"></b></a>
                                        <ul class="dropdown-menu animated fadeInUp">
                                            <li><a href="AdminPanel.aspx">Profile</a></li>
                                            <li><a href="AdminLogin.aspx">Logout</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>

          <br />
          <br />


	<div class="page-content container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-wrapper">
			        <div class="box">
			            <div class="content-wrap">
			                <h6>Sign In</h6>
			                <div class="social">
	                            
	                           
	                        </div>
			                <asp:TextBox ID="textbox1" runat="server" class="form-control" placeholder="Username"></asp:TextBox>
			                <asp:TextBox ID="textbox2" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
			                <div class="action">
			                    <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-success" Width="120" OnClick="Button1_Click"  />
			                </div>                
			            </div>
			        </div>

			       
			    </div>
			</div>
		</div>
	</div>


</form>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/custom.js"></script>
  </body>
</html>
