<%@ Page Language="C#" AutoEventWireup="true" Inherits="Mehndi" Codebehind="Mehndi.aspx.cs" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server"><meta charset="utf-8"/>
    <link href="StyleSheet.css" rel="stylesheet" />
    <!-- Start WOWSlider.com HEAD section -->
<link rel="stylesheet" type="text/css" href="engine7/style.css" />
<script type="text/javascript" src="engine7/jquery.js"></script>
<!-- End WOWSlider.com HEAD section -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>OnClickEvent</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
 <body style="background-image:url(pictures/bg3.jpg)">
    <form id="form4" runat="server">
        <div class="navbar navbar-default navbar-fixed-top navbar-inverse" role="navigation">

            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand " href="Welcome.aspx"><span><img alt="logo" src="pictures/logo.png" width="50" /></span> OnClickEvent </a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="Welcome.aspx">Home</a></li>
                        <li> <a href="About.aspx">About</a></li>
                        <li> <a href="contact.aspx">Contact</a></li>

                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">My Profile<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Account Setting</a></li>
                                <%--
                                <li><a href="#">Logout</a></li>--%>
                                <li> <asp:LinkButton ID="LinkBtnlogout" runat="server" ForeColor="Black" OnClick="logout_click">Logout</asp:LinkButton></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <br />
        <br />
        <div id="myModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Welcome To The New World</h4>
                    </div>
                    <div class="modal-body">
                        <p> <strong><h3>Wait Is Now Over!</h3></strong><h4> We brought you something which we promised you.. </h4><br /> 
                        You are about to enter in that area of the world where you will see everything that will be according to your desired budget..</p>

                            
                        <!--<img src="pictures/logo.png" style="width:30%;height:30%;position:center" />-->
                        
                            <a href="Packages.aspx?eventtype=Mehndi" type="submit" class="btn btn-primary">Enter</a>
                       
                        </div>
                    </div>
                </div>
            </div>
                </form>        
        </body>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#myModal").modal('show');
	});
     
   </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#reception").click(function () {
                window.location = "Reception.aspx?budget=" + foo;

            });
        });
    </script>
   
    <script type="text/javascript">
        $(document).ready(function () {
            $("#Baraat").click(function () {
                window.location = "Baraat.aspx?budget=" + foo;

            });
        });
    </script>
     <script type="text/javascript">
         $(document).ready(function () {
             $("#ac").click(function () {

                 var cl = $("#ac").attr("href");
                 var eventtype = cl + "budget=" + foo;
                 $("#ac").attr("href", eventtype);
             });
         });

        </script>        
   
     </html>