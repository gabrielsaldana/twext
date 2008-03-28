var scroll1 = 0; var scroll2 = 0;
var loaded = false;

// better and faster trim function
// taken from http://blog.stevenlevithan.com/archives/faster-trim-javascript
function trim(str) {
  var str = str.replace(/^\s\s*/, ''),
    ws = /\s/,
    i = str.length;
  while (ws.test(str.charAt(--i)));
  return str.slice(0, i + 1);
}
// parses twext into a tree
function twext_parse(left, right) {
  var text1 = left.split("\n");
  var text2 = right.split("\n");
  var count1 = text1.length;
  var count2 = text2.length;
  var count = Math.max(count1, count2);

  var paras = [];
  var para = false;
  var line = false;
  for (var i = 0; i <= count; i++) {
    var a1 = i < count1 ? trim(text1[i]) : '';
    var a2 = i < count2 ? trim(text2[i]) : '';
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
  return paras;
}
// takes twext, and generates html for preview
function twext_html(twext) {
  var span = document.createElement("span");
  var xml = "<div class='twext-box'>\n";
  for (var i = 0; i < twext.length; i++) {
    var para = twext[i];
    xml += "  <div class='twext-para'>\n";
    for (var j = 0; j < para.length; j++) {
      var line = para[j];
      xml += "    <div class='twext-line'>\n";
      for (var k = 0; k < line.length; k++) {
	var chunk = line[k];
	xml += "      <span class='twext-chunk'>\n";
	span.textContent = chunk[0];
	xml += "        <span><span class='twext-text'>"+span.innerHTML+"</span></span>\n";
	span.textContent = chunk[1];
	xml += "        <span><span class='twext-twxt'>"+span.innerHTML+"</span></span>\n";
	xml += "      </span>\n";
      }
      xml += "    </div>\n";
    }
    xml += "  </div>\n";
  }
  xml += "</div>\n";
  return xml;
}

// scrolls preview according to text/twxt scroll position
function scrollTo(to, from) {
  var percent = (from.scrollHeight == from.clientHeight) ? 0 : from.scrollTop * 100 / (from.scrollHeight - from.clientHeight);
  to.style.top = (percent * (from.clientHeight - to.clientHeight) / 100) + "px";
}
// scrolls twxt/text according to text/twxt scroll position
function _scrollTo(to, from) {
  var percent = (from.scrollHeight == from.clientHeight) ? 0 : from.scrollTop * 100 / (from.scrollHeight - from.clientHeight);
  //$("#status").text("percent:" + percent + " fcheight:" + from.clientHeight + " tcheight:" + to.clientHeight);
  return to.scrollTop = percent * (to.scrollHeight - to.clientHeight) / 100;
}

// fixes tables problem by calculating and setting negative right margins for chunks
function solveTablesProblem(xcroll) {
  $(".twext-line", xcroll).each(function() {
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
	  chunks.eq(i).css('margin-right', '-' + (diff-1) + 'px');
	}
      }
    });
}

// main xcroll setup function
function fixXcrolls() {
  // loop over all xcrolls
  $(".xcroll").each(function() {
      var div = $(this);
      var preview = div.children(".xcroll-preview");
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
      if (leftText.onscroll == null) { // this only runs once, it basically does function hookup
	var leftFunc = function() {
	  scrollTo(preview.children(".twext-box").get(0), leftText);
	  return _scrollTo(rightText, leftText);
	}
	var rightFunc = function() {
	  scrollTo(preview.children(".twext-box").get(0), rightText);
	  return _scrollTo(leftText, rightText);
	}
	// install scroll hooks
	left.scroll(leftFunc);
	right.scroll(rightFunc);
	leftText.onscroll = leftText.onmousemove = leftText.onkeypress = leftFunc;
	rightText.onscroll = rightText.onmousemove = rightText.onkeypress = rightFunc;
	var scrollPos = 0, leftStr, rightStr;
	//$("#status").text("installed");
	// a timer to check for any kind of modification. this is needed because firefox doesn't support the onscroll event for textareas
	// a workaround could be using an editable element other than a textarea, but that would require consideration of rich text copy/pasting
	var timer = setInterval(function() {
	    // check if width changed
	    if (totalWidth != div.width()) {
	      fixXcrolls();
	      totalWidth = div.width();
	    }
	    // check if scroll position changed
	    if (leftText.scrollTop != scrollPos) {
	      scrollPos = leftFunc();
	    } else if (rightText.scrollTop != scrollPos) {
	      scrollPos = rightFunc();
	    }
	    // hook for live preview; check if text/twxt changed
	    if (!loaded && (left.val() != leftStr || right.val() != rightStr)) {
	      preview.html(twext_html(twext_parse(rightStr = right.val(), leftStr = left.val())));
	      solveTablesProblem(div);
	      scrollTo(preview.children(".twext-box").get(0), leftText);
	      //$("#status").text("preview update; " + new Date());
	      loaded = true;
	    }
	  }, 250);
	// hook tabbing. searches the line with the cursor, and moves to the same line in the other textarea
	var tab = function(from, to) {
	  var line = from.val().substring(0, from.get(0).selectionEnd).split("\n").length-1;
	  var str = to.val().split("\n");
	  var pos = 0;
	  for (var i = 0; i < line; i++) pos += str[i].length + 1;
	  to.get(0).selectionEnd = to.get(0).selectionStart = pos;
	  to.focus();
	  return false;
	}
	left.keydown(function(x) {if (x.keyCode == 9) return tab(left, right);});
	right.keydown(function(x) {if (x.keyCode == 9) return tab(right, left);});
      }
    });
}
function twext_text()
{
  var left = div.children(".xcroll-left"), right = div.children(".xcroll-right");
  twext_html(twext_parse(left.val(),right.val()));
}
// initial function, called when document is loaded
$(document).ready(function(){
    fixXcrolls();
    twext_text;
  });
