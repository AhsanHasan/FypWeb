<%@ Page Language="C#" AutoEventWireup="true" Inherits="visitors" Codebehind="visitors.aspx.cs" %>

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
            <!---Carousel-->
        


         <div class="container">
        <br />
            
       <div class="row">
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img class="img-circle" src="pictures/mehndi.jpg" alt="logo">
      <div class="caption">
        <h3>Mehndi</h3>
        <p> Here you can select your own Mehndi functions. How it should be organized in a way you would like to within your budget.</p>
        
      </div>
    </div>
  </div>
           <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img class="img-circle" src="pictures/baraat.jpg" alt="logo">
      <div class="caption">
        <h3>Baraat</h3>
        <p> Here you can select your own Baraat Fumtions. How it should be organized in a way you would like to within your budget.</p>
        
      </div>
    </div>
  </div>
                  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img class="img-circle" src="pictures/recp.jpg" alt="logo">
      <div class="caption">
        <h3>Reception</h3>
        <p> Here you can select your own Reception. How it should be organized in a way you would like to within your budget.</p>
        
      </div>
    </div>
  </div>
</div>
             <div class="row">

                    <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img class="img-circle" src="pictures/pp.jpg" alt="logo">
      <div class="caption">
        <h3>Private Party</h3>
        <p> Here you can select your own Private Parties. How it should be organized in a way you would like to within your budget.</p>
        
      </div>
    </div>
  </div>
                  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img class="img-circle" src="pictures/bp.jpg" alt="logo">
      <div class="caption">
        <h3>Beach Party</h3>
        <p> Here you can select your own Beach Parties. How it should be organized in a way you would like to within your budget.</p>
        
      </div>
    </div>
  </div>
                  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img class="img-circle" src="pictures/l.jpg" alt="logo">
      <div class="caption">
        <h3>Live Concerts</h3>
        <p> Here you can select your own Beach Parties. How it should be organized in a way you would like to within your budget.</p>
        
      </div>
    </div>
  </div>

             </div>
             
                 <div class="row">
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img class="img-circle" src="pictures/Business2.jpg" alt="logo">
      <div class="caption">
        <h3>Business Meetings/Coperate Events</h3>
        <p> Here you can select your own Coperate Events or Business Meetings. How it should be organized in a way you would like to within your budget.</p>
        
      </div>
    </div>

  </div>
                     <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img class="img-circle" src="pictures/foods.jpg" alt="logo">
      <div class="caption">
        <h3>Food Items</h3>
        <p> Here you can select your own Food Items within your budget. How it should be organized in a way you would like to within your budget.</p>
        
      </div>
    </div>
  </div>
                     <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img class="img-circle" src="pictures/signup.jpg" alt="logo">
      <div class="caption">
        <h3>Organize Your Own Event</h3>
        <p> If you want to have an event like them within your desired budget Signup and become a member and avail more options. </p>
          
        
        
      </div>
    </div>
  </div>
 </div>
        
             
                     <a href="Signup.aspx" class="btn btn-success mid" role="button" style="width:125px; height:30px "">Signup</a>     


             <br />
             <br />
             <br />
        <footer>

            <br />
            <div class="container">
                <p>&copy; 2016 OnClickEvent.com &middot; <a href="Welcome.aspx">Home</a> &middot; <a href="#">About</a>&middot; <a href="#">Signin</a>  </p>
            </div>
        </footer>
        

    </form>
    
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
