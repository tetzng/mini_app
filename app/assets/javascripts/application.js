//= require activestorage
//= require jquery
//= require jquery_ujs
//= require materialize-sprockets
//= require turbolinks
//= require_tree .

document.addEventListener('turbolinks:load', function() {
  elem = document.querySelector('#slide-out');
  instance = new M.Sidenav(elem, {});
});
document.addEventListener('turbolinks:before-visit', function() {
  elem = document.querySelector('#slide-out');
  instance = M.Sidenav.getInstance(elem);
  if (instance){
    instance.destroy();
  }
});