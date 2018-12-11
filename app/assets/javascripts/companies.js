// playing in .js to practice Rails + AJAX
//[]Hijack click event
//[]Once in click event, fire AJAX request to get DATA
//Need to place that DATA in the DOM, (add to page)

$(function() {
  $('a.companies-beer').on('click', function(e) {
    e.preventDefault()
    alert('you clicked this link')
  })
})
