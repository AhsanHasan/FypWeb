<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckOutForm.aspx.cs" Inherits="FypWeb.CheckOutForm" %>

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
    <script>
        function showHide(checked) {
            if (checked == true)
                $("$txt_cardnum").fadeIn();
                $("$txt_cardnum").fadeOut();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
            <div class="navbar navbar-default navbar-fixed-top navbar-inverse"role="navigation" >

                <div class="container">
                <div class="navbar-header" >
                    <br />
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
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">My Profile<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li> <a href="#">Account Setting</a></li>
                                <li><asp:LinkButton ID="LinkBtnlogout" runat="server" ForeColor="Black" OnClick="logout_click">Logout</asp:LinkButton></li>
                                </ul>
                                </li>
                        </ul> 
                    </div> 
                    </div>
 </div>   
        <%--<div class="center" style="margin-top:180px">
            <label class="col-xs-11"> <b>Name</b></label>
          <div class="col-xs-11">
              <asp:TextBox ID="Cname" runat="server" class="form-control" placeholder=""></asp:TextBox>
          </div>
            <label class="col-xs-11"> <b>D.O.B</b></label>
          <div class="col-xs-11">
              <asp:TextBox ID="Cdob" runat="server" class="form-control" placeholder=""></asp:TextBox>
          </div>
            <label class="col-xs-11"> <b>CNIC</b></label>
          <div class="col-xs-11">
              <asp:TextBox ID="Cnic" runat="server" class="form-control" placeholder=""></asp:TextBox>
          </div>
            <label class="col-xs-11"> <b>New Email Address</b></label>
          <div class="col-xs-11">
              <asp:TextBox ID="C1" runat="server" class="form-control" placeholder=""></asp:TextBox>
          </div>
           
           <label class="col-xs-11"> <b>New Password</b></label>
          <div class="col-xs-11">
              <asp:TextBox ID="C2" runat="server" class="form-control" placeholder="" TextMode="Password"></asp:TextBox>
          </div>
            
            <label class="col-xs-11"> <b>New Credit Card No.</b></label>
          <div class="col-xs-11">
              <asp:TextBox ID="C3" runat="server" class="form-control" placeholder=""></asp:TextBox>
          </div>
            
            <label class="col-xs-11"> <b>New Address</b></label>
          <div class="col-xs-11">
              <asp:TextBox ID="C4" runat="server" class="form-control" placeholder=""></asp:TextBox>
          </div>
            
            <label class="col-xs-11"> <b>New City</b></label>
          <div class="col-xs-11">
              <asp:TextBox ID="C5" runat="server" class="form-control" placeholder=""></asp:TextBox>
          </div>

            <label class="col-xs-11"> <b>New P.O Box</b></label>
          <div class="col-xs-11">
              <asp:TextBox ID="C6" runat="server" class="form-control" placeholder=""></asp:TextBox>
          </div>

                 

          <label class="col-xs-11"> <b>New Status</b></label>
          <div class="col-xs-11">
              <asp:TextBox ID="C8" runat="server" class="form-control" placeholder=""></asp:TextBox>
              </div>
              <div class="col-xs-11">
                  <asp:Button ID="BtUpdate" runat="server" Text="Update" class="btn btn-success" Height="40px" OnClick="BtUpdate_Click"  style="margin-top:30px;width:100px"/>
                  </div>
          </div>
               
            </div>--%>
        <br />
        <br />
        <br />
        <br />
        <br />
        
        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingOne">
        <asp:Label ID="orderError" runat="server" Text=""></asp:Label>
      <h4 class="panel-title"> 
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          Personal Information
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
       <ul class="list-unstyled">
           <li>
          <label class="col-xs-11"> <b>Name</b></label>
          <div class="col-xs-11">
              <asp:TextBox ID="txt_name" runat="server" class="form-control" placeholder=""></asp:TextBox>
          </div>
           </li>
           <li>
            <label class="col-xs-11"> <b>Address</b></label>
          <div class="col-xs-11">
              <asp:TextBox ID="txt_address" runat="server" class="form-control" placeholder=""></asp:TextBox>
          </div>
           </li>
           <li>
                <label class="col-xs-11"> <b>City</b></label>
          <div class="col-xs-11">
              <asp:TextBox ID="txt_city" runat="server" class="form-control" placeholder=""></asp:TextBox>
          </div>
           </li>
           
           <li>
            <label class="col-xs-11"> <b>Phone Number</b></label>
          <div class="col-xs-11">
              <asp:TextBox ID="txt_phonenumber" runat="server" class="form-control" placeholder=""></asp:TextBox>
              </div>
           </li>
            <li>
            <label class="col-xs-11"> <b>Email Address</b></label>
          <div class="col-xs-11">
              <asp:TextBox ID="txt_emailaddress" runat="server" class="form-control" placeholder=""></asp:TextBox>
              </div>
           </li>
           <li>
                <label class="col-xs-11"> <b>CNIC</b></label>
          <div class="col-xs-11">
              <asp:TextBox ID="Cnic" runat="server" class="form-control" placeholder=""></asp:TextBox>
          </div>
           </li>
          </ul>
      </div>
    </div>
  </div>
            <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingTwo">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          Payment Information
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
      <div class="panel-body">
        <ul class="list-unstyled">
            <li>
                <span class="col-xs-11">Payment Method</span>
                <label for="chkYes"></label>
                <div class="col-xs-11">
                 
                    
                    <asp:RadioButton ID="RadioButtonCC" runat="server" GroupName="PaymentMethod" Checked="true" CssClass="radio-inline" Text="Credit Card" AutoPostBack="true" OnCheckedChanged="OnCheckChanged1"/> 
                    <asp:RadioButton ID="RadioButtonEP" runat="server" GroupName="PaymentMethod" Text="Easy Paisa" CssClass="radio-inline" AutoPostBack="true" OnCheckedChanged ="OnCheckChanged" />
        
                    </div>
            </li>
            <br />
            <br />
            
        <li>
            <asp:Label ID="lblCC"  runat="server" class="col-xs-11" Visible="true" > <b>Credit Card Number </b></asp:Label>
          <div class="col-xs-11">
              <asp:TextBox ID="txt_cardnum" runat="server" class="form-control" placeholder="" Visible="true"></asp:TextBox>
          </div>
        </li>
            <li>
            <label class="col-xs-11"> <b>Postal Code</b></label>
          <div class="col-xs-11">
              <asp:TextBox ID="txt_postalcode" runat="server" class="form-control" placeholder=""></asp:TextBox>
              </div>
           </li>
           
        </ul>
      </div>
    </div>
  </div>
           
        <div class="col-lg-5"> 
               <asp:Button ID="BtnSubmit" runat="server" Text="Submit" class="btn btn-success" Height="40px" OnClick="BtnSubmit_Click"  style="margin-top:30px;width:100px"/>
                  </div>
          </div>
              
        <footer style="position:fixed; bottom:0; width:100%">
            
            <br />
            <div class="container">
                <p>&copy; 2016 OnClickEvent.com &middot; <a href="Welcome.aspx">Home</a> &middot; <a href="About.aspx">About</a>&middot;  </p>
            </div>
        </footer>
           
        
         


    </form>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>


