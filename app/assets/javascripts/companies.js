// playing in .js to practice Rails + AJAX
//[X]Hijack click event
//[]Once in click event, fire AJAX request to get DATA
//[]Need to place that DATA in the DOM, (add to page)

$(function() {
  $('a.companies-beer').on('click', function(e) {
    //Just clicked on this link
    //use the HREF attr to as the URL
    $.ajax({
      method: 'GET',
      url: this.href
    })
    .done(function(response) { //calback function after AJAX(L10-13) is fired
      //GET the response
      $('div.beers').html(response)
      //Want to load that data into the DOM
    })
    e.preventDefault()
    // alert('you clicked this link')
  })
})
