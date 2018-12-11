// playing in .js to practice Rails + AJAX
//[X]Hijack click event
//[X]Once in click event, fire AJAX request to get DATA
//[X]Need to place that DATA in the DOM, (add to page)
//[X]Rewrite AJAX in simpler way

$(function() {
  $('a.companies-beer').on('click', function(e) {
    //Just clicked on this link
    //use the HREF attr to as the URL

    //rewrite high-level abstraction
    $.get(this.href).success(function(response) {
      $('div.beers').html(response)
    })

    //low-level
    // $.ajax({
    //   method: 'GET',
    //   url: this.href
    // })
    // .done(function(response) { //calback function after AJAX(L10-13) is fired
    //   //GET the response
    //   $('div.beers').html(response) //this kind of works: it will sometimes go to a new page or
    //   //sometimes will append to the DOM
    //   //Want to load that data into the DOM
    // })
    e.preventDefault()
  })
})
