<%@ Page Language="C#" AutoEventWireup="true" Inherits="BayParty" Codebehind="BayParty.aspx.cs" %>

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
<body>
    <form id="form1" runat="server">
        <div class="page-header">
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
                            <li ><a href="Welcome.aspx">Home</a></li>
                            <li> <a href="About.aspx">About</a></li>
                            <li> <a href="contact.aspx">Contact</a></li>
                            
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">My Profile<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                 <li><a href="AccountSetting.aspx">Account Setting</a></li>
                                 <%--<li><a href="#" >Logout</a></li>--%>
                               <li> <asp:LinkButton ID="LinkBtnlogout" runat="server" ForeColor="Black" OnClick="logout_click">Logout</asp:LinkButton></li>
                        </ul> 
                                </li>
                        </ul> 
                    </div> 
                    </div>
                </div>
            <br />
            <br />
  <h1><b>Our Ranges !!</b><small></small></h1>
</div>
        <div style="height:80%; width:100%; background-color:skyblue" >
            <br />
            <br />
            <br />
            
             <div class="row">
           <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6 " style="left:10px; ">
                                     
    <div class="thumbnail" style="border:double">
        <a href="Packages.aspx?eventtype=party&"><img src="pictures/cat-theme.jpg" alt="Lights" style="min-height:350px; height:350px"/></a>
         <div class="caption">

 
  

        <%--    <input id="wedtype"type="hidden" value="wedding" />--%>
            
      
    </div>
        </div>
           </div>
       
           <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6" style="left:10px">
    <div class="thumbnail" style="border:double">
       <a href="entertainer.aspx?eventtype=party&"><img src="pictures/cat-dec.jpg" alt="Lights" style="min-height:350px; height:350px"/></a>
        <div class="caption">
       
 
  
</div>
  
    </div>
           
               </div>
           <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6 "style="left:10px">
    <div class="thumbnail" style="border:double">
      
      <a id="ac" href="product.aspx?eventtype=party&"> <img src="pictures/cat-venue.jpg" alt="Lights" style="min-height:350px; height:350px"/></a>
        <div class="caption">
       
 
  <ul class="dropdown-menu" aria-labelledby="abc">
        
  </ul>

            <input id="wedtyp2"type="hidden" value="party" />
        
        </div>
     
    </div>
           </div>
            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6"style="left:10px">
    <div  class="thumbnail" style="border:double">
       <a href="Foods.aspx?eventtype=party&"> <img src="pictures/cat-fd.jpg" alt="Lights" style="min-height:350px; height:350px"/></a>
        <div class="caption">
        
 
  
</div>
            <input id="wedtype3"type="hidden" value="meetings" />
        
     
      
    </div>
                
           </div>
       </div>

        </div>
        <div class="row" style="background-color:whitesmoke">
           <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6 " style="left:10px">
            
                  <h1 style="color:blue">Entertainer</h1>
               <p>Call the famous Vocals and Entertainer of town </p>
    </div>
            
           <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6 " style="left:10px">
            
                  <h1 style="color:blue">Desireable Themes</h1>
               <p>Get the trendy and your favourite theme to mix with your Venue</p>
    </div>
             <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6 " style="left:10px">
            
                  <h1 style="color:blue">Our Venues</h1>
               <p>Give you opportunity to Reserve any Event of your type</p>
    </div> <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6 " style="left:10px">
            
                  <h1 style="color:blue">Our Food Ranges</h1>
               <p>Providing you the best Food in town! With Affordable Packages</p>
    </div>
          </div>
      </form>
        
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
     <!--<script src="js/JavaScript1.js"></script>-->
    <script type="text/javascript">


        function getParameterByName(name, url) {        // This function gets the budget value from Url
            if (!url) {
                url = window.location.href;
            }
            name = name.replace(/[\[\]]/g, "\\$&");
            var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
                results = regex.exec(url);
            if (!results) return null;
            if (!results[2]) return '';
            return decodeURIComponent(results[2].replace(/\+/g, " "));
        }
        var foo = getParameterByName('budget');
        var type = getParameterByName('eventtype');
        document.getElementById("Label2").innerHTML = foo;

    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#PParty").click(function () {
                window.location = "PrivateParty.aspx?budget=" + foo;

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