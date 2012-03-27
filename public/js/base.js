function getNewWindowLinks() {
	$("a.non-html, a.off-site").click(function(e) {
		var event;
		if (!e) {
			 event = window.event;
		}	
		else { 
			event = e;
		}
		if (event.shiftKey || event.altKey || event.ctrlKey || event.metaKey) {			
			return true;
		}
		else {				
			var newWindow = window.open(this.getAttribute('href'), '', '');
			if (newWindow) {
			    try {
			        if (newWindow.focus()) {
				        newWindow.focus();
				    }
			    }
			    catch(err) {		        
			        return false;		        
			    }	
			return false;
			}
		return true;
		}
	});
}

function createAlternateRows() {
	$("tr:even:not(:first-child)").addClass("alt");	
}

function initEventTracking() {	
	$(".track-event").click(function() {	
		if ($(this).hasClass("off-site")) {
			gaCategory = "Off-Site";
			gaAction = "Go to " + $(this).attr("href");
			gaLabel = "From " + window.location;
		}
		if (location.hash == "#test") {
			alert(gaCategory + ", " + gaAction + ", " + gaLabel);	
			return false;		
		}
		else {	
			_gaq.push(['a._trackEvent', gaCategory, gaAction, gaLabel]);
			_gaq.push(['b._trackEvent', gaCategory, gaAction, gaLabel]); 
		}	
	});	
}

function initVirtualPageTracking() {
	$("a.track-virtual-page").click(function() {
		var strHref = $(this).attr("href");
		var aryHrefSplit = strHref.split("/");
		aryHrefSplit.reverse();
		var strFileName = aryHrefSplit[0];
		var strPath = "/downloads/" + strFileName;
		if (location.hash == "#test") {
			alert(strPath);
		}
		else {				
			_gaq.push(['a._trackPageview', strPath]);
			_gaq.push(['b._trackPageview', strPath]);
		}
	});
}

function addClasses() {
	$("a[href^='http://'],a[href^='https://'],a[target='_blank']").addClass("off-site");
	$("a[href$='.pdf'],a[href$='.jpg'],a[href$='.gif'],a[href$='.png'],a[href$='.doc'],a[href$='.docx'],a[href$='.xls'],a[href$='.xlsx'],a[href$='.txt'],a[href$='.avi'],a[href$='.wma'],a[href$='.mov']").addClass("non-html");
	$("a[href$='.pdf']").addClass("pdf");
	$("a[href$='.doc'],a[href$='.docx']").addClass("ms-word");
	$("a[href$='.xls'],a[href$='.xlsx']").addClass("ms-excel");
	$("a[href$='.txt']").addClass("text");	
	$("a.pdf").addClass("track-virtual-page");	
	var currentDomain = window.location.host;
	currentDomain = currentDomain.toLowerCase();
	var currentDomainSelector = "a[href*='" + currentDomain + "']";	
	var additionalDomainSelectors = "";
	currentDomainSelector = currentDomainSelector + additionalDomainSelectors;		
	$(currentDomainSelector).removeClass("off-site");
	$("a[rel^='#'], a.create-overlay-trigger, #buttons a[rel='cooper']").removeClass("non-html").removeClass("off-site");	
	$("a.off-site").addClass("track-event");
}

function clearMePrevious() {	
	var clearMePrevious = '';
	$.each($('.clearMeFocus'), function () {
	    $(this).attr('title', $(this).val());			
	});
	$('.clearMeFocus').focus(function () {
	    if ($(this).val() == $(this).attr('title')) {
	        clearMePrevious = $(this).val();
	        $(this).val('');
	    }		
	});
	$('.clearMeFocus').blur(function () {
	    if ($(this).val() == '') {
	        $(this).val(clearMePrevious);				
	    }
	});
}

