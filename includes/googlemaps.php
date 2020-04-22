<style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 450px;
        width: 650px;
        border-radius: 10px;
      }

    </style>
  </head>

    <div id="map"></div>
    <script>

      function initMap() {
        var myLatLng = {lat: 18.01, lng: -76.74 };

        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 18,
          center: myLatLng
        });

        var marker = new google.maps.Marker({
          position: myLatLng,
          map: map
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDdUFnXOr3fZKIZPnXViscgQOj4QbTOeU0&callback=initMap">
    </script>
 