$(document).ready(function() {

	var marketId = [];
	var allLatlng = [];
	var allMarkers = [];
	var markerName = [];
	var infowindow = null;
	var pos;
	var userCords;
	//var userLat;
	//var userLng;
	var tempMarkerHolder = [];
	// This is used if we want to ask our user whether to provide their current location or not
 	if (navigator.geolocation) {

		function error(err) {
			console.warn('ERROR(' + err.code + '):' + err.message);
		}
		// success will assign user's coords to userCords 
		function success(pos) {
			userCords = pos.coords;
		}
		navigator.geolocation.getCurrentPosition(success, error);

	} else {
		alert("Geolocation is not supported in your browser");
	} 

	// MAP OPTIONS CONTROLS
	var mapOptions = {
		zoom: 5,
		center: new google.maps.LatLng(37.09024, -100.712891),
		panControl: false, //can set to true to allow pan options (which we can customize)
		panControlOptions: {
			position: google.maps.ControlPosition.BOTTOM_LEFT
		},
		zoomControl: true, //can set to false to disallow zoom options (we can currently customize this)
		zoomControlOptions: {
			style: google.maps.ZoomControlStyle.LARGE,
			position: google.maps.ControlPosition.RIGHT_CENTER
		},
		scaleControl: false
	};

	//INFO WINDOW OPTIONS CONTROLS
	//Actual content will come in later
	infowindow = new google.maps.InfoWindow({
		content: "holding..."
	});

	//PREPARE A DIV FOR THE ACTUAL GOOGLE MAP
	map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

	//chooseState is an id defined in index.html, which comes from the form that the user types in
	$('chooseState').submit(function(){
		//textZip is the input from the user, this is id can be found in index.html
		var stateInp = $("textState").val();
		//defining the variable that will hold the retrieved zip and adding it to the proper URL 
		var accessURL
		var geocoder =  new google.maps.Geocoder();
		alert("I'M IN HERE!");
		//When given the state input, geocoder.geocode will get that states Latitude and Longitude
    	geocoder.geocode({ 'textState': stateInp}, function(results, status) {
    		if (status == google.maps.GeocoderStatus.OK) {
    			userCords = results
    			//userLat = results[0].geometry.location.lat();
    			//userLng = results[0].geometry.location.lng();
            	//alert("location : " + results[0].geometry.location.lat() + " " +results[0].geometry.location.lng());
            } else {
            	alert("Something went wrong " + status);
            }
        });
		//This checks whether our user gave us a valid state name
		if(stateInp) {
			accessURL = "http://search.ams.usda.gov/farmersmarkets/v1/data.svc/locSearch?lat=" + userCords[0].geometry.location.lat(); + "&lng=" + userCords[0].geometry.location.lng();
		} else {
			alert("Please provide us with a valid US state name")
		}

		//Use the state name and return all market ids in area.
		$.ajax({
				type: "GET",
				contentType: "application/json; charset=utf-8",
				url: accessURL,
				dataType: 'jsonp',
				success: function (data) {
					//This will push marketIds and marketNames to their corresponding arrays
					//These marketIds and marketNames are specific to the "accessURL"
					$.each(data.results, function (i, val) {
						marketId.push(val.id);
						marketName.push(val.marketname);
					});
					console.log(marketName);
					var counter = 0;
					//Now, use the id to get detailed info
					$.each(marketId, function (k, v){
						$.ajax({
								type: "GET",
								contentType: "application/json; charset=utf-8",
								// submit a get request to the restful service mktDetail.
								url: "http://search.ams.usda.gov/farmersmarkets/v1/data.svc/mktDetail?id=" + v,
								dataType: 'jsonp',
								success: function (data) {
								for (var key in data) {
									var results = data[key];
									//console.log(results);
									//The API returns a link to Google maps containing lat and long. This pulls it apart.
									var googleLink = results['GoogleLink'];
									var latLong = decodeURIComponent(googleLink.substring(googleLink.indexOf("=")+1, googleLink.lastIndexOf("(")));
									var split = latLong.split(',');
									var latitude = split[0];
									var longitude = split[1];
									//set the markers.	  
									myLatlng = new google.maps.LatLng(latitude,longitude);
						  
									allMarkers = new google.maps.Marker({
										position: myLatlng,
										map: map,
										title: marketName[counter],
										html: 
												'<div class="markerPop">' +
												'<h1>' + marketName[counter].substring(4) + '</h1>' + //substring removes distance from title
												'<h3>' + results['Address'] + '</h3>' +
												'<p>' + results['Products'].split(';') + '</p>' +
												'<p>' + results['Schedule'] + '</p>' +
												'</div>'
									});
									//put all lat long in array
									allLatlng.push(myLatlng);
									//Put the marketrs in an array
									tempMarkerHolder.push(allMarkers);
									counter++;
									//console.log(counter);
								};
									google.maps.event.addListener(allMarkers, 'click', function () {
										infowindow.setContent(this.html);
										infowindow.open(map, this);
									});
									//console.log(allLatlng);
									//  Make an array of the LatLng's of the markers you want to show
									//  Create a new viewpoint bound
									var bounds = new google.maps.LatLngBounds ();
									//  Go through each...
									for (var i = 0, LtLgLen = allLatlng.length; i < LtLgLen; i++) {
								  		//  And increase the bounds to take this point
								  		bounds.extend (allLatlng[i]);
								  	}
									//  Fit these bounds to the map
									map.fitBounds (bounds);
								}
							});
							}); //end .each
							}
						});
						return false; //this will prevent the form from submitting
					});
					});