function initMainNav() {
	var intDocWidth = $("#main").width();
	var intTopNavPos = $("#nav-primary ul:first-child").position();	
	var intDropDownWidth;
	var intDropDownPos;
	var intTotalDropDownPos;
	var intMaxWidth = 0;
	$("#nav-primary ul:first-child li:last-child").addClass("last");
	$.each($("#nav-primary li:not(li li)"), function() {
		$(this).has("ul").addClass("has-children");
		intDropDownWidth = $(this).children("ul").width();
		intDropDownPos = $(this).position();
		intTotalDropDownPos = intDropDownWidth + intTopNavPos.left + intDropDownPos.left;
		if (intTotalDropDownPos > intDocWidth) {
			$(this).children("ul").addClass("edge");
		}
	});
	$("#nav-primary li").hoverIntent(showMenu,hideMenu);
	function showMenu() {
		$(this).addClass("active");
		if ($.browser.msie && $.browser.version=="7.0") {
			$(this).children("ul").show();
		}
		else {
			$(this).children("ul").slideDown();
		}
		if ($.browser.msie && $.browser.version=="6.0") {
			$("div#find .search-part").css("visibility","hidden");
		}
	}
	function hideMenu() {
		$(this).removeClass("active");	
		if ($.browser.msie && $.browser.version=="7.0") {
			$(this).children("ul").hide();
		}
		else {
			$(this).children("ul").fadeOut("fast");
		}
		if ($.browser.msie && $.browser.version=="6.0") {
			$("div#find .search-part").css("visibility","visible");
		}
	}	
}

function initMaps() {
	var objMapElement = $("#interactive-map");	
	var objImageMapElement = $("#interactive-map area");	
	var strMapClass;
	var strSiteId;
	var selSiteElement;
	objMapElement.addClass("active");
	objMapElement.click(function() {
		objMapElement.find(".imagemap").show();
		objMapElement.find(".site").hide();
		objMapElement.attr("class","active");
	});
	objImageMapElement.hoverIntent(showHighlight,hideHighlight);
	function showHighlight() {
		objMapElement.attr("class","active");
		strMapClass = $(this).attr("class");
		objMapElement.addClass(strMapClass);			
		strSiteId = strMapClass.replace("map","site");
	}
	function hideHighlight() {
		objMapElement.mouseout(function() {		
			if (objMapElement.find(".site:visible").length == 0) {
				objMapElement.attr("class","active");	
			}			
		});
	}
	objImageMapElement.click(function() {
		objMapElement.find(".imagemap").hide();
		objMapElement.find(".site").hide();
		selSiteElement = "#" + strSiteId;
		$(selSiteElement).fadeIn();
		return false;
	});
	if (objMapElement.length > 0) {
		$("div#start").hide();
	}
	$("div#start").addClass("active");
	var objSmallMapTrigger = $("div#start.active > p");
	var objSmallMapElement = $("div#start.active div.interactive-map");
	var strSmallMapClass;
	var strSmallMapSiteClass;
	var objSmallMapSite;
	objSmallMapTrigger.click(function() {
		objSmallMapElement.fadeIn();
		objSmallMapTrigger.addClass("active");
		return false;
	});
	$("div#nav-primary, div#nav-secondary, div#content").mouseover(function() {
		objSmallMapElement.hide();
		objSmallMapElement.find("a").hide();		
		objSmallMapTrigger.removeClass("active");
	});
	objSmallMapElement.find("area").hoverIntent(function() {
		strSmallMapClass = $(this).attr("class");
		strSmallMapSiteClass = strSmallMapClass.replace("map","site");		
		if (!objSmallMapElement.find("." + strSmallMapSiteClass).is(":visible")) {
			objSmallMapElement.find("a").hide();
			objSmallMapElement.find("." + strSmallMapSiteClass).fadeIn();
		}		
		return false;
	}	
	,function() {});
}

function initAccordion() {
	$("#accordion").addClass("active");
	var intIndex;
	if ($("#accordion").parent().attr("class") == "comparison") {
		intIndex = 2;
	}
	else {
		intIndex = 0;
	}
	$("#accordion.active").tabs("#accordion.active div.pane", {
		tabs: 'h2', 
		effect: 'slide', 
		initialIndex: intIndex
	});
	$.each($("h2 span.trigger"), function() {
		if ($(this).text() == "") {
			$(this).parent("h2").hide();
		}
	});		
}

function initScrollable() {
	$(".scrollable").scrollable({
		circular: true
	}).autoscroll({ 
		interval: 10000,
		autoplay: true,
		autopause: true		
	}).navigator();
}

