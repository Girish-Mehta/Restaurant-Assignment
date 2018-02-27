<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <!-- PAGE settings -->
	  <link rel="icon" href="https://templates.pingendo.com/assets/Pingendo_favicon.ico">
	  <title>Restaurant Aquamarine - Pingendo template</title>
	  <meta name="description" content="Free Bootstrap 4 Pingendo Aquamarine template for restaurant and food">
	  <meta name="keywords" content="Pingendo restaurant food aquamarine free template bootstrap 4">
	  <!-- CSS dependencies -->
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
	  <link rel="stylesheet" href="aquamarine.css" type="text/css">
	  <!-- Script: Make my navbar transparent when the document is scrolled to top -->
	  <script src="js/navbar-ontop.js"></script>
	  <!-- Script: Animated entrance -->
	  <script src="js/animate-in.js"></script>
<title>Hapto</title>
</head>
<body>
<!-- Navbar -->
  <nav class="navbar navbar-expand-md navbar-dark bg-primary fixed-top">
    <div class="container">
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar3SupportedContent" aria-controls="navbar3SupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse text-center justify-content-center" id="navbar3SupportedContent">
        <ul class="navbar-nav">
          <li class="nav-item mx-3">
            <a class="nav-link text-light" href="#"><b>HAP</b></a>
          </li>
          <li class="nav-item mx-2">
            <a class="nav-link" href="#menu"><b>HOME</b></a>
          </li>
          <li class="nav-item mx-2">
            <a class="nav-link" href="#venue"><b>ABOUT</b></a>
          </li>
        </ul>
        <a class="btn navbar-btn btn-secondary mx-2" href="#restName"><b>Find</b></a>
      </div>
    </div>
  </nav>
  <!-- Cover -->
  <div class="align-items-center d-flex cover section-aquamarine py-5" style="background-image: url(&quot;assets/restaurant/cover_light.jpg&quot;);">
    <div class="container">
      <div class="row">
        <div class="col-lg-7 align-self-center text-lg-left text-center">
          <h1 class="mb-0 mt-5 display-4">HAP</h1>
          <p class="mb-5" id="info">Still finding a place to eat? HAP NOW !</p>
        </div>
        <div class="col-lg-5 p-3">
            <h4 class="mb-4 text-center">Find a Restaurant</h4>
            <div class="form-group">
              <input class="form-control" placeholder="Restaurant Name" id="restName"> </div>
            <a href="#searchResult"><button type="submit" class="btn mt-4 btn-block p-2 btn-primary" onClick="searchRes()"><b>HAP Now</b></button></a>
        </div>
      </div>
    </div>
  </div>

  <!-- Search Result -->
  <div class="py-5 text-center" id="searchResult" style="background-image: url(&quot;assets/restaurant/cover_light_4.jpg&quot;);display:none">
    <div class="container">
      <div class="row p-4 bg-aquamarine animate-in-down" id="showRes">
        <div class="col-md-12">
          <h2>Search Results</h2>
          <p class="mb-5" id="dispRestName"></p>
          <div class="container">
		  <div class="row">
		    <div class="col-sm">
				<p class="mb-5 text-left" id="resultCount"></p>
		    </div>
		    <div class="col-sm">
				<p class="mb-5 text-right" id="displayCount"></p>
		    </div>
		  </div>
          <div class="row">
            <div class="col-md-12">
              <h5>From our lands</h5>
              <ul class="list-unstyled">
                <li class="my-4">
				<div class="card" id="card1">
				  <div class="card-body">
				  <div class="container">
				  	<div class="row">
					    <div class="col-sm">
					      <p class="text-left" id="labelCurRestName1">Restaurant Name:</p>
					    </div>
					    <div class="col-sm col-6">
						    <p id="curRestName1" class="text-left"></p>
					    </div>
					</div>
					<div class="row">
					    <div class="col-sm">
					      <p class="text-left" id="labelCurRestAdd1">Restaurant Address:</p>
					    </div>
					    <div class="col-sm col-6">
			      		    <p id="curRestAdd1" class="text-left"></p>
					    </div>
					</div>
					<div class="row">
					    <div class="col-sm">
					      <p class="text-left" class="text-left" id="labelCurRestRat1">Restaurant Rating:</p>
					    </div>
					    <div class="col-sm col-6">
		   				    <p id="curRestRat1"  class="text-left"></p>
					    </div>
					</div>
					<div class="row">
					    <div class="col-sm">
					      <p class="text-left" class="text-left" id="labelCurRestVote1">Restaurant Votes:</p>
					    </div>
					    <div class="col-sm col-6">
		   				    <p id="curRestVote1"  class="text-left"></p>				    
					    </div>
					</div>
					<button type="button" class="btn btn-info" id="fav-btn-1">Add to Fav</button>
				   </div>
				  </div>
				 </div>
				</li>
				
				<li class="my-4">
				<div class="card" id="card2">
				  <div class="card-body">
				  <div class="container">
				  	<div class="row">
					    <div class="col-sm">
					      <p class="text-left" id="labelCurRestName2">Restaurant Name:</p>
					    </div>
					    <div class="col-sm col-6">
						    <p id="curRestName2" class="text-left"></p>
					    </div>
					</div>
					<div class="row">
					    <div class="col-sm">
					      <p class="text-left" id="labelCurRestAdd2">Restaurant Address:</p>
					    </div>
					    <div class="col-sm col-6">
			      		    <p id="curRestAdd2" class="text-left"></p>
					    </div>
					</div>
					<div class="row">
					    <div class="col-sm">
					      <p class="text-left" class="text-left" id="labelCurRestRat2">Restaurant Rating:</p>
					    </div>
					    <div class="col-sm col-6">
		   				    <p id="curRestRat2"  class="text-left"></p>
					    </div>
					</div>
					<div class="row">
					    <div class="col-sm">
					      <p class="text-left" class="text-left" id="labelCurRestVote2">Restaurant Votes:</p>
					    </div>
					    <div class="col-sm col-6">
		   				    <p id="curRestVote2"  class="text-left"></p>				    
					    </div>
					</div>
					<button type="button" class="btn btn-info" id="fav-btn-2">Add to Fav</button>
				   </div>
				  </div>
				 </div>
				</li>
				
				<li class="my-4">
				<div class="card" id="card3">
				  <div class="card-body">
				  <div class="container">
				  	<div class="row">
					    <div class="col-sm">
					      <p class="text-left" id="labelCurRestName3">Restaurant Name:</p>
					    </div>
					    <div class="col-sm col-6">
						    <p id="curRestName3" class="text-left"></p>
					    </div>
					</div>
					<div class="row">
					    <div class="col-sm">
					      <p class="text-left" id="labelCurRestAdd3">Restaurant Address:</p>
					    </div>
					    <div class="col-sm col-6">
			      		    <p id="curRestAdd3" class="text-left"></p>
					    </div>
					</div>
					<div class="row">
					    <div class="col-sm">
					      <p class="text-left" class="text-left" id="labelCurRestRat3">Restaurant Rating:</p>
					    </div>
					    <div class="col-sm col-6">
		   				    <p id="curRestRat3"  class="text-left"></p>
					    </div>
					</div>
					<div class="row">
					    <div class="col-sm">
					      <p class="text-left" class="text-left" id="labelCurRestVote3">Restaurant Votes:</p>
					    </div>
					    <div class="col-sm col-6">
		   				    <p id="curRestVote3"  class="text-left"></p>				    
					    </div>
					</div>
					<button type="button" class="btn btn-info" id="fav-btn-3">Add to Fav</button>
				   </div>
				  </div>
				 </div>
				</li>
				
				<li class="my-4">
				<div class="card" id="card4">
				  <div class="card-body">
				  <div class="container">
				  	<div class="row">
					    <div class="col-sm">
					      <p class="text-left" id="labelCurRestName4">Restaurant Name:</p>
					    </div>
					    <div class="col-sm col-6">
						    <p id="curRestName4" class="text-left"></p>
					    </div>
					</div>
					<div class="row">
					    <div class="col-sm">
					      <p class="text-left" id="labelCurRestAdd4">Restaurant Address:</p>
					    </div>
					    <div class="col-sm col-6">
			      		    <p id="curRestAdd4" class="text-left"></p>
					    </div>
					</div>
					<div class="row">
					    <div class="col-sm">
					      <p class="text-left" class="text-left" id="labelCurRestRat4">Restaurant Rating:</p>
					    </div>
					    <div class="col-sm col-6">
		   				    <p id="curRestRat4"  class="text-left"></p>
					    </div>
					</div>
					<div class="row">
					    <div class="col-sm">
					      <p class="text-left" class="text-left" id="labelCurRestVote4">Restaurant Votes:</p>
					    </div>
					    <div class="col-sm col-6">
		   				    <p id="curRestVote4"  class="text-left"></p>				    
					    </div>
					</div>
					<button type="button" class="btn btn-info" id="fav-btn-4">Add to Fav</button>
				   </div>
				  </div>
				 </div>
				</li>
				
				<li class="my-4">
				<div class="card" id="card5">
				  <div class="card-body">
				  <div class="container">
				  	<div class="row">
					    <div class="col-sm">
					      <p class="text-left" id="labelCurRestName5">Restaurant Name:</p>
					    </div>
					    <div class="col-sm col-6">
						    <p id="curRestName5" class="text-left"></p>
					    </div>
					</div>
					<div class="row">
					    <div class="col-sm">
					      <p class="text-left" id="labelCurRestAdd5">Restaurant Address:</p>
					    </div>
					    <div class="col-sm col-6">
			      		    <p id="curRestAdd5" class="text-left"></p>
					    </div>
					</div>
					<div class="row">
					    <div class="col-sm">
					      <p class="text-left" class="text-left" id="labelCurRestRat5">Restaurant Rating:</p>
					    </div>
					    <div class="col-sm col-6">
		   				    <p id="curRestRat5"  class="text-left"></p>
					    </div>
					</div>
					<div class="row">
					    <div class="col-sm">
					      <p class="text-left" class="text-left" id="labelCurRestVote5">Restaurant Votes:</p>
					    </div>
					    <div class="col-sm col-6">
		   				    <p id="curRestVote5"  class="text-left"></p>				    
					    </div>
					</div>
					<button type="button" class="btn btn-info" id="fav-btn-5">Add to Fav</button>
				   </div>
				  </div>
				 </div>
				</li>
				
              </ul>
            </div>
            <div class="col-md-6">
            	<a href="#searchResult"><button type="submit" class="btn mt-4 btn-block p-2 btn-primary" onClick="previous()"><b>HAP Back</b></button></a>
			</div>
			<div class="col-md-6">
            	<a href="#searchResult"><button type="submit" class="btn mt-4 btn-block p-2 btn-primary" onClick="next()"><b>HAP Ahead</b></button></a>
			</div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Carousel reviews -->
  <!-- Carousel venue -->
  <!-- Events -->
  <!-- Parallax section -->
  <!-- Footer -->
  <div class="text-center bg-dark pt-5">
    <div class="container">
      <div class="row">
        <div class="col-md-4 p-3">
          <h2 class="mb-4">Contact</h2>
          <p class="m-0">
            <a href="tel:+246 - 542 550 5462" class="text-white">+</a>91-9815976116
            <br>
          </p>
          <p>support@sap.com
            <br>
          </p>
        </div>
        <div class="col-md-4 p-3">
          <h2 class="mb-4">Location</h2>
          <p>Sector-21, Gurugram</p>
        </div>
        <div class="col-md-4 p-3">
          <h2 class="mb-4">Openings</h2>
          <p>11:00 - 15:00 &amp; 19:00 - 00:00 Tue/Fri
            <br>11:00 - 15:00 &amp; 19:00 - 02:00 Sat/Sun</p>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12 mt-3">
          <p class="text-center text-muted">Â© Copyright 2018 Pingendo - All rights reserved. </p>
        </div>
      </div>
    </div>
  </div>
  
	<script type="text/javascript">
		var jsonObj;
		var results_found;
		var restName;
		var address;
		var rating;
		var votes;
		var start;
		var end;
		
		function searchRes(){
			start = -5;
			end = 0;
			results_found = 0;
			next();
		}
		
		function next(){
			start = end;
			end = end + 6;			
			if(start <= results_found){
				getDet();
			}
		}
		
		function previous(){
			end = start;
			start = start - 6;
			if(start >= 0){
				getDet();
			}
		}
		
		function getDet(){
			var restName = document.getElementById("restName").value;
			var xhttp = new XMLHttpRequest();
			var request = new XMLHttpRequest();
			var link = "https://developers.zomato.com/api/v2.1/search?entity_id=1&entity_type=city&q="+restName+"&start="+start+"&count="+end;
			xhttp.onreadystatechange = function() {
        			if (this.readyState == 4 && this.status == 200) {
					   	jsonObj = JSON.parse(this.responseText);
					   	loadDOMResult();
        			}
	            };
            xhttp.open("GET", link, true);
            xhttp.setRequestHeader("user-key","1d7a85cfe73734af327392ee03b102cf");
            xhttp.send();
		}
		
		
		function loadDOMResult(){
			var i = 1;
			var id = "";
			var startCount = start;
			var endCount = end;
			results_found = jsonObj.results_found;
			if(results_found > 1){
				document.getElementById("searchResult").style.display = "block";
				document.getElementById("dispRestName").innerHTML = "Restaurant Name: "+document.getElementById("restName").value;
				document.getElementById("resultCount").innerHTML = "Found: "+results_found+" Restaurants";
				document.getElementById("displayCount").innerHTML = "Displaying: "+startCount+"-"+endCount;

				
				while(i <= 5){
					var resultList = document.createElement("div");
					id = "curRestName"+i;
					restName = jsonObj.restaurants[i].restaurant.name;
					document.getElementById(id).innerHTML = restName;

					id = "curRestAdd"+i;
					address = jsonObj.restaurants[i].restaurant.location.address;
					document.getElementById(id).innerHTML = address;

					id = "curRestRat"+i;				
					rating = jsonObj.restaurants[i].restaurant.user_rating.aggregate_rating;
					document.getElementById(id).innerHTML = rating;
					
					id = "curRestVote"+i;
					votes = jsonObj.restaurants[i].restaurant.user_rating.votes;
					document.getElementById(id).innerHTML = votes;
					i++;
				}				
			} else{
				alert("No restaurants found");
			}

		}
	</script>

  <!-- JavaScript dependencies -->
  <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <!-- Script: Smooth scrolling between anchors in the same page -->
  <script src="js/smooth-scroll.js"></script>  
</body>
</html>