$(document).ready(function() {
 $(".iframe").fancybox({
  padding: 8,
  margin: 0,
  autoCenter: false,
  maxWidth      : 669,
  maxHeight     : 414,
  fitToView     : false,
  width         : '100%',
  autoScale     :  false,
  height        : '100%',
  autoSize      : false,
  closeClick    : false,
  openEffect    : 'none',
  closeEffect   : 'none',
  helpers:  {
    overlay : {
        css : { 'overflow' : 'hidden' }
      }
              // overlay : null
            }
   });

});
