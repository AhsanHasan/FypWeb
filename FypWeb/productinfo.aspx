﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productinfo.aspx.cs" Inherits="FypWeb.productinfo" EnableEventValidation="False" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
   
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link href="StyleSheet.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>OnClickEvent</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/custom.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body style="padding: 0px; margin: 0px; background-image:url(pictures/bg3.jpg); font-family: 'Open Sans',sans-serif,arial,helvetica,verdana">
    <form id="form1" runat="server">
        <div>

            <div class="navbar navbar-default navbar-fixed-top navbar-inverse" role="navigation">

                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand " href="Welcome.aspx"><span>
                            <img alt="logo" src="pictures/logo.png" width="50" /></span> OnClickEvent </a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="Foods.aspx">Food</a></li>
                            <li><a href="entertainer.aspx">Entertainers</a></li>
                            <li><a href="ViewCart1.aspx">View Cart</a></li>

                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">My Profile<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="AccountSetting.aspx">Account Setting</a></li>
                                    <%--<li><a href="#" >Logout</a></li>--%>
                                    <li>
                                        <asp:LinkButton ID="LinkBtnlogout" runat="server" ForeColor="Black" OnClick="logout_click">Logout</asp:LinkButton></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <br />
            <br />
            <br />
            <br />

            <asp:Label ID="ErrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
            <asp:Repeater ID="d3" runat="server" OnItemCommand="d3_ItemCommand">
                <ItemTemplate>
                    <div class="table-responsive">
                        <table class="table product-table">
                            <!--Table head-->
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>Name</th>
                                    <th>Address</th>
                                    <th>Contact</th>
                                    <th>Price</th>
                                    <th>Capacity</th>

                                </tr>
                            </thead>
                            <!--/Table head-->

                            <!--Table body-->
                            <tbody>

                                <!--First row-->
                                <tr>
                                    <th scope="col">
                                        <img src='<%#Eval("Picture") %>' height="350" width="450" style="border: solid">
                                    </th>
                                    <td><%#Eval("Name") %></td>
                                    <td><%#Eval("Address") %> </td>
                                    <td><%#Eval("Contact") %></td>
                                    <td>Rs <%#Eval("Price") %> </td>
                                    <td><%#Eval("Capacity") %> </td>
                                    <td></td>

                                </tr>
                </ItemTemplate>
            </asp:Repeater>
            <!--/First row-->
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Visible="false"></asp:TextBox>

                    <asp:TextBox ID="TextBox2" runat="server" Visible="false"></asp:TextBox>
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="400px" OnSelectionChanged="Calendar1_SelectionChanged">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                        <DayStyle Width="14%" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                        <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                        <TodayDayStyle BackColor="#CCCC99" />
                    </asp:Calendar>
                </td>
               <%-- <td>
                    <h4><strong>Total <asp:Label ID="price" runat="server" Text=""></asp:Label></strong></h4>
                </td>--%>
                <td>
                    <h4><strong><%#Eval("Price") %> </strong></h4>
                </td>
                <td><%--<button type="button" class="btn btn-primary">Complete purchase  <i class="fa fa-angle-right right"></i></button>--%></td>
                <td>
                                        <asp:Button ID="Button1" runat="server" Text="Book Your Date" class="btn btn-success" Height="40px" OnClick="Button1_Click" />

                </td>
                <td>
                    <asp:Button ID="Btn_AddToCart" runat="server" Text="AddToCart" CssClass="btn btn-info" OnClick="btn_AddToCart" Visible="false" />

                </td>
                <td>
                   <%-- <asp:Button ID="Btn_Continue" runat="server" Text="Continue Shopping" CssClass="btn btn-success" OnClick="btn_ContinueShopping" OnClientClick="return false" /></td>--%>
                    <a href="Foods.aspx" class="btn btn-success" >Continue Shopping</a>
            </tr>






            </tbody>
                            <!--/Table body-->
            </table>
        </div>



        </div>
    </form>
</body>
<script type="text/javascript">
    var foo;
    var p;
    var n;
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
    foo = getParameterByName('id');
    p = getParameterByName('price');
    n = getParameterByName('name');

    //document.getElementById("Label1").innerHTML = foo;

</script>
</html>

