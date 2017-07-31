.<%@ Page Language="C#" AutoEventWireup="true" Inherits="success" Codebehind="success.aspx.cs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server"><meta charset="utf-8"/>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js">
        </script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/JavaScript1.js"></script>

</head>
<body>
    <form id="form1" runat="server" method="post" action ="Eventtype.aspx">
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
                            <li class="dropdown">
                                <a href="AccountSetting.aspx" class="dropdown-toggle" data-toggle="dropdown">My Profile<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li> <a href="AccountSetting.aspx">Account Setting</a></li>
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
        
      <br />
        <br />
        <br />

        <div class="alert alert-success" role="alert" ><asp:Label ID="lblwelcome" runat="server" Text=" "> </asp:Label></div>
        <!--jumbotron-->
      <div class="container">
    <div class="jumbotron">
        <h1>Welcome here </h1>
        <p> Now you can select events of your own types from the Dropdown Event Type Menu and enter your budget! </p>
        <p>       <button  type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" style="text-align:center;width:180px">Enter Budget</button>
            <a  type="button" href="Loader.html" class="btn btn-info btn-lg" style="text-align:center;width:200px">Enter Without Budget</a>

        </p>
    </div>
</div>
      <!--jumbotron-->
        
                
                <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Enter Budget</h4>
        </div>
        <div class="modal-body">
        <label style="color:red">(Budget and guest must be above 5 lacs and 250)</label>
            <label class="col-xs-11"> <h4>Budget amount</h4></label>
            
              <input name="budgetamount" type="number"  class="form-control" placeholder="Please Enter Budget More Then 100000" />
          
            <label class="col-xs-11"> <h4>Number Of Guests</h4></label>
              <input name="totalguests" type="number"  class="form-control" placeholder="Enter Number Of Budget" />
            
        </div>
        <div class="modal-footer">
        
              <%--<a href="packageEntry.html" type="button" class="btn btn-success" id="budgetbtn">Enter</a>--%>
               <input type ="submit" value="Submit" class="btn btn-success" />
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
        </div>


</div>
        </div>
       
        
    </form>
    </body>
     <script>
    $(document).ready(function() {
        function disableBack() { window.history.forward() }

        window.onload = disableBack();
        window.onpageshow = function(evt) { if (evt.persisted) disableBack() }
    });
</script>
         
     

    </html>
