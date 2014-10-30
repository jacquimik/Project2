// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require_tree .

//THIS IS RESPONSIVE NAV BAR //
$(document).foundation();

//$(document).ready(function () {
  // Waiting for all the assets to load on the page

  // var menuIsOpen = false;
  // This is creating a 'global' variable to test whether the menu is open or not
  
  // On the click event of anything with the class menu-bar, call the following anonymous function
  // $(".menu-bar").click(function () {
  //   // This is testing whether menuIsOpen is true
  //   if (menuIsOpen) {
  //     $("li").css('display', 'none'); 
  //     // Reassign the global variable
  //     menuIsOpen = false;
  //   } else {
  //     $("li").css('display', 'block'); 
  //     menuIsOpen = true;
  //   }
  // });
  
  
  // Call an anonymous function everytime the resize event is run 
  // $(window).resize(function () {
    
    // if ( $(window).width() > 800 ) {
    //   $("li").css('display', 'inline-block');
    // }
    // 
  // });
  
//});
