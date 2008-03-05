
var scroll1 = 0; var scroll2 = 0;

function twext_parse(left, right) {
	var text1 = left.split("\n");
	var text2 = right.split("\n");
	var count1 = text1.length;
	var count2 = text2.length;
	var count = Math.max(count1, count2);
	
	var paras = [];
	var para = false;
	var line = false;
	for (var i = 0; i < count; i++) {
		var a1 = i < count1 ? text1[i] : '';
		var a2 = i < count2 ? text2[i] : '';
		if (a1 == '' && a2 == '') { // if its a blank line on both sides
			if (line !== false) {
				if (para === false) para = [];
				para[para.length] = line;
				line = false;
			} else if (para !== false) {
				paras[paras.length] = para;
				para = false;
			}
		} else {
			if (line === false) line = [];
			line[line.length] = [a1, a2];
		}
	}
	if (line !== false) {
		if (para === false) para = [];
		para[para.length] = line;
		line = false;
	}
	if (para !== false) {
		paras[paras.length] = para;
		para = false;
	}
	return paras;
}
function twext_html(twext) {
	var span = document.createElement("span");
	var xml = "<div class='twext-box'>\n";
	for (var i = 0; i < twext.length; i++) {
		var para = twext[i];
		xml += "  <table class='twext-para'>\n";
		for (var j = 0; j < para.length; j++) {
			var line = para[j];
			xml += "    <tr><td class='twext-line'>\n";
			for (var k = 0; k < line.length; k++) {
				var chunk = line[k];
				xml += "      <table class='twext-chunk'>\n";
				span.textContent = chunk[0];
				xml += "        <tr><td><center><span class='twext-text'><nobr>"+span.innerHTML+"</nobr></span></center></td></tr>\n";
				span.textContent = chunk[1];
				xml += "        <tr><td><center><span class='twext-twxt'><nobr>"+span.innerHTML+"</nobr></span></center></td></tr>\n";
				xml += "      </table>\n";
			}
			xml += "    </td></tr>\n";
		}
		xml += "  </table>\n";
	}
	xml += "</div>\n";
	return xml;
}

function scrollTo(to, from) {
	var percent = from.scrollTop * 100 / (from.scrollHeight - from.clientHeight);
	to.scrollTop = percent * (to.scrollHeight - to.clientHeight) / 100;
}

function fixXcrolls() {
	$(".xcroll").each(function() {
		var div = $(this);
		var preview = $("#preview");
		var totalWidth = div.width();
		var left = div.children(".xcroll-left"), right = div.children(".xcroll-right");
		var leftText = left.get(0), rightText = right.get(0);
		var scrollBarWidth = left.width() - leftText.clientWidth;
		var textAreaWidth = totalWidth - scrollBarWidth;
		var leftWidth = Math.floor(textAreaWidth/2);
		var rightWidth = textAreaWidth - leftWidth;
		left.css("width", leftWidth + scrollBarWidth);
		right.css("width", rightWidth + scrollBarWidth);
		right.css("margin-right", -scrollBarWidth);
		totalWidth = div.width();
		// hook text areas
		if (leftText.onscroll == null) {
			var leftFunc = function() {
				//var p = preview.parent().get(0);
				//p.scrollTop = leftText.scrollTop / leftText.scrollHeight * p.scrollHeight;
				scrollTo(preview.parent().get(0), leftText);
				return rightText.scrollTop = leftText.scrollTop;
			}
			var rightFunc = function() {
				//var p = preview.parent().get(0);
				//p.scrollTop = rightText.scrollTop / rightText.scrollHeight * p.scrollHeight;
				scrollTo(preview.parent().get(0), rightText);
				return leftText.scrollTop = rightText.scrollTop;
			}
			left.scroll(leftFunc);
			right.scroll(rightFunc);
			leftText.onscroll = leftText.onmousemove = leftText.onkeypress = leftFunc;
			rightText.onscroll = rightText.onmousemove = rightText.onkeypress = rightFunc;
			var scrollPos = 0, leftStr = left.val(), rightStr = right.val();
			$("#status").text("installed");
			/*preview.parent().get(0).onscroll = function() {
				scrollTo(leftText, preview.parent().get(0));
				scrollTo(rightText, preview.parent().get(0));
			}*/
			var timer = setInterval(function() {
				if (totalWidth != div.width()) {
					$("#status").text(totalWidth + " != " + div.width() + "; " + new Date());
					fixXcrolls();
					totalWidth = div.width();
				}
				if (leftText.scrollTop != scrollPos) {
					scrollPos = leftFunc();
				} else if (rightText.scrollTop != scrollPos) {
					scrollPos = rightFunc();
				}
				// hook for live preview
				if (left.val() != leftStr || right.val() != rightStr) {
					preview.html(twext_html(twext_parse(leftStr = left.val(), rightStr = right.val())));
				}
			}, 100);
			
			// TODO
		}
	});
}

$(document).ready(function(){
	$('#banner_links').parents('div').remove();
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
	fixXcrolls();
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
