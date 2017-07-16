<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="entertainerinfo.aspx.cs" Inherits="FypWeb.entertainerinfo" EnableEventValidation="false" %>

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
                    <a class="navbar-brand" href="Default.aspx"><span><img alt="logo" src="pictures/logo.png" width="50"  /></span> OnClickEvent </a>
                        </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li ><a href="Welcome.aspx">Home</a></li>
                            <li class="active"> <a href="About.aspx">About</a></li>
                            <li> <a href="contact.aspx">Contact</a></li>
                            <li> <a href="#">Signout</a></li>
                           
                            
                        </ul> 
                    </div> 
                    </div>
 </div>   

    </div>
    <br />
    <br />
    <br />
        <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
         <asp:Repeater id="d1" runat="server"  >
              <ItemTemplate>
<div class="table-responsive">
    <table class="table product-table">
        <!--Table head-->
        <thead>
            <tr>
                <th></th>
                <th>Name</th>
                <th>Contact</th>
                <th>Type</th>
                <th>Price</th>
                
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
                    
                <td ><%#Eval("Name") %> </td>
                <td ><%#Eval("Contact") %></td>
                <td ><%#Eval("Type") %> </td>
                <td><%#Eval("Price") %> </td>
                
              
            </tr>
            </ItemTemplate>
             </asp:Repeater>
            <!--/First row-->
             <tr>
                 
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Visible="false"></asp:TextBox>

                    <asp:TextBox ID="TextBox2" runat="server" Visible="false"></asp:TextBox>
                  <asp:Button ID="Button1" runat="server" Text="Book Your Date" class="btn btn-success" Height="40px" OnClick="Button1_Click"  />
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="400px" OnSelectionChanged="Calendar1_SelectionChanged" >
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
                <td>
                    <h4><strong>Total</strong></h4></td>
                <td>
                    <h4><strong>1200 $</strong></h4></td>
                <td>
                    <asp:Button ID="Btn_AddToCart" runat="server" Text="AddToCart"  CssClass="btn btn-info" OnClick="btn_AddToCart"/>
                    
                </td>
                 <td><asp:Button ID="Btn_Continue" runat="server" Text="Continue Shopping"  CssClass="btn btn-success" OnClick="btn_ContinueShopping"/></td>
            </tr>
                
     </tbody>
        <!--/Table body-->
    </table>s
</div>
      
     <footer style="position:fixed; bottom:0; width:100%">
             <br />
            <div class="container">
                <p>&copy; 2016 OnClickEvent.com &middot; <a href="Welcome.aspx">Home</a> &middot; <a href="About.aspx">About</a>&middot; </p>
            </div>
        </footer>
         </form>
</body>
    <script type="text/javascript">
        var foo;
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

        //document.getElementById("Label1").innerHTML = foo;

        </script>
</html>

