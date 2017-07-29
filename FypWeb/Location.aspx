<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Location.aspx.cs" Inherits="FypWeb.Location" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  
  
<html>  
  <head>   
      <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="StyleSheet.css" rel="stylesheet" />
   
    <title></title>  
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">  
    <meta charset="utf-8">  
    <style type="text/css">  
      html, body, #canvasMap {  
        height: 100%;  
        margin: 0px;  
        padding: 0px  
      }  
    </style>  
      <script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
      <script type="text/jscript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript " src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=true&key=AIzaSyBVg7tU1dHbjkAA7XtLr4joyhvDdPauLdo"></script>  
   
      <script type="text/javascript">
          var dist=1;
          //$("document").ready(function(){
          //    $(document).on("change", "#distanceinkm", function() {
                  
          //           dist = $(this).find("option:selected").text();
                  
          //       location.reload();
          //    });
          //});
              //$("#distanceinkm").change(function(){
              //    alert($('option:selected', $(this)).text());
              //    dist = $('option:selected', $(this)).text();
              //    alert(dist);
              //});
        
      </script>
      <script type="text/javascript">
       var lat;
       var long;
       var x;
       var markers = [
                 <asp:Repeater ID="rptMarkers" runat="server">
                 
                 <ItemTemplate>
				   {
								 "markerid": '<%# Eval("VenueID") %>',
                                 "title": '<%# Eval("Name") %>',
                                 "lat": '<%# Eval("Latitude") %>',
                                 "lng": '<%# Eval("Longitude") %>',
                                 "Price": '<%# Eval("Price") %>',
                                 "description": '<%# Eval("Address") %>'
                             },
                </ItemTemplate>
                <SeparatorTemplate>
                    
                </SeparatorTemplate>
                </asp:Repeater>
       ];

          $("document").ready(function(){
              $(document).on("change", "#distanceinkm", function() {
                  
                  dist = $(this).find("option:selected").text();
                  
             
      // window.onload = function () {
                
           var latl = new google.maps.LatLng(lat, long);
          
           var mapOptions = {
               position: latl,
               center: new google.maps.LatLng(lat, long),
               zoom: 15,
               title: "AHSAN KA GHAR",
               mapTypeId: google.maps.MapTypeId.ROADMAP
           };
           var pinImage = new google.maps.MarkerImage("http://www.googlemapsmarkers.com/v1/009900/");
           var infoWindow = new google.maps.InfoWindow();
           var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
           //var marker = new google.maps.Marker({
           //    position: latl,
           //    icon:pinImage,
           //    map: map,
           //    title: "AHSAN KA GHAR"
           //});
                
           //(function (marker, data) {
           //    google.maps.event.addListener(marker, "click", function (e) {
           //        infoWindow.setContent(data.description);
           //        infoWindow.open(map, marker);
           //    });
           //})(marker, data);
           for (i = 0; i < markers.length; i++) {
               var data = markers[i]
               
               var myLatlng = new google.maps.LatLng(data.lat, data.lng);
               
			   if (i == 0) {
				   createMarker(latl, "i'm Here", 0, 0);
        //           var marker = new google.maps.Marker({
        //               position: latl,
        //               icon:pinImage,
        //               map: map,
        //               title: "I'm Here!"
        //           });
                
        //           (function (marker, data) {
					   //google.maps.event.addListener(marker, "click", function (e) {
						  // infoWindow.setContent(marker.title);
        //                   infoWindow.open(map, marker);
        //               });
        //           })(marker, data);
               }
               //alert(distance(lat,long,data.lat,data.long,"K"));
             //  alert(data.lat+" "+data.lng);
			  
				   var x = distance(lat, long, data.lat, data.lng, "K");
				   if (x <= dist) {
					   createMarker(myLatlng, data.title, data.markerid, data.Price);
					   //var marker = new google.maps.Marker({
						  // position: myLatlng,
						  // map: map,
						  // title: data.title
					   //});
					   //(function (marker, data) {
						  // google.maps.event.addListener(marker, "click", function (e) {
							 //  infoWindow.setContent(marker.title);
							 //  infoWindow.open(map, marker);
						  // });
					   //})(marker, data);
				   }
			  
           }
       //}
		   function createMarker(pos, name, markerid, Price) {
			   var marker = new google.maps.Marker({
				   position: pos,
				   map: map,  // google.maps.Map 
				   title: name,
				   id: markerid,
				   price: Price,
			   });
			   google.maps.event.addListener(marker, 'click', function () {
				   if (marker.price > 0) {
					   window.location.href = "productinfo.aspx?id=" + marker.id + "&price=" + marker.price + "&name=" + marker.title;
				   }
				   else {
					   alert("That's your Position");
				   }
			   });
			   return marker;
		   }
              });
          });
           
		  
           window.onload = function () {
                
          var latl = new google.maps.LatLng(lat, long);
          
          var mapOptions = {
              position: latl,
              center: new google.maps.LatLng(lat, long),
              zoom: 15,
              title: "AHSAN KA GHAR",
              mapTypeId: google.maps.MapTypeId.ROADMAP
          };
          var pinImage = new google.maps.MarkerImage("http://www.googlemapsmarkers.com/v1/009900/");
          var infoWindow = new google.maps.InfoWindow();
          var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
          //var marker = new google.maps.Marker({
          //    position: latl,
          //    icon:pinImage,
          //    map: map,
          //    title: "AHSAN KA GHAR"
          //});
                
          //(function (marker, data) {
          //    google.maps.event.addListener(marker, "click", function (e) {
          //        infoWindow.setContent(data.description);
          //        infoWindow.open(map, marker);
          //    });
          //})(marker, data);
          for (i = 0; i < markers.length; i++) {
              var data = markers[i]
               
              var myLatlng = new google.maps.LatLng(data.lat, data.lng);
               
			  if (i == 0) {
				  createMarker(latl,"i'm Here",0,0);
                  //var marker = new google.maps.Marker({
                  //    position: latl,
                  //    icon:pinImage,
                  //    map: map,
                  //    title: "I'm Here !"
                  //});
                
                  //(function (marker, data) {
                  //    google.maps.event.addListener(marker, "click", function (e) {
                  //        infoWindow.setContent("<a href='google.com'>"+marker.title+"</a>");
                  //        infoWindow.open(map, marker);
                  //    });
                  //})(marker, data);
              }
              //alert(distance(lat,long,data.lat,data.long,"K"));
              //  alert(data.lat+" "+data.lng);
              var x = distance(lat,long,data.lat,data.lng,"K");
			  if (x <= dist) {
				  createMarker(myLatlng, data.title, data.markerid,data.Price);
      //            var marker = new google.maps.Marker({
      //                position: myLatlng,
      //                map: map,
      //                title: data.title
      //            });

				  //(function (marker, data) {
					 // google.maps.event.addListener(marker, "click", function (e) {
						//  infoWindow.setContent(marker.title);
						//  infoWindow.open(map, marker);
					 // });
				  //})(marker, data);

			  }
			  
		  }
		  function createMarker(pos, name, markerid,Price) {
			  var marker = new google.maps.Marker({
				  position: pos,
				  map: map,  // google.maps.Map 
				  title: name,
				  id: markerid,
				  price: Price,
			  });
			  google.maps.event.addListener(marker, 'click', function () {
				  if (marker.price > 0) {
					  window.location.href = "productinfo.aspx?id=" + marker.id + "&price=" + marker.price + "&name=" + marker.title;
				  }
				  else {
					  alert("That's your Position");
				  }
			  });
			  return marker;
		  }
        }
     
		   
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
           lat = getParameterByName('latitude');
           long = getParameterByName('longitude');
           
           function distance(lat1, lon1, lat2, lon2, unit) {
               var radlat1 = Math.PI * lat1/180
               var radlat2 = Math.PI * lat2/180
               var theta = lon1-lon2
               var radtheta = Math.PI * theta/180
               var dist = Math.sin(radlat1) * Math.sin(radlat2) + Math.cos(radlat1) * Math.cos(radlat2) * Math.cos(radtheta);
               dist = Math.acos(dist)
               dist = dist * 180/Math.PI
               dist = dist * 60 * 1.1515
               if (unit=="K") { dist = dist * 1.609344 }
               if (unit=="N") { dist = dist * 0.8684 }
               return dist
           }
       
</script>
        </head>
  <body>  
      <select id="distanceinkm" class="bs-select form-control"><option>Nearest Venue</option><option value="1">1</option><option value="3">3</option><option value="5">5</option></select>
      <br />
    <div id="dvMap" style="width: 1500px; height: 900px"></div>
        
  </body>  
        
</html> 