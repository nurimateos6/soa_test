
var map
var geocoder;

function initMap() {
  // The location of Uluru
  var uluru = {lat: -25.344, lng: 131.036};
  // The map, centered at Uluru
  var map = new google.maps.Map(
      document.getElementById('map'), {
      		zoom: 4,
      		center: uluru,
      		    disableDefaultUI: true,
      		    mapTypeControl: true,
      		  
      		styles: [
	            {elementType: 'geometry', stylers: [{color: '#242f3e'}]},
	            {elementType: 'labels.text.stroke', stylers: [{color: '#242f3e'}]},
	            {elementType: 'labels.text.fill', stylers: [{color: '#746855'}]},
	            {
	              featureType: 'administrative.locality',
	              elementType: 'labels.text.fill',
	              stylers: [{color: '#d59563'}]
	            },
	            {
	              featureType: 'poi',
	              elementType: 'labels.text.fill',
	              stylers: [{color: '#d59563'}]
	            },
	            {
	              featureType: 'poi.park',
	              elementType: 'geometry',
	              stylers: [{color: '#263c3f'}]
	            },
	            {
	              featureType: 'poi.park',
	              elementType: 'labels.text.fill',
	              stylers: [{color: '#6b9a76'}]
	            },
	            {
	              featureType: 'road',
	              elementType: 'geometry',
	              stylers: [{color: '#38414e'}]
	            },
	            {
	              featureType: 'road',
	              elementType: 'geometry.stroke',
	              stylers: [{color: '#212a37'}]
	            },
	            {
	              featureType: 'road',
	              elementType: 'labels.text.fill',
	              stylers: [{color: '#9ca5b3'}]
	            },
	            {
	              featureType: 'road.highway',
	              elementType: 'geometry',
	              stylers: [{color: '#746855'}]
	            },
	            {
	              featureType: 'road.highway',
	              elementType: 'geometry.stroke',
	              stylers: [{color: '#1f2835'}]
	            },
	            {
	              featureType: 'road.highway',
	              elementType: 'labels.text.fill',
	              stylers: [{color: '#f3d19c'}]
	            },
	            {
	              featureType: 'transit',
	              elementType: 'geometry',
	              stylers: [{color: '#2f3948'}]
	            },
	            {
	              featureType: 'transit.station',
	              elementType: 'labels.text.fill',
	              stylers: [{color: '#d59563'}]
	            },
	            {
	              featureType: 'water',
	              elementType: 'geometry',
	              stylers: [{color: '#17263c'}]
	            },
	            {
	              featureType: 'water',
	              elementType: 'labels.text.fill',
	              stylers: [{color: '#515c6d'}]
	            },
	            {
	              featureType: 'water',
	              elementType: 'labels.text.stroke',
	              stylers: [{color: '#17263c'}]
	            }
          	]
});
  geocoder = new google.maps.Geocoder();
  var infoWindow = new google.maps.InfoWindow;
  // var zipCode = '49030';
    geocodePlaceId(geocoder, map, infowindow);


  // The marker, positioned at Uluru
  var marker = new google.maps.Marker({position: uluru, map: map});
}



               

          // Change this depending on the name of your PHP or XML file
        
                //eigenes
                var summaryPanel = document.getElementById('directions-panel');
                summaryPanel.innerHTML = '';               

      function downloadUrl(url, callback) {
        var request = window.ActiveXObject ?
            new ActiveXObject('Microsoft.XMLHTTP') :
            new XMLHttpRequest;

        request.onreadystatechange = function() {
          if (request.readyState == 4) {
            request.onreadystatechange = codeAddress;
            callback(request, request.status);
          }
        };

        request.open('GET', url, true);
        request.send(null);
      }

function codeAddress() {
	var zipCode = '49030';//document.getElementById("PLZ").innerHTML;
	        geocoder.geocode({
	                'address': zipCode, "componentRestrictions":{"country":"ES"}
	        }, function (results, status) {
	                if (status == google.maps.GeocoderStatus.OK) {
	                        map.setCenter(results[0].geometry.location);
	                        var marker = new google.maps.Marker({
	                                map: map,
	                                position: results[0].geometry.location
	                        });
	                } else {
	                        alert("Geocode was not successful for the following reason: " + status);
	                }
	        });
}




