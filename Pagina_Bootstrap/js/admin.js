$(function () {
  	$('.navbar-toggle-sidebar').click(function () {
  		$('.navbar-nav').toggleClass('slide-in');
  		$('.side-body').toggleClass('body-slide-in');
  		$('#search').removeClass('in').addClass('collapse').slideUp(200);
  	});

  	$('#search-trigger').click(function () {
  		$('.navbar-nav').removeClass('slide-in');
  		$('.side-body').removeClass('body-slide-in');
  		$('.search-input').focus();
  	});
  });

  $(document).ready(function(){
    $("#modalRegister").modal('show');
  });

  $(document).ready(function(){
		$("#modalError").modal('show');
	});

var url = document.location.toString();
if ( url.match('#') ) {
    $('#'+url.split('#')[1]).addClass('in');
}
