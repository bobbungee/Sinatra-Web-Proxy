$(document).ready(function(){
  $('#swp_form').animate({
    left: "-380"
  })
  .hover(function(){
    $(this).animate({
      left: "0"
    });
  },function(){
    $(this).animate({
      left: "-380"
    });
  });
});
