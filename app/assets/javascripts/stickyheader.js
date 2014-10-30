$(window).scroll(function() {
if ($(this).scrollTop() > 1){  
    $('.sticky-header').addClass("sticky");
  }
  else{
    $('.sticky-header').removeClass("sticky");
  }
});