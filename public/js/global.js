﻿$(document).ready(
function()
{
  $("#topselectcontent").hover(
  function(){$(this).find(".none").show();},function(){$(this).find(".none").hide();}
  );
  $("#leftcontent dt").click(
  function()
  {
    $("#leftcontent dl").removeClass("current");
    $(this).parent().addClass("current");
  }
  );
}
);