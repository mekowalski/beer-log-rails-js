// playing in .js to practice Rails + AJAX
//[X]Hijack click event
//[X]Once in click event, fire AJAX request to get DATA
//[X]Need to place that DATA in the DOM, (add to page)
//[X]Rewrite AJAX in simpler way
//MANUALLY TRIGGERING AJAX - CLIENT SIDE LOGIC MODEL

// $(function() {
  // $('a.companies-beer').on('click', function(e) {
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
$(function() {
  $('a.companies-beer').on('click', function(e) {
    $.get(this.href).success(function(response) {
      $('div.beers').html(response)
    })
    e.preventDefault()
  })
})

$(function() {
  $('a.companies-new-beer').on('click', function(e) {
    e.preventDefault()
    alert('this worked!')
  })
})

    //Requesting JSON
    // $.get(this.href).success(function(json) {
    //   //i'm not iterating because i'm specificially working with a show, not an index
    //   // debugger
    //   //i also am not able to figure this one out so HTML version works well for now
    //   $('div.beers').append(json)
    // })

  //   e.preventDefault()
  // })
// })

//ASK SERVER WHAT WHAT TO DO VIA AJAX - SERVER SIDE AJAX MODEL
//I do not like this version, it's more abstraction that i'm not familiar with
// $(function() { //click on link and fire AJAX request to server
//   $('a.companies-beer').on('click', function(e) {
//     $.ajax({ //server will respond with JavaScript(containing instructions on what to do), not HTML or JSON
//       url: this.href,
//       dataType: 'script' //this is expecting a js view file such ie: show.js.erb
//     })
//     e.preventDefault()
//   })
// })
