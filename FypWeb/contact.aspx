<%@ Page Language="C#" AutoEventWireup="true" Inherits="contact" Codebehind="contact.aspx.cs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server"><meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
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
                    <a class="navbar-brand " href="Welcome.aspx"><span><img alt="logo" src="pictures/logo.png" width="50"  /></span> OnClickEvent </a>
                        </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li ><a href="Welcome.aspx">Home</a></li>
                            <li> <a href="About.aspx">About</a></li>
                            <li class="active"> <a href="contact.aspx">Contact</a></li>
                            <li><a href="Login.aspx">Login</a></li>
                            
                        </ul> 
                    </div> 
                    </div>
 </div>   


    </div>

        <br />
        <br />
        <br />
        <div class="row">

            <div class="col-lg-3">
                <h2 style="color:blueviolet"> About us</h2>
                <br />
             <img class="img-circle" src="pictures/dp.jpg" alt="Location" height="80" width="80"/>
            <h2>Syed Ahsan Hassan</h2>
            <p>Any text</p>
                 <li role="separator" class="divider"></li>
       <br />
                <img class="img-circle" src="pictures/dp.jpg" alt="Location" height="80" width="80"/>
            <h2>Syed Haider</h2>
            <p>Any text</p>
                <li role="separator" class="divider"></li>

       <br />
                <img class="img-circle" src="pictures/dp.jpg" alt="Location" height="80" width="80"/>
            <h2>Kevin Saptel</h2>
            <p>Any text</p>
                <li role="separator" class="divider"></li>
       <br />
                <img class="img-circle" src="pictures/dp.jpg" alt="Location" height="80" width="80"/>
            <h2>Umer Farooq</h2>
            <p>Any text</p>
       

    </div>


             <div class="col-lg-5">
                 <h1 style="color:blueviolet">Contact Us! <span class="label label-default"></span></h1>
                     <label class="col-xs-5"> <h4>Name</h4></label>
          <div class="col-xs-11">
              <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="abc"></asp:TextBox>
          </div>
                 <label class="col-xs-5"> <h4>Email</h4></label>
          <div class="col-xs-11">
          <div class="input-group">
                <input type="text" class="form-control" placeholder="Recipient's username" aria-describedby="basic-addon2">
                <span class="input-group-addon" id="basic-addon2">@example.com</span>
                </div> 
          </div>
                 <label class="col-xs-5"> <h4>Suggestions&Complains</h4></label>
          <div class="col-xs-11">
              <textarea name = "comment" placeholder = "Message" id = "comment" style="height:250px;width:500px" ></textarea>
             
          </div>
                 <div class="col-xs-11">

                     <br />
                  <a href="#"><input type="submit" name="dsubmit" id="commentSubmit" value="Submit Comment"></a>
                <input style="width: 30px" type="checkbox" value="1" name="subscribe" id="subscribe" checked="checked">
                    <p1><b>Notify me when new comments are added.</b></p1>
                         </div>

            </div>




        </div>
        



       <footer class="navbar-bottom">

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
