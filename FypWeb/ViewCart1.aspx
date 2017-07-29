<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCart1.aspx.cs" Inherits="FypWeb.ViewCart1" EnableEventValidation="false" %>

<!DOCTYPE html>

<html  xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server"><meta charset="utf-8"/> 
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <link href="StyleSheet.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>OnClickEvent</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/custom.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
</head>
<body style="padding:0px; margin:0px; background-color:#fff;font-family:'Open Sans',sans-serif,arial,helvetica,verdana">
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
        <br />
        <asp:DataList ID="d1" runat="server">
              <ItemTemplate>
<div class="table-responsive">
    <table class="table product-table">
        <!--Table head-->
        <thead>
            <tr>
                <th></th>
                <th>Name</th>
                <th>Address</th>
                <th>Price</th>
                
                
            </tr>
        </thead>
        <!--/Table head-->

        <!--Table body-->
        <tbody>

            <!--First row-->
            <tr>
                <td>
                    <img src='<%#Eval("Picture") %>' height="200" width="200" style="border: solid">
                </td>
                
                    
                <td ><%#Eval("Name") %> </td>
                <td ><%#Eval("Address") %></td>
                <td ><%#Eval("Price") %> </td>
                <td> <asp:LinkButton ID="Venue_Del" runat="server" OnClick="venue_delete">Delete</asp:LinkButton></td>
                
                
              
            </tr>
           
           

           

           
        </tbody>
        <!--/Table body-->
    </table>
</div>
                  </ItemTemplate>
             </asp:DataList> 
        <br />

        <asp:DataList ID="d3" runat="server">
              <ItemTemplate>
        <div class="table-responsive">
         <table class="table product-table">
        <!--Table head-->
            <thead>
            <tr>
                <th></th>
                <th>Name</th>
                <th>Price</th>
            </tr>
        </thead>
        <!--/Table head-->

        <!--Table body-->
        <tbody>

            <!--First row-->
            <tr>
                <td>
                    <img src='<%#Eval("Picture") %>' height="200" width="200" style="border: solid">
                </td>
                
                    
                <td ><%#Eval("Names") %> </td>
                <td ><%#Eval("Price") %> </td>
               <%-- <td> <%#Eval("foodPackage_ID") %> </td>--%>
                <td> <asp:LinkButton ID="food_Del" runat="server" OnClick="food_delete">Delete</asp:LinkButton></td>
                
               </tr>
           
           </tbody>
        <!--/Table body-->
    </table>
</div>
                  </ItemTemplate>
             </asp:DataList> 

        <br />
        <asp:DataList ID="d2" runat="server">
              <ItemTemplate>
        <div class="table-responsive">
         <table class="table product-table">
        <!--Table head-->
            <thead>
            <tr>
                <th></th>
                <th>Name</th>
                <th>Price</th>
            </tr>
        </thead>
        <!--/Table head-->

        <!--Table body-->
        <tbody>

            <!--First row-->
            <tr>
                <td>
                    <img src='<%#Eval("Picture") %>' height="200" width="200" style="border: solid">
                </td>
                
                    
                <td ><%#Eval("Name") %> </td>
                <td ><%#Eval("Price") %> </td>
            </tr>
           
           </tbody>
        <!--/Table body-->
    </table>
</div>
                  </ItemTemplate>
             </asp:DataList>
        <div class="col-md-6">
            <p style="font-size:20px" class="text-danger"> Total:  <asp:Label ID="total_Cost" runat="server" Text=""></asp:Label> </p>
        </div>
        <div class="col-md-6">
          <span class="pull-right"> <a href="CheckOutForm.aspx" type="button" class="btn btn-success" id="proceed">Proceed</a></span>
        </div>
        <br />
        <br />
        
    <%-- <footer style="position:fixed; bottom:0%; margin-bottom:0%;">
             <br />
            <div class="container">
                <p>&copy; 2016 OnClickEvent.com &middot; <a href="Welcome.aspx">Home</a> &middot; <a href="About.aspx">About</a>&middot; </p>
            </div>
        </footer>--%>
        </div>

    </form>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
