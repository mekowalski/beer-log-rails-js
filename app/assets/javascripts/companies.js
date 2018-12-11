// playing in .js to practice Rails + AJAX
//[X]Hijack click event
//[X]Once in click event, fire AJAX request to get DATA
//[X]Need to place that DATA in the DOM, (add to page)
//[X]Rewrite AJAX in simpler way

$(function() {
  $('a.companies-beer').on('click', function(e) {
    //Just clicked on this link
    //use the HREF attr to as the URL

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

    //Requesting HTML
    //rewrite high-level abstraction
    // $.get(this.href).success(function(response) {
    //   $('div.beers').html(response)
    // })

    //Requesting JSON
    $.get(this.href).success(function(json) {
      //i'm not iterating because i'm specificially working with a show, not an index
      // debugger
      //i also am not able to figure this one out so HTML version works well for now
      $('div.beers').append(json)
    })

    e.preventDefault()
  })
})
