function getLocation() {
  if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(showPosition);
  } else {
      alert('Geolocation is not supported by this browser.');
  }
}

function showPosition(position) {
  var $depositLatitude = $('#deposit_latitude');
  var $depositLongitude = $('#deposit_longitude');

  var $depositSubmit = $('#deposits_submit');

  $depositLongitude.val(position.coords.longitude);
  $depositLatitude.val(position.coords.latitude);

  $depositSubmit.attr('disabled', false);
  $depositSubmit.val('Submit');
}
