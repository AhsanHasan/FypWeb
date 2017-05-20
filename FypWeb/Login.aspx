<%@ Page Language="C#" AutoEventWireup="true" Inherits="Login" Codebehind="Login.aspx.cs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server"><meta charset="utf-8"/>
    <script type="text/javascript">
        function DisableBackButton() {
            window.history.forward()
        }
        DisableBackButton();
        window.onload = DisableBackButton;
        window.onpageshow = function (evt) { if (evt.pressisted) DisableBackButton() }
        window.onunload = function(){void (0)}
    </script>

    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <link href="css/custom.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>OnClickEvent</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <a href="Recording.aspx">Recording.aspx</a>
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body style="background-image:url(pictures/bg.jpg)">
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
                             <li><a href="About.aspx">About</a></li>
                            <li> <a href="contact.aspx">Contact</a></li>
                            <li class="active"><a href="Login.aspx">Login</a></li>
                            
                        </ul> 
                    </div> 
                    </div>
 </div>   
        </div>
        
  <img src="pictures/logo.png" alt="logo" style="vertical-align:central"/>
        <div class="center">

            <label class="col-xs-11"> <h4>Username</h4></label>
          <div class="col-xs-11">
              <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Username"></asp:TextBox>
              <asp:RequiredFieldValidator runat="server" id="requsername" ControlToValidate="TextBox1" ErrorMessage="Enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
          </div>
           
           <label class="col-xs-11"> <h4>Password</h4></label>
          <div class="col-xs-11">
              <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
              <asp:RequiredFieldValidator runat="server" id="reqpw" ControlToValidate="TextBox2" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
          </div>
             <div class="col-xs-11 verticalgap">
                <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-success" Width="120" OnClick="Button1_Click"  />
                <br />
                  <asp:Label ID="wronglbl" runat="server" Text="" ForeColor="Red"></asp:Label>
                  </div>
            
                 </div>  
        <br />
        <br />

       

           <footer>
               <br />
            <div class="container">
                <p>&copy; 2016 OnClickEvent.com &middot; <a href="Welcome.aspx">Home</a> &middot; <a href="About.aspx">About</a>&middot; <a href="Login.aspx">Signin</a>  </p>
            </div>
        </footer>
 </form>
    
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
    </html>