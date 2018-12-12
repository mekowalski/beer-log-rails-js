//playing in .js to practice Rails + AJAX
//[x]Hijack click event
//[x]Once in click event, fire AJAX request to get DATA
//[x]Need to place that DATA in the DOM, (add to page)
$(function() {
  $('a.beer-styles-beer').on('click', function(e) {
    $.get(this.href).success(function(response) {
      $('div.beers').html(response)
    })
    e.preventDefault()
  })
})
