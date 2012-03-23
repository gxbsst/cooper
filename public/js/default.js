$(document).ready(
function()
{
  $("#searchmenu li").mouseover(
  function()
  {
    $("#searchmenu li").removeClass("current");
    $(this).addClass("current");
    $("#searchcontent .body").hide();
    $("#searchcontent .body0" + $(this).attr("tabindex")).show();
  }
  );
  $("#prevbtn").click(
  function()
  {
    if($("#bannerlist ul").css("left").replace("px","") < (-980 * ($("#bannerlist ul li").length - 2)))
    {
      $("#bannerlist ul").animate({left:'0px'},'fast');
    }
    else
    {
     $("#bannerlist ul").animate({left:'-=980px'},'fast');
    }
  }
  );
  $("#nextbtn").click(
  function()
  {
    if($("#bannerlist ul").css("left").replace("px","") >= 0)
    {
     $("#bannerlist ul").animate({left:"-" + 980 * ($("#bannerlist ul li").length - 1) + "px"},'fast');
    }
    else
    {
     $("#bannerlist ul").animate({left:'+=980px'},'fast');
    }
  }
  );
  setInterval(function(){$("#prevbtn").click();},5000);
  $("#bannermenus li").mouseover(
  function()
  {
    $("#bannermenus li").removeClass("current");
    currents = $(this);
    $(this).addClass("current");
    $("#bannerlist ul").stop().animate({top:-230*Number($(this).attr("tabindex"))});
  }
  );
  setInterval("scrollimg()",5000);
}
);
var current = $("#bannermenus li:first");
function scrollimg()
{
  current = $(current).next();
  if($(current).length <= 0)
  current = $("#bannermenus li:first");
  $(current).mouseover();
}
