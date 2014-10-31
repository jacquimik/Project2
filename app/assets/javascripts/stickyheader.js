$(window).scroll(function() {
if ($(this).scrollTop() > 1){  
    $('.sticky-header').addClass("sticky");
  }
  else{
    $('.sticky-header').removeClass("sticky");
  }
});

// $(window).ready (function() {
//   $('.stripe-button').on('click', function (event) {
//     event.preventDefault();
//     window.location.replace("http://sydneysister.herokuapp.com/");
//     });
// });