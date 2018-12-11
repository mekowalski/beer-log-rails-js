// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/
// playing in .js to practice Rails + AJAX

$(function() {
  $('a.companies-beer').on('click', function(e) {
    e.preventDefault()
    alert('you clicked this link')
  })
})
