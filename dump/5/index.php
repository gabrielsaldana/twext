<?php

function getPost($label, $default) {
	return isset($_POST[$label]) ?
		get_magic_quotes_gpc() ? stripslashes($_POST[$label]) : $_POST[$label]
		: $default;
}

$post["text1"] = getPost("text1", "hello world\nhow are you?");
$post["text2"] = getPost("text2", "salaam dunya\nkaisi ho tum?");

require('twext.php');

$text1 = $post['text1'];
$text2 = $post['text2'];
$twext = twext_parse($text1, $text2);

?>
<html>
	<head>
		<title>twexter</title>
		<script src='jquery.js'></script>
		<script src='twexter.js'></script>
		<link rel="stylesheet" href="twexter.css" type="text/css">
		<link rel="stylesheet" href="tabber.css" type="text/css">
		<script src='tabber.js'></script>
	</head>
	<body style='font-family: arial'>
		<h1>twexter</h1>
		<form action='./' method='post'>
			<div class='tabber'>
				<div class='tabbertab'>
					<h2>Twext Input</h2>
					<div class='xcroll'>
						<div class='xcroll-preview'><?php echo twext_html($twext);?></div>
						<textarea name='text2' class='xcroll-left'><?php echo htmlspecialchars($post['text2']);?></textarea>
						<textarea name='text1' class='xcroll-right'><?php echo htmlspecialchars($post['text1']);?></textarea>
					</div>
					<div align='center'><input type='submit' value='twext me'/></div>
				</div>
			</div>
		</form>
	</body>
</html>