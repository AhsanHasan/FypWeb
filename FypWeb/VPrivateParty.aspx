<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VPrivateParty.aspx.cs" Inherits="FypWeb.VPrivateParty" %>

<!DOCTYPE html>

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
    <link href="StyleSheet.css" rel="stylesheet" />
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
             <a class="navbar-brand " href="#"><span><img alt="logo" src="pictures/logo.png" width="50"  /></span> OnClickEvent </a>
                        </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                           
                            
                           
                        </ul> 
                    </div> 
                    </div>
                </div>

            
            <div style="height:160px;width:100%">
                <div style="height:160px; width:20%;background-color:deepskyblue; float:left"></div>
                <div style="height:160px; width:80%; float:left; background-image:url(pictures/bluebg.jpg)"> 
            <br />        <h1 style="color:black">Go with your Choices </h1>
                    <h4 style="color:black">We meet your Requirement with us !</h4>
                </div>
            </div>
            
        </div>
           
        <div>
            <br />
            <br />
             <div class="row">
       <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6"style="left:150px">
      
       <a href="VEntertainers.aspx?eventtype=baraat&"><img src="pictures/entlogo.jpg" class="img-circle"width="304" height="255"/> </a>
        <br />
           <div style="height:50px"></div>
           <div style="background-color:#f2eaf2;border-color:black;height:250px;">
            <br />
            <h3 style="text-align:center;color:deepskyblue;stroke:black"> Entertainer Picker </h3>
            <p style="text-align:center"> We are having best entertainer of Town with the best prices. Make your event memorable by picking atleast one entertainer</p>
        </div>
           
        </div>  
   <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6"style="float:left; left:150px">
            
            
      <a id="ac" href="VVenue.aspx?eventtype=baraat&"> <img src="pictures/venue_logo.jpg" class="img-circle";alt="Lights" width="304" height="255""/></a>
         <div style="height:50px"></div>
           <div style="background-color:#f2eaf2;border-color:black;height:250px;">
            <br />
            <h3 style="text-align:center;color:deepskyblue;stroke:black"> Venue Picker </h3>
            <p style="text-align:center"> We are having best venues of Town with the best prices. Make your event memorable by picking one of the best venues</p>
        </div>
        
        </div>
               <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6"style="float:left; left:150px">
                 <div class="circleBase type1">
       <a href="VFoods.aspx?eventtype=baraat&"> <img src="pictures/foodimage.png" style="border-color:black;" class="img-circle";alt="" width="304" height="255""/></a>
                </div>
        <div style="height:50px"></div>
           <div style="background-color:#f2eaf2;border-color:black;height:250px;">
            <br />
            <h3 style="text-align:center;color:deepskyblue;stroke:black"> Food Picker </h3>
            <p style="text-align:center"> We are having best food deals of the Town with the best prices. Make your event memorable by picking delicious food deal</p>
        </div>
        
        </div>
            <input id="wedtype3"type="hidden" value="meetings" />
                 <input id="wedtyp2"type="hidden" value="party" />
     
     
    </div>
    
    </div>
                
         
 <br />
        <br />  
     

          

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
            $("#Mehndi").click(function () {
                window.location = "Mehndi.aspx?budget=" + foo;
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