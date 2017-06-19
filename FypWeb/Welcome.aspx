<%@ Page Language="C#" AutoEventWireup="true" Inherits="_Default" Codebehind="Welcome.aspx.cs" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"><meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>OnClickEvent</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/login.css" rel="stylesheet" />


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div class="navbar navbar-default navbar-fixed-top navbar-inverse"role="navigation" >

                <div class="container">
                <div class="navbar-header" >
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                     </button>
                    <a class="navbar-brand " href="Welcome.aspx"><span><img alt="logo" src="pictures/logo.png" width="50"  /></span> OnClickEvent </a>
                        </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="Welcome.aspx">Home</a></li>
                            <li> <a href="About.aspx">About</a></li>
                            <li> <a href="contact.aspx">Contact</a></li>
                             <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Login</b> <span class="caret"></span></a>
			<ul id="login-dp" class="dropdown-menu">
				<li>
					 <div class="row">
							<div class="col-md-12">
								Login via
								<div class="social-buttons">
									<a href="www.facebook.com/ahsan.hasan18" class="btn btn-fb"><i class="fa fa-facebook"></i> Facebook</a>
			
								</div>
                                or
								 <form class="form" role="form" method="post" action="login" accept-charset="UTF-8" id="login-nav">
										<div class="form-group">
											 <label class="sr-only" for="exampleInputEmail2">UserName</label>
											 <asp:TextBox ID="l1" runat="server" class="form-control" placeholder="Username"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" id="requsername" ControlToValidate="l1" ErrorMessage="Please enter username" ForeColor="Red"></asp:RequiredFieldValidator>
			                
										</div>
										<div class="form-group">
											 <label class="sr-only" for="exampleInputPassword2">Password</label>
											 <asp:TextBox ID="l2" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                                              <asp:RequiredFieldValidator runat="server" id="reqpw" ControlToValidate="l2" ErrorMessage="Please enter password" ForeColor="Red"></asp:RequiredFieldValidator>
										</div>
										<div class="form-group">
											 <asp:Button ID="login_btn" runat="server" Text="Login" OnClick="login_btn_Click" />
										</div>
										<div class="checkbox">
											
										</div>
								 </form>
							</div>
							<div class="bottom text-center">
								New here ? <a href="Signup.aspx"><b>Join Us</b></a>
							</div>
					 </div>
				</li>
			</ul>
        </li>
                            
                        </ul> 
                    </div> 
                    </div>
 </div>   




            <!---Carousel-->


            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="pictures/abcc.jpg" alt="event"/>
      <div class="carousel-caption">
        <h1>Provide Wide Range Of Fooods</h1>
          <p>Delicious Food of town</p>
          <asp:Label ID="errorMessageLabel" runat="server" Text=""></asp:Label>
          <p><a class="btn btn-lg btn-primary" href="Signup.aspx" role="banner" style="width:150px">Signup Now</a> <a class="btn btn-lg btn-primary" href="visitors.aspx" role="banner" style="width:180px">Visitor's Lounge</a></p>
      </div>
    </div>
    <div class="item">
      <img src="pictures/cup.jpg" alt="Event"/>
      <div class="carousel-caption">
          <h1>Ultimate Decoration</h1>
            <p>View you never seen!</p>
          <p><a class="btn btn-lg btn-primary" href="Signup.aspx" role="banner">Signup Now</a> <a class="btn btn-lg btn-primary" href="visitors.aspx" role="banner" style="width:150px">Visitor's Lounge</a></p>
      
      </div>
    </div>
      <div class="item">
      <img src="pictures/ems.jpg" alt="Event"/>
      <div class="carousel-caption">
        <h1>Best Lighting and DJ's</h1>
          <p >Feel The Goosebumps</p>
          <p><a class="btn btn-lg btn-primary" href="Signup.aspx" role="banner">Signup Now</a> <a class="btn btn-lg btn-primary" href="visitors.aspx" role="banner">Visitor's Lounge</a></p>
      
      </div>
    </div>
    
    ...
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
            <!---Carousel-->

        </div>   
       
        <footer>

            <br />
            <div class="container">
                <p>&copy; 2016 OnClickEvent.com &middot; <a href="Welcome.aspx">Home</a> &middot; <a href="About.aspx">About</a>&middot; <a href="Login.aspx">Signin</a>  </p>
            </div>
        </footer>
        
    </form>
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    
</body>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="bootstrap/js/jquery-3.2.1.js"></script>
        <script src="js/bootstrap.min.js"></script>
</html>
