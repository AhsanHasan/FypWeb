<%@ Page Language="C#" AutoEventWireup="true" Inherits="RealityShow" Codebehind="RealityShow.aspx.cs" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server"><meta charset="utf-8"/>
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
                    <a class="navbar-brand" href="Default.aspx"><span><img alt="logo" src="pictures/logo.png" width="50"  /></span> OnClickEvent </a>
                        </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li ><a href="Welcome.aspx">Home</a></li>
                            <li > <a href="About.aspx">About</a></li>
                            <li> <a href="#">Contact</a></li>
                            <li><a href="Login.aspx">Login</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Event Type<b class="caret"></b></a>
                            <ul class="dropdown-menu"> 
                                <li class="dropdown-header">Concert</li>
                                <li role="separator" class="divider"></li>
                                <li><a href="Live.aspx">Live </a></li>
                                <li><a href="Recording.aspx">Recordings</a></li>
                                <li><a href="RealityShow.aspx">Reality shows</a></li>

                            </ul>
                            </li>
                        </ul> 
                    </div> 
                    </div>
                </div>
        </div>
         <br />
        <br />
        

        <div class="container">
        <div class="row">
            <br />
        <div class="col-lg-4"> <img class="img-square" src="pictures/real.jpg" alt="food" height="200" width="250"/>
            

                 </div>
            </div>
            </div> 
        
         <footer>
          
             <br />

            <div class="container" >
                <p>&copy; 2016 OnClickEvent.com &middot; <a href="Welcome.aspx">Home</a> &middot; <a href="#">About</a>&middot; <a href="Login.aspx">Login</a>  </p>
            </div>
        </footer>
    </form>
    
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
    </html>