var mymap = L.map('mapid').setView([39.77691, 64.41315], 8);

L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoicGlja2V0dGoiLCJhIjoiY2pzM2Q4OTc4MmVpZjQzbm13azhocmMxciJ9.pS0odo8k59Q7-I9-aMzwVg', {
    attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
    maxZoom: 18,
    id: 'mapbox.streets',
    accessToken: 'pk.eyJ1IjoicGlja2V0dGoiLCJhIjoiY2pzM2Q4OTc4MmVpZjQzbm13azhocmMxciJ9.pS0odo8k59Q7-I9-aMzwVg'
}).addTo(mymap);

//not sure why these aren't working below

var marker = L.marker([39.77691, 64.41315]).addTo(mymap);

var circle = L.circle([39.77691, 64.41315], {
    color: 'red',
    fillColor: '#f03',
    fillOpacity: 0.5,
    radius: 1000000
}).addTo(mymap);
