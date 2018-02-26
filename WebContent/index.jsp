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
        <a class="btn navbar-btn btn-secondary mx-2" href="#book"><b>Find</b></a>
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
          <form class="p-4 bg-light" method="post" action="https://formspree.io/">
            <h4 class="mb-4 text-center">Find a Restaurant</h4>
            <div class="form-group"> <label>Name</label>
              <input class="form-control" placeholder="Type here" id="restName"> </div>
            <button type="submit" class="btn mt-4 btn-block p-2 btn-primary" onClick="getDet()"><b>HAP Now</b></button>
          </form>
        </div>
      </div>
    </div>
  </div>
  <!-- Intro -->
  <div class="py-5" style="background-image: url(&quot;assets/restaurant/cover_light_3.jpg&quot;);">
    <div class="container">
      <div class="row my-5 bg-primary">
        <div class="p-4 col-md-6">
          <p class="m-0">Our story, our future</p>
          <h2 class="mb-3">Michel Comini</h2> <i class="fa d-inline-block fa-star text-white"></i><i class="fa d-inline-block fa-star mx-2 text-white"></i><i class="fa d-inline-block fa-star text-white"></i>
          <p class="my-4">Considered one of the most brilliant chef of our time. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultrices nes, pellentesque eu, pretium quis, sem.</p>
          <img class="img-fluid d-block"
            src="assets/restaurant/signature_light.png" width="300"> </div>
        <div class="p-0 col-md-6 d-none d-md-block">
          <img class="img-fluid d-block" src="assets/restaurant/chef_light.jpg"> </div>
      </div>
    </div>
  </div>
  <!-- Gallery -->
  <div class="">
    <div class="container-fluid">
      <div class="row">
        <div class="p-0 col-md-2 col-4">
          <img src="assets/restaurant/food_12_light.jpg" class="img-fluid"> </div>
        <div class="p-0 col-md-2 col-4">
          <img src="assets/restaurant/food_11_light.jpg" class="img-fluid"> </div>
        <div class="p-0 col-md-2 col-4">
          <img src="assets/restaurant/food_10_light.jpg" class="img-fluid"> </div>
        <div class="p-0 col-md-2 col-4">
          <img src="assets/restaurant/food_9_light.jpg" class="img-fluid"> </div>
        <div class="p-0 col-md-2 col-4">
          <img src="assets/restaurant/food_8_light.jpg" class="img-fluid"> </div>
        <div class="p-0 col-md-2 col-4">
          <img src="assets/restaurant/food_7_light.jpg" class="img-fluid"> </div>
        <div class="p-0 col-md-2 col-4">
          <img src="assets/restaurant/food_5_light.jpg" class="img-fluid"> </div>
        <div class="p-0 col-md-2 col-4">
          <img src="assets/restaurant/food_6_light.jpg" class="img-fluid"> </div>
        <div class="p-0 col-md-2 col-4">
          <img src="assets/restaurant/food_4_light.jpg" class="img-fluid"> </div>
        <div class="p-0 col-md-2 col-4">
          <img src="assets/restaurant/food_3_light.jpg" class="img-fluid"> </div>
        <div class="p-0 col-md-2 col-4">
          <img src="assets/restaurant/food_2_light.jpg" class="img-fluid"> </div>
        <div class="p-0 col-md-2 col-4">
          <img class="img-fluid" src="assets/restaurant/food_1_light.jpg"> </div>
      </div>
    </div>
  </div>
  <!-- Menu -->
  <div class="py-5 text-center" id="menu" style="background-image: url(&quot;assets/restaurant/cover_light_4.jpg&quot;);">
    <div class="container">
      <div class="row p-4 bg-aquamarine animate-in-down" id="showRes">
        <div class="col-md-12">
          <h2>Search Result</h2>
          <p class="mb-5" id="restName">-----------</p>
          <div class="row">
            <div class="col-md-12">
              <h5>From our lands</h5>
              <ul class="list-unstyled">
                <li class="my-4">Fillet of beef carpaccio,
                  <br>raspberries and shaved parmesan
                  <br>[ $12 ]</li>
                <li class="my-4">Rabbit stewed with prune,
                  <br>artichokes and tomato focaccia
                  <br>[ $24 ]</li>
                <li class="my-4">Season vegetables,
                  <br>daily picked from our gardens
                  <br>[ $8 ]</li>
                <li class="my-4">Rhubarb and blood orange crumble
                  <br>served with clotted cream
                  <br>[ $10 ]</li>
              </ul>
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
          <p class="text-center text-muted">© Copyright 2018 Pingendo - All rights reserved. </p>
        </div>
      </div>
    </div>
  </div>

	<script type="text/javascript">
		function getDet(){
			var restName = document.getElementById("restName").value;
			var xhttp = new XMLHttpRequest();
			alert(restName);
			var link = "https://developers.zomato.com/api/v2.1/search?entity_id=1&entity_type=city&q="+restName+"&start=0&count=5";
        		xhttp.onreadystatechange = function() {
        			if (this.readyState == 4 && this.status == 200) {
						alert("here1");
		        		var result = JSON.parse(this.responseText);
		                var resObj = JSON.stringify(result);					
		          		alert(resObj);
		        	} else{
		        		alert("REadyState"+this.readyState);
		        		alert("ResposeState"+this.responseState);
		        	}
	            };
            xhttp.open("GET", link, true);
            xhttp.setRequestHeader("Accept:","application/json");
            xhttp.setRequestHeader("user-key:","1d7a85cfe73734af327392ee03b102cf");
            xhttp.send();
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