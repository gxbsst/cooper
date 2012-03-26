$(document).ready(
function()
{
  $("#productdetailmenu li").mouseover(
  function()
  {
    $("#productdetailmenu li").removeClass("current");
    $(this).addClass("current");
    $("#product_detail01").hide();
    $("#product_detail02").hide();
    $("#product_detail03").hide();
    $("#product_detail04").hide();
    $("#product_detail05").hide();
    $("#product_detail06").hide();
    $("#product_detail0" + $(this).attr("tabindex")).show();
  }
  );
}
);