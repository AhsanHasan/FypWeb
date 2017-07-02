<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Venue.aspx.cs" Inherits="FypWeb.Venue" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server"><meta charset="utf-8"/>
    <link href="StyleSheet.css" rel="stylesheet" />
    <!-- Start WOWSlider.com HEAD section -->
<link rel="stylesheet" type="text/css" href="engine3/style.css" />
<script type="text/javascript" src="engine3/jquery.js"></script>
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
<body style="background-image:url(pictures/bg3.jpg)">
    <form id="form4" runat="server">
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
                                 <li><a href="#">Account Setting</a></li>
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
    <div>
    
        <label class="breadcrumb"> <h2>Select Your Type Here</h2> </label>
<div class="modal fade modal-ku " id="mymodal" role="dialog" data-backdrop="static"> 
    <div class="modal-dialog modal-lg " style="width:100%">    
    <div class="modal-content">
            <div class="modal-header">

            </div>
            <div class="modal-body">
          
     <div class="row">
           <div class="col-lg-5 " style="left:75px">
                            
                        
    <div class="thumbnail">
        <img src="pictures/Baraat.jpg" alt="Lights" style="width:100%"/>
         <div class="caption">
            <div class="dropdown">
  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown"  aria-haspopup="true" aria-expanded="false" id="abc">Marriages</button>
 
  <ul class="dropdown-menu" aria-labelledby="abc">
        <li role="separator" class="divider"></li>
   <li> <a id="mehndiid" class="dropdown-item" href="Mehndi.aspx?eventtype=mehndi&">Mehndi</a></li>
      <li> <a id="baraatid" class="dropdown-item" href="Baraat.aspx?eventtype=Baraat&">Baraat</a></li>
    <li><a id="receptionid" class="dropdown-item"  href="Reception.aspx?eventtype=reception&">Reception</a></li>
          <li role="separator" class="divider"></li>
  </ul>
</div>

        <%--    <input id="wedtype"type="hidden" value="wedding" />--%>
            
        </div>
    </div>
           </div>
       
           <div class="col-lg-5" style="left:70px">
    <div class="thumbnail">
       <img src="pictures/conert.jpg" alt="Lights" style="width:100%"/>
        <div class="caption">
         <div class="dropdown">
  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown"  aria-haspopup="true" aria-expanded="false" id="Button1">Concerts</button>
 
  <ul class="dropdown-menu" aria-labelledby="abc">
        <li role="separator" class="divider"></li>
   <li> <a id="liveid"class="dropdown-item" href="Live.aspx?eventtype=live&">Live Concerts</a></li>
   
  </ul>
</div>
  
    </div>
           </div>
               </div></div>
<div class="row">
           <div class="col-lg-5 "style="left:75px">
    <div class="thumbnail">
      
       <img src="pictures/pp.jpg" alt="Lights" style="width:100%"/>
        <div class="caption">
         <div class="dropdown">
  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown"  aria-haspopup="true" aria-expanded="false" id="Button2">Parties</button>
 
  <ul class="dropdown-menu" aria-labelledby="abc">
        <li role="separator" class="divider"></li>
   <li> <a id="ppartyid"class="dropdown-item" href="PrivateParty.aspx?eventtype=party&">Private Party</a></li>
      <li> <a id="bpartyid"class="dropdown-item" href="BayParty.aspx?eventtype=party&">Beach Party</a></li>
   
  </ul>
</div>
            <input id="wedtyp2"type="hidden" value="party" />
        
        </div>
     
    </div>
           </div>
            <div class="col-lg-5"style="left:70px">
    <div  class="thumbnail">
        <img src="pictures/business.jpg" alt="Lights" style="width:100%"/>
        <div class="caption">
        <div class="dropdown">
  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown"  aria-haspopup="true" aria-expanded="false" id="Button3">Business Meetings</button>
 
  <ul class="dropdown-menu" aria-labelledby="abc">
        <li role="separator" class="divider"></li>
   <li> <a id="meetingid"class="dropdown-item" href="BusinessMeetings.aspx?eventtype=meeting&">Meetings</a></li>
      
   
  </ul>
</div>
            <input id="wedtype3"type="hidden" value="meetings" />
        
        </div>
      
    </div>
                
           </div>
       </div>
                </div>
            <div class="modal-footer">
                   </div>

        </div>
    </div>
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
        $(document).ready(function(){
            $('#mymodal').modal('show');
            $('#mymodal').modal({backdrop:'static',keyboard:false});

            
        });
    </script>

    
    <script type="text/javascript">

        var foo;
        var eventtype;
        

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
        foo = getParameterByName('budget');
        eventtype = getParameterByName('eventype');
        var guest = getParameterByName('guest');

       
        //document.getElementById("Label2").innerHTML = foo;

    </script>
    
    <script type="text/javascript">
        $(document).ready(function () {
            $("#mehndiid").click(function () {

                var cl = $("#mehndiid").attr("href");
                var eventtype = cl + "budget=" + foo;
                $("#mehndiid").attr("href", eventtype);
                
            });
            $("#baraatid").click(function () {

                var cl = $("#baraatid").attr("href");
                var eventtype = cl + "budget=" + foo;
                $("#baraatid").attr("href",eventtype);
                
            });

            $("#receptionid").click(function () {

                var cl = $("#receptionid").attr("href");
                var eventtype = cl + "budget=" + foo;
                $("#receptionid").attr("href", eventtype);

            });

            $("#liveid").click(function () {

                var cl = $("#liveid").attr("href");
                var eventtype = cl + "budget=" + foo;
                $("#liveid").attr("href", eventtype);

            });

            $("#ppartyid").click(function () {

                var cl = $("#ppartyid").attr("href");
                var eventtype = cl + "budget=" + foo;
                $("#ppartyid").attr("href", eventtype);

            });
            $("#bpartyid").click(function () {

                var cl = $("#bpartyid").attr("href");
                var eventtype = cl + "budget=" + foo;
                $("#bpartyid").attr("href", eventtype);

            });
            $("#meetingid").click(function () {

                var cl = $("#meetingid").attr("href");
                var eventtype = cl + "budget=" + foo;
                $("#meetingid").attr("href", eventtype);

            });
        });
    </script>
    
</html>
