﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VFoods.aspx.cs" Inherits="FypWeb.VFoods" %>

<!DOCTYPE html>

html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server"><meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="StyleSheet.css" rel="stylesheet" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *afteOnClickEvent</title>
<link href="StyleSheet.css" rel="stylesheet" />
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
                            <li ><a href="Welcome.aspx">Home</a></li>
                            <li> <a href="About.aspx">About</a></li>
                            <li> <a href="contact.aspx">Contact</a></li>
                           
                            
                           
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
      <img src="pictures/chicken-biryani.jpg" alt="event" style="height:350px" width="100%"/>
      
    </div>
    <div class="item">
      <img src="pictures/food8_3.jpg" alt="Event" style="height:350px" width="100%"/>
      </div>
      <div class="item">
      <img src="pictures/food9_2.jpg" alt="Event" style="height:350px" width="100%"/>
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
        
           

  <div id="dvm">
                  <div class="col-lg-3"> 
             </div>

       </div>
             <label id="Label2"></label>
       <div class="col-lg-10">
         
      
            
            <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource1">

                <ItemTemplate>
               <div class="col-xs-4">
                    <table>
                        
                       <tr><td><th><img src='<%#Eval("Picture") %>' height="200" width="200" style="border: solid" /></th></td></tr>
                       <tr><td><th> <%# Eval("ItemName") %></th></td></tr>
                        
                        
                         <tr>
                             <tr></tr>
                             <td>&nbsp;</td>   
                            </tr>
                         <br />
                      </table>
                    </div>
                      
                     </ItemTemplate>
                     </asp:Repeater>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnClickEventsConnectionString2 %>" SelectCommand="SELECT * FROM [FoodItems]"></asp:SqlDataSource>
            
           </div>
                   
            
            
            
        
    </form>
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
        <script type="text/javascript">
            var val;
            $(document).ready(function () {
                $("#fooddiv").click(function () {
                    val = ("#ID").val();
                    alert(val);
                });
            });
        </script>
</body>
</html>