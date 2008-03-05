<?php

function getPost($label, $default) {
	return isset($_POST[$label]) ? $_POST[$label] : $default;
}

$post["twixt-text-font"] = getPost("twixt-text-font", "normal bolder 12pt Arial");
$post["twixt-text-color"] = getPost("twixt-text-color", "#F05000");
$post["twixt-tag-font"] = getPost("twixt-tag-font", "normal 10pt Arial");
$post["twixt-tag-color"] = getPost("twixt-tag-color", "#505000");
$post["text1"] = getPost("text1", "hello world\nhow are you?");
$post["text2"] = getPost("text2", "salaam dunya\nkaisi ho tum?");

function twext_parse($text1, $text2) {
	$text1 = explode("\n", $text1);
	$text2 = explode("\n", $text2);
	$count1 = count($text1);
	$count2 = count($text2);
	$count = max($count1, $count2);
	$lines = array();
	$line = false;
	for ($i = 0; $i < $count; $i++) {
		$a1 = $i < $count1 ? trim($text1[$i]) : '';
		$a2 = $i < $count2 ? trim($text2[$i]) : '';
		if ($a1 == '' && $a2 == '') { // if its a blank line on both sides
			if ($line !== false) $lines[] = $line;
			$line = false;
		} else {
			if ($line === false) $line = array();
			$line[] = array($a1, $a2);
		}
	}
	if ($line !== false) $lines[] = $line;
	return $lines;
}

function twext_export($twext) {
	return var_export($twext, false);
}
function twext_xml($twext) {
	$xml = "<twext>\n";
	foreach ($twext as $line) {
		$xml .= "<line>\n";
		foreach ($line as $chunk) {
			$xml .= '<chunk>';
			$xml .= '<text>' . $chunk[0] . '</text><tag>' . $chunk[1] . '</tag>';
			$xml .= "</chunk>\n";
		}
		$xml .= "</line>\n\n";
	}
	$xml .= "</twext>\n";
	return $xml;
}
function _twext_html($twext) {
	$html = "<div class='twext-box'>\n";
	foreach ($twext as $line) {
		$html .= "<p class='twext-line'>\n";
		foreach ($line as $chunk) {
			$html .= "<span class='twext-chunk'>\n";
			$html .= "<span class='twext-text'>" . $chunk[0] . "</span>\n<span class='twext-tag'>" . $chunk[1] . "</span>\n";
			$html .= "</span>\n";
		}
		$html .= "</p>\n\n";
	}
	$html .= "</div>\n";
	return $html;
}
function twext_html($twext) {
	$html = "<table class='twext-box'>\n";
	foreach ($twext as $line) {
		$html .= "<tr><td class='twext-line'>\n";
		foreach ($line as $chunk) {
			$html .= "<table class='twext-chunk'>";
			$html .= "<tr><td><center><span class='twext-text'><nobr>" . $chunk[0] . "</nobr></span></center></td></tr><tr><td><center><span class='twext-tag'><nobr>" . $chunk[1] . "</nobr></span></center></td></tr>\n";
			$html .= "</table>";
		}
		$html .= "</td></tr>\n\n";
	}
	$html .= "</table>\n";
	return $html;
}
// =====================================================================================
?>
<html>
	<head>
		<title>twexter</title>
		<script src='jquery.js'></script>
		<script><!--

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
	hookTextareas(document.getElementById("text1"), document.getElementById("text2"));
	var lines = $(".twext-line").each(function() {
		var chunks = $(".twext-chunk", this);
		for (var i = 0; i < chunks.length-1; i++) {
			var a = chunks.eq(i);
			var b = chunks.eq(i+1);
			var a_text = $(".twext-text", a).width() / 2;
			var a_tag = $(".twext-tag", a).width() / 2;
			var b_text = $(".twext-text", b).width() / 2;
			var b_tag = $(".twext-tag", b).width() / 2;
			var compare = (a_text - a_tag) * (b_text - b_tag);
			if (compare < 0) {
				var cdiff = Math.max(a_text, a_tag) + Math.max(b_text, b_tag);
				var fdiff = Math.max(a_text + b_text, a_tag + b_tag);
				var diff = cdiff - fdiff;
				chunks.eq(i).css('margin-right', '-' + diff + 'px');
			}
		}
	});
});

		//--></script>
		<style>

.twext-chunk {
	float: left;
	margin: 0px;
	padding: 0px;
}
.twext-text {
	font: <?php echo $post["twixt-text-font"]; ?>;
	color: <?php echo $post["twixt-text-color"]; ?>;
}
.twext-tag {
	font: <?php echo $post["twixt-tag-font"]; ?>;
	color: <?php echo $post["twixt-tag-color"]; ?>;
}

#text1, #text2 {
	width: 40%;
	height: 300px;
	overflow: scroll;
}
#text1 {text-align: right; }
#text2 {text-align: left; }
textarea {margin: 0px; padding: 0px;}

		</style>
	</head>
	<body style='font-family: arial'>
		<h1>twexter</h1>
		<?php
			$text1 = $post['text1'];
			$text2 = $post['text2'];
			if ((strlen($text1) + strlen($text2)) > 0) {
		?>
		<h2>Preview</h2>
		<div id='preview'>
			<?php
				$twext = twext_parse($text1, $text2);
				echo twext_html($twext);
			?>
		</div>
		<?php } else $text1 = $text2 = false; ?>
		<h2>Enter twext below:</h2>
		<form action='#' method='post'>
			<textarea name='text1' id='text1'><?php echo htmlspecialchars($post['text1']);?></textarea>
			<textarea name='text2' id='text2'><?php echo htmlspecialchars($post['text2']);?></textarea>
			<br />
			<input type='submit' value='Twext It!' /><br/>
			<h3>Extra Options</h3>
			<h4>Top Text</h4>
			Font: <input type='text' name='twixt-text-font' value='<?php echo $post["twixt-text-font"]; ?>' /> <small>(example: normal bolder 12pt Arial)</small><br />
			Color: <input type='text' name='twixt-text-color' value='<?php echo $post["twixt-text-color"] ?>' /> <small>(example: #F05000)</small><br />
			<h4>Bottom Text</h4>
			Font: <input type='text' name='twixt-tag-font' value='<?php echo $post["twixt-tag-font"]; ?>' /> <small>(example: normal 10pt Arial)</small><br />
			Color: <input type='text' name='twixt-tag-color' value='<?php echo $post["twixt-tag-color"]; ?>' /> <small>(example: #505000)</small><br />
		</form>
	</body>
</html>