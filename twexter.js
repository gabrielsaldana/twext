/**
 * @var Object The html object of the left text area
 */
var txtleft = document.getElementById('xscroll-left');
/**
 * @var Object The html object of the right text area
 */
var txtright = document.getElementById('xscroll-right');
/**
 * @var Object The html object of the preview div area
 */
var preview = document.getElementById('preview');
/**
 * @var String The variable to store the twexted text
 */
var twexted = '';
/**
 * @var String The translated text
 */
var translated = '';

//txtleft.value = process_chunkster(text1);
//txtright.value = process_chunkster(text2);

txtleft.style.height = txtleft.scrollHeight + 25 + 'px';
txtright.style.height = txtright.scrollHeight +25 + 'px';

/**
 * @var Array befo filter list
 */
var befo = ['(','a', 'are','as','at','be','by','can','could','eight'];
/**
 * @var Array afte filter list
 */
var afte = [')',',',';'];
/**
 * @var Array both filter list
 */
var both = ['after', 'and', 'based on', 'before', 'but', 'for', 'if', 'or', 'that', 'with'];
/**
 * @var Array exceptions filter list
 */
var exceptions_befo = ['as a', 'as the', 'ave.', 'dr.', 'in effect', 'mr.', 'mrs.'];
//------------
// Google API
//------------
// Load Google translate API
google.load("language", "1");


/**
 * Translate text
 *
 * @param string text The text to translate
 * @param string origin_language The origin language
 * @param string desired_language The desired language wanted
 */
function translate(text, origin_language, desired_language)
{
   google.language.translate(text, origin_language, desired_language, function(result) {
  if (!result.error) {
     translated = result.translation;
  }
});
}
//----------
// Chunkster
//----------
/**
 * Process all the chunkster filters
 *
 * @param String text The text to parse
 * @return String The chunked text
 */
function process_chunkster(text)
{
   var chunked = filter_befo(text);
   chunked = filter_afte(chunked);
   chunked = filter_both(chunked);
   return chunked;
}
/**
 *  Apply befo filters and exceptions
 *
 * @param String The text
 */
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
/**
 *  Apply afte filters and exceptions
 *
 * @param String The text
 */
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
/**
 * Apply both filters and exceptions
 *
 * @param String The text
 */
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
/**
 * Write twexted text in json format
 *
 * @param String The twexted text
 * @return String A JSON formatted string ready to be saved
 */
function saveTwext(twexted_text)
{
   // parse twexted text string to json
   var saved = JSON.stringify(twexted_text);
   return saved;
}
/**
 * Dynamically grow both textareas depending on content
 *
 * @param String The textarea id currently editing
 * @param String The textarea id of the other textarea not being edited
 */
function growTextAreas(thistextarea,othertextarea)
{
  var thistext = document.getElementById(thistextarea);
  var other = document.getElementById(othertextarea);

  thistext.style.height = thistextarea.scrollHeight + 'px';
  other.style.height = thistext.style.height;
}
/**
 *  better and faster trim function
 *  taken from http://blog.stevenlevithan.com/archives/faster-trim-javascript
 *
 * @param String string The string of text to trim
 * @return String the trimmed text
 */
function trim(string) {
  var str = string.replace(/^\s\s*/, ''),
    ws = /\s/,
    i = str.length;
  while (ws.test(str.charAt(--i)));
  return str.slice(0, i + 1);
}
/**
 * Parses twext into a tree
 *
 * @param String left The left side text
 * @param String right The right side text
 * @return Array Twexted text: An array of arrays with the text separated in paragraphs, lines and chunks
 */
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
       if (line)
       {
	  if (!para) para = [];
	  para[para.length] = line;
	  line = false;
       }
       if (para)
       {
	  paragraphs[paragraphs.length] = para;
	  para = false;
       }
    }
    else
     {
	if (!line) line = [];
	line[line.length] = [chunk_left, chunk_right];
     }
  }
  return paragraphs;
}
/**
 * Takes twext, and generates html for preview
 *
 * @param Array The array of twexted text
 */
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
/**
 * Scrolls preview according to text/twext scroll position
 */
function scrollTo(to, from) {
  var percent = (from.scrollHeight == from.clientHeight) ? 0 : from.scrollTop * 100 / (from.scrollHeight - from.clientHeight);
  to.style.top = (percent * (from.clientHeight - to.clientHeight) / 100) + "px";
}
/**
 * Scrolls twxt/text according to text/twxt scroll position
 */
function _scrollTo(to, from) {
  var percent = (from.scrollHeight == from.clientHeight) ? 0 : from.scrollTop * 100 / (from.scrollHeight - from.clientHeight);
  return to.scrollTop = percent * (to.scrollHeight - to.clientHeight) / 100;
}
/**
 * Present twexted text into preview area
 */
function twext_text()
{
//    var chunksted_left = process_chunkster(txtleft.value);
//    var chunksted_right = process_chunkster(translate(chunksted_left));
   var chunksted_left = txtleft.value;
//   translate(chunksted_left, "es","en");
   var chunksted_right = txtright.value;
   twexted = twext_parse(chunksted_left,chunksted_right);
   preview.innerHTML = twext_html(twexted);
   txtleft.value = chunksted_left;
   txtright.value = chunksted_right;
}
//  // Load the preview with example at page load
//  if(window.addEventListener)
//     window.addEventListener('load', google.load("language", "1"), false);
//  else if(window.attachEvent)
//     window.attachEvent('onload',google.load("language", "1"));
//  else
//  window.onload = google.load("language", "1");