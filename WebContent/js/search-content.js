		var jsonObj;
		var results_found;
		var restName;
		var address;
		var rating;
		var votes;
		var start;
		var end;
		var restId = [];
		
		var addFav = function(ref){
			var request = new XMLHttpRequest();
			var btnId = ref.id;
			var num = btnId[8];
			var id = "";
			var fav;
			
			id = "curRestName"+num;
			restName = document.getElementById(id).innerHTML;
			id = "curRestAdd"+num;
			address = document.getElementById(id).innerHTML;
			id = "curRestRat"+num;
			rating = document.getElementById(id).innerHTML;
			id = "curRestVote"+num;
			votes = document.getElementById(id).innerHTML;
			
			request.open("GET", "http://localhost:8081/Restaurant-Search/indexServlet?op=putFav&restName="+restName+"&add="+address+"&rating="+rating+"&votes="+votes+"&restId="+restId[num-1] , true);
	    	request.send();  

			request.onreadystatechange = function() {
        		if (this.readyState == 4 && this.status == 200) {
        			alert(this.responseText);
        		}
			};
		}
		
		function getFav(){
			var request = new XMLHttpRequest();
			var response;
			request.open("GET", "http://localhost:8081/Restaurant-Search/indexServlet?op=getFav" , true);
	    	request.send();		
	    	
			request.onreadystatechange = function() {
        		if (this.readyState == 4 && this.status == 200) {
        			jsonObj = JSON.parse(this.responseText);
					loadDOMFav();
        		}
			};
		}
		
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
			var cardId = "card";
			var startCount = start;
			var endCount = end;
			var tempId = "";
			var btnId = "fav-btn-";
			results_found = jsonObj.results_found;
			if(results_found > 1){
				document.getElementById("searchResult").style.display = "block";
				document.getElementById("dispRestName").innerHTML = "Restaurant Name: "+document.getElementById("restName").value;
				document.getElementById("resultCount").innerHTML = "Found: "+results_found+" Restaurants";
				document.getElementById("displayCount").innerHTML = "Displaying: "+startCount+"-"+endCount;

				document.getElementById("btn-next").style.display = "block";
				document.getElementById("btn-prev").style.display = "block";
				document.getElementById("outHeading").innerHTML = "Search Results";
				document.getElementById("dispRestName").style.display = "block";


				while(i <= 5){
					var element = document.getElementById("list-unstyled");
					var li = document.createElement("li");
					li.setAttribute("id","li-"+i);
					element.appendChild(li);
					var newCard = "<li class='my-4'><div class='card' id='card"+i+"' style='display: none;'><div class='card-body'><div class='container'><div class='row'><div class='col-sm'><p class='text-left'>Restaurant Name:</p></div><div class='col-sm col-6'><p id='curRestName"+i+"' class='text-left'></p></div></div><div class='row'><div class='col-sm'><p class='text-left'>Restaurant Address:</p></div><div class='col-sm col-6'><p id='curRestAdd"+i+"' class='text-left'></p></div></div><div class='row'><div class='col-sm'><p class='text-left' class='text-left' id='labelCurRestRat1'>Restaurant Rating:</p></div><div class='col-sm col-6'><p id='curRestRat"+i+"'  class='text-left'></p></div></div><div class='row'><div class='col-sm'><p class='text-left' class='text-left' id='labelCurRestVote1'>Restaurant Votes:</p></div><div class='col-sm col-6'><p id='curRestVote"+i+"'  class='text-left'></p></div></div><button type='button' class='btn btn-info' id='fav-btn-"+i+"' onClick='addFav(this)'>Add to Fav</button></div></div></div></li>";
					document.getElementById("li-"+i).innerHTML = newCard;
					
					tempId= cardId+i;
					document.getElementById(tempId).style.display = "block";
					restId[i-1] = jsonObj.restaurants[i].restaurant.R.res_id;
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

					tempId = btnId+i;
					document.getElementById(tempId).style.display = "block";
					i++;
				}				
				tempId= cardId+i;				
				while(document.getElementById(tempId) != null){
					tempId= cardId+i;				
					document.getElementById(tempId).style.display = "none";
					i++;
				}
				
				
			} else{
				alert("No restaurants found");
			}
		}	
		
		function loadDOMFav(){
			var i = 1;
			var id = "";
			var cardId = "card";
			var tempId = "";
			var startCount = start;
			var endCount = end;
			var btnId = "fav-btn-";
			results_found = jsonObj.count;
			if(results_found > 1){
				document.getElementById("searchResult").style.display = "block";
				document.getElementById("dispRestName").innerHTML = "Restaurant Name: "+document.getElementById("restName").value;
				document.getElementById("resultCount").innerHTML = "";
				document.getElementById("displayCount").innerHTML = "Displaying: "+results_found+" results";

				document.getElementById("btn-next").style.display = "none";
				document.getElementById("btn-prev").style.display = "none";
				document.getElementById("dispRestName").style.display = "none";
				document.getElementById("outHeading").innerHTML = "Favorites";
				
				while(i <= results_found){
					var element = document.getElementById("list-unstyled");
					var li = document.createElement("li");
					li.setAttribute("id","li-"+i);
					element.appendChild(li);
					var newCard = "<li class='my-4'><div class='card' id='card"+i+"' style='display: none;'><div class='card-body'><div class='container'><div class='row'><div class='col-sm'><p class='text-left'>Restaurant Name:</p></div><div class='col-sm col-6'><p id='curRestName"+i+"' class='text-left'></p></div></div><div class='row'><div class='col-sm'><p class='text-left'>Restaurant Address:</p></div><div class='col-sm col-6'><p id='curRestAdd"+i+"' class='text-left'></p></div></div><div class='row'><div class='col-sm'><p class='text-left' class='text-left' id='labelCurRestRat1'>Restaurant Rating:</p></div><div class='col-sm col-6'><p id='curRestRat"+i+"'  class='text-left'></p></div></div><div class='row'><div class='col-sm'><p class='text-left' class='text-left' id='labelCurRestVote1'>Restaurant Votes:</p></div><div class='col-sm col-6'><p id='curRestVote"+i+"'  class='text-left'></p></div></div><button type='button' class='btn btn-info' id='fav-btn-"+i+"' onClick='addFav(this)'>Add to Fav</button></div></div></div></li>";
					document.getElementById("li-"+i).innerHTML = newCard;
					
					restId[i-1] = jsonObj.restaurants[i-1].id;
					tempId= cardId+i;
					document.getElementById(tempId).style.display = "block";
					id = "curRestName"+i;
					restName = jsonObj.restaurants[i-1].name;
					document.getElementById(id).innerHTML = restName;

					id = "curRestAdd"+i;
					address = jsonObj.restaurants[i-1].address;
					document.getElementById(id).innerHTML = address;

					id = "curRestRat"+i;				
					rating = jsonObj.restaurants[i-1].rating;
					document.getElementById(id).innerHTML = rating;
					
					id = "curRestVote"+i;
					votes = jsonObj.restaurants[i-1].votes;
					document.getElementById(id).innerHTML = votes;

					tempId = btnId+i;
					document.getElementById(tempId).style.display = "none";					
					i++;
				}				
				
				while(i <= 5){
					tempId= cardId+i;
					document.getElementById(tempId).style.display = "none";
					i++;
				}
				
			} else {
				alert("No Favorites");
			}			
		}
				