function initOverlay() {
	$(".simple_overlay, .apple_overlay").addClass("inactive");	
	var strId;
	$.each($("a.create-overlay-trigger"), function() {
		strId = "#" + $(this).next(".simple_overlay, .apple_overlay").attr("id");
		$(this).attr("rel",strId);
	});
	$(".simple_overlay, .apple_overlay").appendTo("body");
	$("a[rel^=#]").overlay({
		fixed: false, 
		mask: { color: null },
		closeOnClick: true,	
		onBeforeLoad: function() {
					var wrap = this.getOverlay().find(".overlayContent");					
					wrap.load(this.getTrigger().attr("href"));
				}	
	});
	$(".simple_overlay a.close, .apple_overlay a.close").click(function() {				
		if ($(this).parent().find(".BrightcoveExperience").length > 0) {
			videoPlayer.pause();
		}		
		return false;
	});	
}

function initTireFlash() {
	if ($("div#footer").is(":visible")) {
		var strFlashPath = $("div#tire-image img").attr("rel");
		if (strFlashPath != "" && strFlashPath != null) {
			var FO = { 
				movie:strFlashPath, 
				width:'340', 
				height:'260', 
				majorversion:'7', 
				build:'0', 
				loop:'true', 
				menu:'false', 
				quality:'best',	
				wmode:'transparent',	
				bgcolor:'transparent' 
				}; 
			UFO.create(FO, 'tire-image');
		}	
	}	
}

function initCufon() {
	if ($("div#footer").is(":visible")) {
		$(".cufon").addClass("cufon-active");
		if ($(".cufon-active").length > 0) {
			Cufon.replace(".cufon-active.r", { fontFamily: "GarageGothic Regular" });	
			Cufon.replace(".cufon-active.b", { fontFamily: "GarageGothic Bold" });
			Cufon.replace("#content.comparison li a.cufon-active", { fontFamily: "GarageGothic Bold",	textShadow: '1px 1px #708b64, -1px -1px #708b64' });			
		}
	}
}

function initContentRollovers() {
	$("div.category").addClass("active");		
	$("div.category").click(function() {
		window.location.href = $(this).find("p.button a").attr("href");
	});
}

function initSwitcher() {	
	var objContent = $(".switcher .items li");
	var objButton = $(".switcher .nav li");
	var intButtons = $(".switcher .nav li").length;
	var intIndex;
	$.each(objButton, function() {		
		if ($(this).hasClass("active")) {			
			intIndex = $(this).index();
			objContent.hide();
			objContent.eq(intIndex).show();
		}
	});
	objButton.click(function() { 
		clearTimeout(rotateThis);
		objButton.removeClass("active");
		$(this).addClass("active");
		Cufon.refresh();
		objContent.hide();
		intIndex = $(this).index();
		objContent.eq(intIndex).fadeIn();
	});		
	function rotateThis() {
		$.each(objButton, function() {		
			if ($(this).hasClass("active")) {
				intIndex = $(this).index() + 1;
				if (intIndex >= intButtons) {f
					intIndex = 0;
				}
			}					
		});
		objButton.removeClass("active");
		objButton.eq(intIndex).addClass("active");			
		Cufon.refresh();
		objContent.hide();
		objContent.eq(intIndex).fadeIn();
		window.setTimeout(rotateThis, 10000);
	}
	if (intButtons > 0) {
		window.setTimeout(rotateThis, 10000);
	}
}

function adjustDomains() {
   var strCurrentDomain = window.location.host;	
	var strHref;
	var strCorporateSiteDomain = "";
	var strConsumerSiteDomain = "";	
	switch (strCurrentDomain) {	   
	   case "coopercorp.fahlgrengrip.com":
	   case "coopertires.fahlgrengrip.com":
	      strCorporateSiteDomain = "http://coopercorp.fahlgrengrip.com";
	      strConsumerSiteDomain = "http://coopertires.fahlgrengrip.com";
	      break;
	   case "coopertire.com":
	   case "us.coopertire.com":	
	      strCorporateSiteDomain = "http://coopertire.com";
	      strConsumerSiteDomain = "http://us.coopertire.com";
	      break;	   
	}
	if (strCorporateSiteDomain != "" && strConsumerSiteDomain != "") {	
      $.each($("a[href^='http://'],a[href^='https://']"), function() {
         strHref = $(this).attr("href");
         if (strHref.indexOf("coopertire.com") != -1 && strHref != "http://www.coopertire.com.cn" && strHref != "http://coopertire.com.cn") {
            strHref = strHref.replace("http://coopertire.com", strCorporateSiteDomain);
            strHref = strHref.replace("http://www.coopertire.com", strCorporateSiteDomain);				
            strHref = strHref.replace("http://us.coopertire.com", strConsumerSiteDomain);
            $(this).attr("href",strHref); 
         }
      });
   }		
}

