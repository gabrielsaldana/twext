<?php

// just a helper function to get a posted value, or a default
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
		<title>use firefox to test twexter</title>
		<script src='jquery.js'></script>
		<script src='twexter.js'></script>
		<link rel="stylesheet" href="twexter.css" type="text/css">
		<link rel="stylesheet" href="tabber.css" type="text/css">
		<script src='tabber.js'></script>
	</head>
	<body style='font-family: arial; padding:0px; margin:0px;'>
		<!--div id='intro' style='position:fixed; top:0px; bottom:0px; left:0px; right:0px; background:darkGray; padding:10%; z-index:100'>
			<h1 id='intro-header' align="center" style="top:20%; position:relative; color:white;font-family:Verdana,Tahoma">twexter</h1>
		</div-->
		<div style='width:100%; height:100%; position:absolute;'>
			<h1 style='height:15px; margin:10px;'>twexter</h1>
			<form action='./' method='post'>
				<div class='tabber' style='position:absolute; top:40px; height:auto; left:10px; right:10px; bottom:10px;'>
					<div class='tabbertab'>
						<h2>Twext Input</h2>
						<div style='height:90%; position:relative;'>
							<div class='xcroll' style='position:absolute; width:100%; top:0px; bottom:30px;'>
								<div class='xcroll-preview'><!--?php echo twext_html($twext);?--></div>
								<textarea name='text2' class='xcroll-left' WRAP='OFF'><?php echo htmlspecialchars($post['text2']);?></textarea>
								<textarea name='text1' class='xcroll-right' WRAP='OFF'><?php echo htmlspecialchars($post['text1']);?></textarea>
							</div>
							<div align='center' style='position:absolute; width:100%; bottom:0px;'><input type='submit' value='twext me'/></div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</body>
</html>