$(document).ready(
function()
{
  $("#products_tips dt").click(
  function()
  {
    $("#products_tips dl").removeClass("current");
    $(this).parent().addClass("current");
  }
  );
  $("#recruitcontent dt").click(
  function()
  {
    $("#recruitcontent dl").removeClass("current");
    $(this).parent().addClass("current");
  }
  );
}
);