function adjustSearches() {
	$(".search input[type=text]").val("SEARCH");
	$("#dealer-locator input[type=text]").val("city, state or zip");
	$(".search input[type=text],#dealer-locator input[type=text]").addClass("clearMeFocus");
}

function adjustBreadcrumb() {
	if ($.browser.msie && $.browser.version=="7.0") {
		return false;
	}
	var objBreadcrumb = $("#breadcrumbs");
	if (objBreadcrumb.length > 0) {
		var strHtml = objBreadcrumb.html();	
		while (strHtml.indexOf("&gt;") != -1) {		
			strHtml = strHtml.replace("&gt;", "<span class='arrows'>&laquo;</span>");
			objBreadcrumb.html(strHtml);
		}	
	}		
}

function adjustHeight() {
   var aryParents = new Array("#content.categories","#content.comparison");
   var aryContainers = new Array(".category .content","#content.comparison > .cols3 > .col");
   for (var i = 0; i < aryParents.length; i++) {
      var intHeight;
      var intTallest = 0;
      if ($(aryParents[i]).length > 0) {          
         $.each($(aryContainers[i]), function() {  
            $(this).addClass("adjusted");	            
            intHeight = $(this).height();
            if (intHeight > intTallest) { 
               intTallest = intHeight;
            }			
         });	
         $.each($(aryContainers[i]), function() {	
            $(this).css("height",intTallest + "px");
         });
      }	   
   }   
}

function adjustDetailLinks() {
	if ($("#comparison-matrix").find(".commercial").length > 0) {
		$("#link-warranty").hide();
	}
}

function initPrint() {
	if ($(".print").length > 0) {
		$.each($(".print"), function() {		
			$(this).addClass("active");
		});
		$(".print.active").click(function() {			
			window.print();
		});
	}
}

function adjustSearchResults() {
	if ($("div.SearchResult").length > 0) {
		$("div.ResultPath").children().remove();
	}
}

function initCompareButtons() {
   var compareButtons = $(".button-compare a");          
   var compareAction = compareButtons.attr("href"); 
   var checkboxLabels = $(".checkbox-compare label");
   var checkboxTitle = checkboxLabels.attr("title");
   checkboxLabels.removeAttr("title");
   function disableButtons() {
         compareButtons.addClass("disabled").removeAttr("href");
   }
   function enableButtons() {
         compareButtons.removeClass("disabled").attr("href",compareAction);
   }
   $(".checkbox-compare input[type='checkbox']").change(function() {               
         var checkboxesChecked = $(".checkbox-compare input[type='checkbox']:checked");  
         var checkboxesNotChecked = $(".checkbox-compare input[type='checkbox']:not(:checked)");
         if (checkboxesChecked.length > 1 && checkboxesChecked.length < 4) {
             enableButtons();
         }
         else {
              disableButtons();
         }
         if (checkboxesChecked.length > 2) {
            checkboxesNotChecked.attr("disabled","disabled").parent("label").attr("title",checkboxTitle);            
         }
         else {
            checkboxesNotChecked.removeAttr("disabled").parent("label").removeAttr("title");
         }         
   });
   if (compareButtons.length > 0) {
        disableButtons();
   }
}

$(function() {
	$(".req-js").removeClass("req-js");
	$(".non-js").css("display","none");
	adjustDomains();
	addClasses();		
	getNewWindowLinks();	
	createAlternateRows();
	initMainNav();
	initMaps();	
	initOverlay();
	initAccordion();
	initScrollable();
	initSwitcher();
	initPrint();
	adjustSearches();
	clearMePrevious();
	initTireFlash();
	initContentRollovers();		
	adjustBreadcrumb();	
	adjustDetailLinks();
	adjustSearchResults();
	initEventTracking();
	initVirtualPageTracking();
});

$(window).load(function() {
	adjustHeight();
});