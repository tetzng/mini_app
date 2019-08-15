//= require activestorage
//= require jquery
//= require jquery_ujs
//= require materialize-sprockets
//= require turbolinks
//= require_tree .

document.addEventListener('DOMContentLoaded', function() {
  var elems = document.querySelectorAll('#slide-out');
  var instances = M.Sidenav.init(elems, "edge");

  var elems = document.querySelectorAll('.dropdown-trigger');
  var instances = M.Dropdown.init(elems, "alignment");
});

// // $(document).ready(function(){
// //   $('.sidenav').sidenav("edge");
// //   console.log("aaaaaaaaaa");
// // });

// // $('.dropdown-trigger').dropdown();

document.addEventListener('DOMContentLoaded', function() {
  var elems = document.querySelectorAll('.fixed-action-btn');
  var instances = M.FloatingActionButton.init(elems, {
    direction: 'bottom'
  });
});