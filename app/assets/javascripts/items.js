// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(function() {
	console.log("lala"); 
	initiate_geolocation();
});
function initiate_geolocation() {
	navigator.geolocation.getCurrentPosition(handle_geolocation_query, handle_errors);
}

function handle_errors(error) {
	switch(error.code) {
		case error.PERMISSION_DENIED:
			alert("user did not share geolocation data");
			break;
		case error.POSITION_UNAVAILABLE:
			alert("could not detect current position");
			break;
		case error.TIMEOUT:
			alert("retrieving position timed out");
			break;
		default:
			alert("unknown error");
			break;
	}
}

function handle_geolocation_query(position) {
	var image_url = "http://maps.google.com/maps/api/staticmap?sensor=false&center=" + position.coords.latitude + "," + position.coords.longitude + "&zoom=14&size=300x400&markers=color:blue|label:S|" + position.coords.latitude + ',' + position.coords.longitude;
	console.log(image_url);
	$("#map").remove();
	var container = document.getElementById("container");
	var img = document.createElement("img");
	img.src = image_url;

	img.id = "map";
	container.appendChild(img);

}