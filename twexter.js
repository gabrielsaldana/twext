var left = document.getElementById('xscroll-left');
var right = document.getElementById('xscroll-right');
var preview = document.getElementById('preview');
var twexted = '';
left.value = process_chunkster(text1);
right.value = process_chunkster(text2);

left.style.height = left.scrollHeight + 25 + 'px';
right.style.height = right.scrollHeight +25 + 'px';

// befo filter list
var befo = ['(','a', 'are','as','at','be','by','can','could','eight'];
// afte filter list
var afte = [')',',',';'];
// both filter list
var both = ['after', 'and', 'based on', 'before', 'but', 'for', 'if', 'or', 'that', 'with'];
// exceptions filter list
var exceptions_befo = ['as a', 'as the', 'ave.', 'dr.', 'in effect', 'mr.', 'mrs.'];

//----------
// Chunkster
//----------
function process_chunkster(text)
{
   var chunked = filter_befo(text);
   chunked = filter_afte(chunked);
   chunked = filter_both(chunked);
   return chunked;
}
// apply befo filters and exceptions
function filter_befo(text)
{
   for(var i in befo)
   {
      var word = befo[i];
      if(word == '\(') word = "\\(";
      var filter = new RegExp("\\b" + word + "\\b","gim");
      text = text.replace(filter, "\n" + word);
   }
   return text;
}
// apply afte filters and exceptions
function filter_afte(text)
{
   for(var i in afte)
   {
      var word = afte[i];
      if(word == '\)') word = "\\)";
      var filter = new RegExp("\\b(" + word + ")\\b", "gim");
      text = text.replace(filter, word + "\n");
   }
   return text;
}
// apply both filters and exceptions
function filter_both(text)
{
   for(var i in both)
   {
      var word = both[i];
      var filter = new RegExp("\\b(" + word + ")\\b", "gim");
      text = text.replace(filter, "\n" + word + "\n");
   }
   return text;
}
//write twexted text in json format
function saveTwext(twexted_text)
{
   // parse twexted text string to json
   var saved = JSON.stringify(twexted_text);
   return saved;
}
//dynamically grow both textareas depending on content
function growTextAreas(thistextarea,othertextarea)
{
  var thistext = document.getElementById(thistextarea);
  var other = document.getElementById(othertextarea);

  thistext.style.height = thistextarea.scrollHeight + 'px';
  other.style.height = thistext.style.height;
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
// Present twexted text into preview area
function twext_text()
{
   twexted = twext_parse(process_chunkster(left.value),process_chunkster(right.value));
   preview.innerHTML = twext_html(twexted);
}
// Load the preview with example at startup
if(window.addEventListener)
   window.addEventListener('load', twext_text, false);
else if(window.attachEvent)
   window.attachEvent('onload',twext_text);
else
window.onload = twext_text();