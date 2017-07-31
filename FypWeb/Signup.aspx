<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="FypWeb.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server"><meta charset="utf-8"/>
    <link href="StyleSheet.css" rel="stylesheet" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <link href="css/custom.css" rel="stylesheet" />
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
                            <li><a href="Welcome.aspx">Home</a></li>
                            <li> <a href="About.aspx">About</a></li>
                            <li> <a href="Contact.aspx">Contact</a></li>
                            
                        </ul> 
                    </div> 
                    </div>
 </div>   
        <div class="center">
            <label class="col-xs-11"> <b>Name</b></label>
          <div class="col-xs-11">
              <asp:TextBox ID="C1" runat="server" class="form-control" placeholder=""></asp:TextBox>
               <asp:RequiredFieldValidator runat="server" id="reqname" ControlToValidate="C1" ErrorMessage="Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
          </div>
           
           <%--<label class="col-xs-11"> <b>Address</b></label>
          <div class="col-xs-11">
              <asp:TextBox ID="C2" runat="server" placeholder=""></asp:TextBox>
          </div>--%>
            
            <label class="col-xs-11"> <b>D.O.B</b></label>
          <div class="col-xs-11">
              <asp:TextBox ID="C3" runat="server" class="form-control" placeholder="" TextMode="Date" Width="250px"></asp:TextBox><br />
               <asp:RequiredFieldValidator runat="server" id="reqdob" ControlToValidate="C3" ErrorMessage="Date Of Birth Required" ForeColor="Red"></asp:RequiredFieldValidator>
          </div>
            
           <%-- <label class="col-xs-11"> <b>Account No.</b></label>
          <div class="col-xs-11">
              <asp:TextBox ID="C4" runat="server" class="form-control" placeholder=""></asp:TextBox>
          </div>--%>
            
            <%--<label class="col-xs-11"> <b>CNIC No.</b></label>
          <div class="col-xs-11">
              <asp:TextBox ID="C5" runat="server" class="form-control" placeholder="xxxxx-xxxxxxx-x"></asp:TextBox>
          </div>--%>

           <%-- <label class="col-xs-11"> <b>P.O Box</b></label>
          <div class="col-xs-11">
              <asp:TextBox ID="C6" runat="server" class="form-control" placeholder="POBox"></asp:TextBox>
          </div>--%>

                 <label class="col-xs-11"> <b>City</b></label>
          <div class="col-xs-11">
              <asp:TextBox ID="C7" runat="server" class="form-control" placeholder=""></asp:TextBox><br />
               <asp:RequiredFieldValidator runat="server" id="reqcity" ControlToValidate="C7" ErrorMessage="City Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
          </div>

         <%-- <label class="col-xs-11"> <b>Status</b></label>
          <div class="col-xs-11">
              <asp:TextBox ID="C8" runat="server" placeholder=""></asp:TextBox>
              </div>--%>
              <label class="col-xs-11"> <b>Email Address</b></label>
          <div class="col-xs-11">
              <asp:TextBox ID="Email" runat="server" placeholder="" class="form-control" TextMode="Email"></asp:TextBox> <br />
               <asp:RequiredFieldValidator runat="server" id="reqemail" ControlToValidate="Email" ErrorMessage="Email Required" ForeColor="Red"></asp:RequiredFieldValidator>
              </div>
              <label class="col-xs-11"> <b>Password</b></label>
          <div class="col-xs-11">
              <asp:TextBox ID="Pwd" runat="server" placeholder="" class="form-control" TextMode="Password"></asp:TextBox><br />
               <asp:RequiredFieldValidator runat="server" id="reqpw" ControlToValidate="Pwd" ErrorMessage="Enter New Password" ForeColor="Red"></asp:RequiredFieldValidator>
            
              </div> <br />
              <label class="col-xs-11"> <b>Username</b></label>
          <div class="col-xs-11">
              <asp:TextBox ID="username" runat="server" class="form-control" placeholder=""></asp:TextBox><br />
               <asp:RequiredFieldValidator runat="server" id="requsername" ControlToValidate="username" ErrorMessage="Enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
              <br />
              <asp:Label ID="lblerror" runat="server" Text="" ForeColor="Red"></asp:Label>
             <br />
                  <asp:Button ID="Button1" runat="server" Text="Signup" class="btn btn-success" Height="40px" OnClick="Button1_Click"  />
          </div>
               
            </div>
           
        
         

    
        
    </form>
    
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>

