// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/
// playing in .js to practice Rails + AJAX

$(function() {
  $('a.companies').on('click', function(e) {
    alert('you clicked this link')
    e.preventDefault()
  })
})
