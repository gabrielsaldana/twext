
var scroll1 = 0; var scroll2 = 0;

function hookTextareas(text1, text2) {
	var timer = window.setInterval(function() {
		/*if (text1.scrollHeight != text2.scrollHeight) {
			var r1 = text1.value.split("\n").length;
			var r2 = text2.value.split("\n").length;
			var diff = Math.abs(r1 - r2);
			for (var i = 0; i < diff; i++) if (r1 < r2) text1.value += "\n"; else text2.value += "\n";
			if (r1 < r2) text1.scrollTop = text2.scrollTop; else text2.scrollTop = text1.scrollTop;
			scroll1 = text1.scrollTop;
			scroll2 = text2.scrollTop;
		}*/
		if (scroll1 != text1.scrollTop) text2.scrollTop = text1.scrollTop;
		if (scroll2 != text2.scrollTop) text1.scrollTop = text2.scrollTop;
		scroll1 = text1.scrollTop;
		scroll2 = text2.scrollTop;
//		alert('yo');
	}, 100);
	text1.onscroll = function() {
//		if (timer != null) clearInterval(timer);
//		timer = null;
		text2.scrollTop = text1.scrollTop;
	}
	text2.onscroll = function() {
//		if (timer != null) clearInterval(timer);
//		timer = null;
		text1.scrollTop = text2.scrollTop;
	}
	text1.onmousewheel = text1.onmousemove = text1.onkeypress = text1.onkeyup = text1.onscroll;
	text2.onmousewheel = text2.onmousemove = text2.onkeypress = text2.onkeyup = text2.onscroll;
}

$(document).ready(function(){
	$('#banner_links').parents('div').remove();
	hookTextareas(document.getElementById("text1"), document.getElementById("text2"));
	tabberAutomaticOnLoad(tabberOptions);
	var lines = $(".twext-line").each(function() {
		var chunks = $(".twext-chunk", this);
		for (var i = 0; i < chunks.length-1; i++) {
			var a = chunks.eq(i);
			var b = chunks.eq(i+1);
			var a_text = $(".twext-text", a).width() / 2;
			var a_twxt = $(".twext-twxt", a).width() / 2;
			var b_text = $(".twext-text", b).width() / 2;
			var b_twxt = $(".twext-twxt", b).width() / 2;
			var compare = (a_text - a_twxt) * (b_text - b_twxt);
			if (compare < 0) {
				var cdiff = Math.max(a_text, a_twxt) + Math.max(b_text, b_twxt);
				var fdiff = Math.max(a_text + b_text, a_twxt + b_twxt);
				var diff = cdiff - fdiff;
				chunks.eq(i).css('margin-right', '-' + diff + 'px');
			}
		}
	});
});

var tabberOptions = {onLoad:function(tabber) {
	var div = $(tabber.tabber.div);
	var link = $('<a style="float:right; font:bolder;">'+(div.attr('class').indexOf('tab-collapse')!=-1?'Expand':'Collapse')+'</a>');
	link.prependTo(div).click(function(arg) {
		if (link.text() == 'Collapse') {
			link.text('Expand');
			div.addClass('tab-collapse');
		} else {
			link.text('Collapse');
			div.removeClass('tab-collapse');
		}
	});
}, 'manualStartup': true};
