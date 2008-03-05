<?php

function getPost($label, $default) {
	return isset($_POST[$label]) ?
		get_magic_quotes_gpc() ? stripslashes($_POST[$label]) : $_POST[$label]
		: $default;
}

$post["twixt-text-font"] = getPost("twixt-text-font", "normal bolder 12pt Arial");
$post["twixt-text-color"] = getPost("twixt-text-color", "#F05000");
$post["twixt-twxt-font"] = getPost("twixt-twxt-font", "normal 10pt Arial");
$post["twixt-twxt-color"] = getPost("twixt-twxt-color", "#505000");
$post["text1"] = getPost("text1", "hello world\nhow are you?");
$post["text2"] = getPost("text2", "salaam dunya\nkaisi ho tum?");

require('twext.php');

?>
<html>
	<head>
		<title>twexter</title>
		<script src='jquery.js'></script>
		<script src='twexter.js'></script>
		<style>

.twext-para {
	margin-bottom: 2em;
	width: 100%;
}
.twext-chunk {
	float: left;
	margin: 0px;
	padding: 0px;
}
.twext-chunk tr td {
	padding:0px;
	margin:0px;
}
.twext-text {
	font: <?php echo $post["twixt-text-font"]; ?>;
	color: <?php echo $post["twixt-text-color"]; ?>;
}
.twext-twxt {
	font: <?php echo $post["twixt-twxt-font"]; ?>;
	color: <?php echo $post["twixt-twxt-color"]; ?>;
}

textarea {margin: 0px; padding: 0px;}

.tab-collapse .tabbertab {
	overflow-y: scroll;
	height: 300px;
}

.xcroll {
	height:300px;
	padding:0px;
	margin:0px;
	border: solid 1px;
	overflow:hidden;
	position:relative;
}
.xcroll-left, .xcroll-right {
	height: 300px;
	overflow: scroll;
	border:0px;
	position:absolute;
	width:50%;
	top:0px;
}
.xcroll-left {
	left:0px;
	text-align: right;
}
.xcroll-right {
	right:0px;
	text-align: left;
}

		</style>
		<link rel="stylesheet" href="tabber.css" type="text/css">
		<script src='tabber.js'></script>
	</head>
	<body style='font-family: arial'>
		<h1>twexter</h1>
		<?php
			$text1 = $post['text1'];
			$text2 = $post['text2'];
			if ((strlen($text1) + strlen($text2)) > 0) {
				$twext = twext_parse($text1, $text2);
		?>
		<div class='tabber tab-collapse'>
			<div class='tabbertab'>
				<h2>Preview</h2>
				<div id='preview'><?php echo twext_html($twext);?></div>
			</div>
			<div class='tabbertab'>
				<h2>Twext XML</h2>
				<pre><?php echo htmlentities(twext_xml($twext));?></pre>
			</div>
			<?php } else $text1 = $text2 = false; ?>
		</div>
		<form action='#' method='post'>
			<div class='tabber'>
				<div class='tabbertab'>
					<h2>Twext Input</h2>
					<div class='xcroll'>
						<textarea name='text1' class='xcroll-left'><?php echo htmlspecialchars($post['text1']);?></textarea>
						<textarea name='text2' class='xcroll-right'><?php echo htmlspecialchars($post['text2']);?></textarea>
					</div>
					<input type='submit' value='Twext It!' />
					<span id='status'></span>
				</div>
				<div class='tabbertab'>
					<h3>Extra Options</h3>
					<h4>Top Text</h4>
					Font: <input type='text' name='twixt-text-font' value='<?php echo $post["twixt-text-font"]; ?>' /> <small>(example: normal bolder 12pt Arial)</small><br />
					Color: <input type='text' name='twixt-text-color' value='<?php echo $post["twixt-text-color"] ?>' /> <small>(example: #F05000)</small><br />
					<h4>Bottom Text</h4>
					Font: <input type='text' name='twixt-twxt-font' value='<?php echo $post["twixt-twxt-font"]; ?>' /> <small>(example: normal 10pt Arial)</small><br />
					Color: <input type='text' name='twixt-twxt-color' value='<?php echo $post["twixt-twxt-color"]; ?>' /> <small>(example: #505000)</small><br />
				</div>
			</div>
		</form>
	</body>
</html>