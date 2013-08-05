function getClassName(el){
  var regex = /map-(.+)/;
  return $(el).attr('class').match(regex)[1];
}
function showTips(){
  $(this).closest('.map').find('.site').hide();
  $('#site-'+getClassName(this)).show();
}

function hideTips(){
  $('#site-'+ getClassName(this)).hide();
}
$(document).ready(function(){
  $('.imagemap area').live({mouseenter:showTips});
  $('.imagemap area').live({mouseleave:hideTips});
});

$(document).ready(function() {

 $(".iframe").fancybox({
          maxWidth	: 790,
          maxHeight	: 411,
          fitToView	: false,
          width		: '100%',
          height		: '100%',
          autoSize	: false,
          closeClick	: false,
          openEffect	: 'none',
          closeEffect	: 'none',
          helpers:  {
              overlay : null
          }
      });


});
