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

// Set the textareas to same height
txtleft.style.height = txtleft.scrollHeight + 25 + 'px';
txtright.style.height = txtright.scrollHeight + 25 + 'px';

var twext_box = '';
var twext_para = '';
var twext_chunk = '';
var twext_line = '';
var twext_txt = '';
var twext_twxt = '';
/**
 * Sets CSS styles to elements
 */
function setStyle(style,attribute)
{
   switch(style)
   {
      case 'normal-color':
	 twext_txt += 'color: ' + attribute + '; ';
      break;
      case 'twxt-color':
	 twext_twxt += "color: " + attribute + "; ";
      break;
      case 'normal-font':
	 twext_txt += 'font-family: ' + attribute + '; ';
      break;
      case 'twxt-font':
	 twext_twxt += 'font-family: ' + attribute + '; ';
      break;
      case 'normal-size':
	 twext_txt += 'font-size: ' + attribute + '; ';
      break;
      case 'twxt-size':
	 twext_twxt += 'font-size: ' + attribute + '; ';
      break;
      case 'normal-bold':
	 twext_txt += 'font-weight: ' + attribute + '; ';
      break;
      case 'twxt-bold':
	 twext_twxt += 'font-weight: ' + attribute + '; ';
      break;
      case 'normal-space':
	 twext_line += 'height: ' + attribute + '; ';
      break;
      case 'twxt-space':
	 twext_twxt += 'top: ' + attribute + '; ';
      break;
   }
}

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
//google.load("language", "1");


/**
 * Translate text
 *
 * @param string text The text to translate
 * @param string origin_language The origin language
 * @param string desired_language The desired language wanted
 */
function translate(text, origin_language, desired_language)
{
   translated = google.language.translate(text, (origin_language) ? origin_language : 'es', (desired_language) ? desired_language : 'en', function(result) {
  if (!result.error) {
     return result.translation;
  }
});
   return translated;
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
   var savedtwxt = document.getElementById("forsave");
   savedtwxt.value = saved;
   return saved;
}
/**
 * Load a twexted string
 *
 * @param String A string with JSON structured data to parse
 */
function loadTwext(twexted_string)
{
   twexted = JSON.parse(twexted_string);
   preview.innerHTML = twext_html(twexted);
   untwext(twexted);
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

   if(thistext.clientHeight < thistext.scrollHeight)
   {
      thistext.style.height = thistext.scrollHeight + 'px';
      other.style.height = thistext.style.height;
   }
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
    var chunk_left = (i < total_lines_text_left) ? trim(text_left[i]) : '';
			// insert here the gtranslate function to do it by word
    var chunk_right = (i < total_lines_text_right) ? trim(text_right[i]) : '';
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
  var html = "<div " + ((twext_box) ? "style=\"" + twext_box + "\"" : '') + "class='twext-box'>\n";
  for (var i = 0; i < twext.length; i++) {
    var para = twext[i];
    html += "  <div " + ((twext_para) ? "style=\"" + twext_para + "\"" : '') + "class='twext-para'>\n";
    for (var j = 0; j < para.length; j++) {
      var line = para[j];
       html += "    <div " + ((twext_line) ? "style=\"" + twext_line + "\"" : '') + "class='twext-line'>\n";
      for (var k = 0; k < line.length; k++) {
	var chunk = line[k];
	html += "      <span " + ((twext_chunk) ? "style=\"" + twext_chunk + "\"" : '') + "class='twext-chunk'>\n";
	span.textContent = chunk[0];
	html += "        <span><span " + ((twext_txt) ? "style=\"" + twext_txt + "\"" : '') + "class='twext-text'>" +span.innerHTML+"</span></span>\n";
	span.textContent = chunk[1];
	html += "        <span><span " + ((twext_twxt) ? "style=\"" + twext_twxt + "\"" : '') + "class='twext-twxt'>" +span.innerHTML+"</span></span>\n";
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
 * Separates twexted text into normal text
 */
function untwext(twext)
{
   var ltxt = '';
   var rtxt = '';
   for(var i = 0; i < twext.length; i++)
   {
      var para = twext[i];
      for(var j = 0; j < para.length; j++)
      {
	 var line = para[j];
	 for(var k = 0; k < line.length; k++)
	    {
	       var chunk = line[k];
	       ltxt += chunk[0] + "\n";
	       rtxt += chunk[1] + "\n";
	    }
      }
	 ltxt += "\n";
	 rtxt += "\n";
   }
   txtleft.value = ltxt;
   txtright.value = rtxt;
   growTextAreas('xscroll-left','xscroll-right'); // hard coded textareas. Must refactor, but works for now.
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
   var title = document.getElementById('title');
   var preview_title = document.getElementById('preview_title');
   preview_title.innerHTML =  title.value.toUpperCase();
   preview.innerHTML = twext_html(twexted);
   txtleft.value = chunksted_left;
   txtright.value = chunksted_right;
   scroll(0,0);
}

function twexterize(left,right) {
  // first separate by paragraphs
  var filter = new RegExp("\\n{3}","i"); // two blank lines is a new paragraph
  var left_paragraphs = left.split(filter);
  var right_paragraphs = right.split(filter);
  // then separate by lines
  filter = new RegExp("\\n{2}","i"); // one blank lines are a new line
  var left_lines = [];
  var right_lines = [];
  var maxlines = 0; // store max number of lines
  for(lline in left_paragraphs)
    {
      left_paragraphs[lline] = left_paragraphs[lline].split(filter);
      maxlines = (lline > maxlines)? lline : maxlines;
    }
  for(rline in right_paragraphs)
    {
      right_paragraphs[rline] = right_paragraphs[rline].split(filter);
      maxlines = (rline > maxlines)? rline : maxlines;
    }
  // finally separate by chunks
  filter = new RegExp("\\n{1}","i"); // one chunk on each line
  var left_chunks = [];
  var right_chunks = [];
  for(lchunk in left_paragraphs)
    {
      for(lch in left_paragraphs[lchunk])
	{
	  left_paragraphs[lchunk][lch] = left_paragraphs[lchunk][lch].split(filter);
	}
    }
  for(rchunk in right_paragraphs)
    {
      for(rch in right_paragraphs[rchunk])
	{
	  right_paragraphs[rchunk][rch] = right_paragraphs[rchunk][rch].split(filter);
	}
    }
  // mix chunks
  var chunks = [];
  var i = 0;
  for(i = 0;i < max_chunks; i++)
    {
	  chunks[i] = [left_chunks[i],right_chunks[i]];
    }
  // mix lines
  var lines = [];
  for(i = 0;i < max_lines; i++)
    {
      lines[i] = [left_lines[i],right_lines[i]];
    }
  // mix paragraphs
  var paragraphs = [];
  for(i = 0;i < max_paragraphs; i++)
    {
      paragraphs[i] = [left_paragraphs[i],right_paragraphs[i]];
    }

  return paragraphs;
}