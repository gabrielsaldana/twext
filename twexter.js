var left = document.getElementById('xscroll-left');
var right = document.getElementById('xscroll-right');
var preview = document.getElementById('preview');
left.value = text1;
right.value = text2;

left.style.height = left.scrollHeight + 25 + 'px';
right.style.height = right.scrollHeight +25 + 'px';

function growTextAreas(thistextarea,othertextarea)
{
  var thistextarea = document.getElementById(thistextarea);
  var other = document.getElementById(othertextarea);

  thistextarea.style.height = thistextarea.scrollHeight + 'px';
  other.style.height = thistextarea.style.height;
}

// better and faster trim function
// taken from http://blog.stevenlevithan.com/archives/faster-trim-javascript
function trim(string) {
  var str = string.replace(/^\s\s*/, ''),
    ws = /\s/,
    i = str.length;
  while (ws.test(str.charAt(--i)));
  return str.slice(0, i + 1);
}
// parses twext into a tree
function twext_parse(left, right) {
  var text_left = left.split("\n");
  var text_right = right.split("\n");
  var total_lines_text_left = text_left.length;
  var total_lines_text_right = text_right.length;
  var max_lines = Math.max(total_lines_text_left, total_lines_text_right);

  var paragraphs = [];
  var para = false;
  var line = false;
  for (var i = 0; i <= max_lines; i++) {
    var chunk_left = i < total_lines_text_left ? trim(text_left[i]) : '';
    var chunk_right = i < total_lines_text_right ? trim(text_right[i]) : '';
    if (!chunk_left && !chunk_right) { // if its a blank line on both sides
      if (line) {
	if (!para) para = [];
	para[para.length] = line;
	line = false;
      } else if (para) {
	paragraphs[paragraphs.length] = para;
	para = false;
      }
    } else {
      if (!line) line = [];
      line[line.length] = [chunk_left, chunk_right];
    }
  }
  return paragraphs;
}
// takes twext, and generates html for preview
function twext_html(twext) {
  var span = document.createElement("span");
  var html = "<div class='twext-box'>\n";
  for (var i = 0; i < twext.length; i++) {
    var para = twext[i];
    html += "  <div class='twext-para'>\n";
    for (var j = 0; j < para.length; j++) {
      var line = para[j];
      html += "    <div class='twext-line'>\n";
      for (var k = 0; k < line.length; k++) {
	var chunk = line[k];
	html += "      <span class='twext-chunk'>\n";
	span.textContent = chunk[0];
	html += "        <span><span class='twext-text'>"+span.innerHTML+"</span></span>\n";
	span.textContent = chunk[1];
	html += "        <span><span class='twext-twxt'>"+span.innerHTML+"</span></span>\n";
	html += "      </span>\n";
      }
      html += "    </div>\n";
    }
    html += "  </div>\n";
  }
  html += "</div>\n";
  return html;
}
// scrolls preview according to text/twxt scroll position
function scrollTo(to, from) {
  var percent = (from.scrollHeight == from.clientHeight) ? 0 : from.scrollTop * 100 / (from.scrollHeight - from.clientHeight);
  to.style.top = (percent * (from.clientHeight - to.clientHeight) / 100) + "px";
}
// scrolls twxt/text according to text/twxt scroll position
function _scrollTo(to, from) {
  var percent = (from.scrollHeight == from.clientHeight) ? 0 : from.scrollTop * 100 / (from.scrollHeight - from.clientHeight);
  return to.scrollTop = percent * (to.scrollHeight - to.clientHeight) / 100;
}
function twext_text()
{
   preview.innerHTML = twext_html(twext_parse(left.value,right.value));
}