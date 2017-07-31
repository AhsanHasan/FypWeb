<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Packages.aspx.cs" Inherits="FypWeb.Packages" EnableEventValidation="false" validateRequest="false" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server"><meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>OnClickEvent</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/custom.css" rel="stylesheet" />
    <link href="StyleSheet.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body style="background-image:url(pictures/bg3.jpg)">
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
             <a class="navbar-brand " href="#"><span><img alt="logo" src="pictures/logo.png" width="50"  /></span> OnClickEvent </a>
                        </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            
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
      <img src="pictures/r.jpg" alt="event" style="height:350px" width="100%"/>
      
    </div>
    <div class="item">
      <img src="pictures/t.jpg" alt="Event" style="height:350px" width="100%"/>
      </div>
      <div class="item">
      <img src="pictures/y.jpg" alt="Event" style="height:350px" width="100%"/>
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
        <br />
        <br />

         <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Would to like to go Nearest Venues</h4>
        </div>
        <div class="modal-body">
        <t><button type="button" class="btn btn-danger" id="Button1">get your location</button></t>
            
        </div>
        <div class="modal-footer">
        
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
        </div>


</div>


       <div id="dvm">
                  <div class="col-lg-2"> 
             </div>

       </div>
        <label id="Label2"></label>
       <div class="col-lg-10">
      
          <asp:Repeater ID="d3" runat="server">
            <ItemTemplate>
             
                <div class="col-xs-4">
                    <table>
                       
                         <tr><td> <td><th> <a href="Packageinfo.aspx?id=<%#Eval("VenueID") %>&price=<%#Eval("Price") %>&name=<%#Eval("Name") %>"> <img class="thumbnail zoom" src='<%#Eval("Picture") %>' height="200" width="300" style="border: solid" /></a></th></td></td></tr>
                        <tr><td><td><th>Name: <%#Eval("Name") %></th></td></td></tr>
                        <tr><td><td><th>Contact: <%#Eval("Price") %> </th></td></td></tr>
                        <tr><td><td><th>Address: <%#Eval("Address") %> </th></td></td></tr>
                         <tr><td><td><th>Contact: <%#Eval("Contact") %> </th></td></td></tr>
                        
                       
                       
                         </table>
                    <br />
                    <br />
                          </div>
                     </ItemTemplate>
                        </asp:Repeater>
       </div>   
        </div>
 
    </form>
    </body>
        
       <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
   
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            // var x = document.getElementById("demo");
            $('#myModal').modal('show');
            $('#Button1').click(function () {

                function getLocation() {
                    if (navigator.geolocation) {
                        navigator.geolocation.getCurrentPosition(showPosition);
                    } else {
                        alert("Geolocation is not supported by this browser.");
                    }
                }

                function showPosition(position) {
                    var x = position.coords.latitude;
                    var y = position.coords.longitude;

                    window.location = "Location.aspx?latitude=" + x + "&longitude=" + y;

                }
                getLocation();

            });
        });
  </script>
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
</html>