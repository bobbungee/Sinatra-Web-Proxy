var isExtended = 0;

$(document).ready(function(){
  $('#swp_form').animate({
    left: "-380"
  })
  .hover(function(){$(this).animate({left: "0"});},function(){$(this).animate({left: "-380"});});
  $("#swp_sidebarContents").animate({"width":"toggle"});
  $("#swp_sidebarTab").click(function(){
    $("#swp_sidebarContents").animate({ "width":"toggle"},{duration:2000,queue:false
  });
  if(isExtended==0){
      $('#swp_sidebarTab').html($('#swp_sidebarTab').html().replace(/(\.[^.]+)$/, '-active$1'));
      isExtended++;
    }else{
      $('#swp_sidebarTab').html($('#swp_sidebarTab').html().replace(/-active(\.[^.]+)$/, '$1'));
      isExtended=0;
    }
  });
});
