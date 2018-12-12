//playing in .js to practice Rails + AJAX
//[]Hijack click event
//[]Once in click event, fire AJAX request to get DATA
//[]Need to place that DATA in the DOM, (add to page)
$(function() {
  $('a.beer-styles-beer').on('click', function(e) {
    $.get(this.href).success(function(response) {
      console.log(response)
    })
    e.preventDefault()
  })
})
