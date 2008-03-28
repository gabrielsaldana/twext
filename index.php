<?php

// just a helper function to get a posted value, or a default
function getPost($label, $default) {
	return isset($_POST[$label]) ?
		get_magic_quotes_gpc() ? stripslashes($_POST[$label]) : $_POST[$label]
		: $default;
}

//Styles
$post["twixt-text-font"] = getPost("twixt-text-font", "normal bolder 14pt Arial");
$post["twixt-text-color"] = getPost("twixt-text-color", "#000033");
$post["twixt-twxt-font"] = getPost("twixt-twxt-font", "normal 10pt Arial");
$post["twixt-twxt-color"] = getPost("twixt-twxt-color", "#cccc99");

$post["text1"] = getPost("text1", "each chunk\non a new line\n\none empty line\nstarts\na new twext line\n\ntwo empty lines\nbetween\nthe chorus\n\n\ngeek out now\n\nen idioma lo que sea\n\n\ntwexto\naumenta\ntexto\npa'\nlos que aprenden idiomas\n\nver bién\nentre\nlos renglones\nde texto\ny\n\nrefocus\nto see\nwhat its says\ntwext\n\n\nsi\nel texto twext\nes difícil leer\nbien\n\nso\nyou focus\non the\ntext to learn\n\n\nif the twext\nno follows\nyours rules\nof grammar\n\ndo not have cow\nbit by bit\nyou get the vibe\n\nfor\nhow\nput together\nthe\n-\nin other languages\n\n\nmaybe\ntwext versions\ndo not stop\n\nuse\nin\nsingle language\nworlds\n\n\npuede que twext\nalso\nincludes\nmezclando\ntwixt\ndos\no\n\nmás\nlanguages\nslangs\ndialects\nwhatever\n\nhow\nyou use it\ndepends on\ncomo lo usas\n\n\n-\ntiene\nUNA REGLA\nsi te ayuda\nto learn\n\nlanguages\nfunciona\ndiviertense\ny\njuegan\n\ncon\n-\ny\nvermos\nwhat happens");

$post["text2"] = getPost("text2", "cada trozo\nen un nuevo renglón\n\nun renglón vacio\nempieza\nnuevo renglón twexto\n\ndos renglones vacios\nentre\nlos coros\n\n\nuse firefox and enable javascript\n\nget twext™ in unicode\n\n\ntwext\nenhances\ntext\nfor\nlanguage learners\n\nlook hard\nbetwixt\nthe lines\nof text\nand\n\nreenfocar\npara ver\nlo que dice\ntwext\n\n\nif\nthe twext text\nseems hard to read,\ngood!\n\nque\nte enfoques\nen el\ntexto para aprender!\n\n\nsi la twext\nno sique\ntus réglas\nde gramática\n\n¡no te espantas!\npoco a poco\nagarras la onda\n\nde\ncomo\nse juntan\nlas\nideas\nen otras idiomas\n\n\nconceivably,\ntwext iterations\nshan't preclude\n\nutilization\nwithin\nmonolingual\nenviroments\n\n\ntwext may\nademás\nincluir\nmixing\nentre\ntwo\nor\n\nmore\nidiomas,\ngergas,\ndialects..\nlo que sea..\n\ncomo\nlo usas\ndepende en\nhow you use it\n\n\ntwext\nhas\nuna regla:\nif it helps you\na aprender\n\nlenguajes,\nit's working..\nhave fun\nand\nplay\n\nwith\ntwext\nand\nwe'll see\nque pasa..");

require('twexter/twext.php');

$text1 = $post['text1'];
$text2 = $post['text2'];

//Save XML
// TODO: replace this with javascript
if($_POST['filename']){
	$xml2file = twext_xml($twext);
	$baseFolder = dirname(dirname(__FILE__)).'/saved/';
	$f = fopen($baseFolder.stripslashes($_POST['filename']).'.xml',"w+");
	fwrite($f, $xml2file);
	fclose($f);
}
?>
<html>
  <head>
    <title>Twexter</title>
    <script src='twexter/jquery.js' language="javascript" type="text/javascript"></script>
    <script src='twexter/twexter.js' language="javascript" type="text/javascript"></script>
    <link rel="stylesheet" href="twexter/twexter.css" type="text/css">
    <link rel="stylesheet" href="twexter/tabber.css" type="text/css">
    <style>
      <!--
	  span.twext-text {
	  font: <?php echo $post["twixt-text-font"]; ?>;
	  color: <?php echo $post["twixt-text-color"]; ?>;
	  }
	  span.twext-twxt {
	  font: <?php echo $post["twixt-twxt-font"]; ?>;
	  color: <?php echo $post["twixt-twxt-color"]; ?>;
	  }
	-->
    </style>
    <script src='twexter/tabber.js'></script>
  </head>
  <body style='font-family: arial; padding:0px; margin:0px;'>
    <div style='width:100%; height:100%; position:absolute;'>
      <table><tr><td align=right valign=bottom>
	    <img src="twexter/xx.gif">
	  </td><td valign=bottom align=right><font size="-2" face="verdana,tahoma" color="gray">
	      <font color="red">please use the <b>
		  FIREFOX BROWSER</font></b> to test this twexter otherwise don't bother, thanks<br> <a href="http://mozilla.org/firefox">firefox</a> test
	      zeen twexter <a	href="../go/test">feedback</a> . <a href="../faq.html">faq</a> <a href="../go/">news</a> twext™ © 2007, <a href="http://license.read.fm">read.fm</a>
	      some rights reserved <a href="http://sf.net/projects/twexter">improve twexter</a> <a href="http://wiki.laptop.org/go/WiXi">for
		<b>wixi</b></a></font></td></tr></table>
      <form action='javascript:void(0);' method='post'>
	<div class='tabber' style='position:absolute; top:40px; height:auto; left:10px; right:10px; bottom:10px;'>
	  <div class='tabbertab'>
	    <h2>input twext</h2>
	    <div style='height:90%; position:relative;'>
	      <div class='xcroll' style='position:absolute; width:100%; top:0px; bottom:30px;'>
		<div class='xcroll-preview'></div>
		<textarea name='text1' class='xcroll-left' WRAP='OFF'><?php echo htmlspecialchars($post['text1']);?></textarea>
		<textarea name='text2' class='xcroll-right' WRAP='OFF'><?php echo htmlspecialchars($post['text2']);?></textarea>
	      </div>
	      <div align='center' style='position:absolute; width:100%; bottom:0px;'><input type='button' value='twext me' onclick="javascript:twext_text();"/></div>
	    </div>
	  </div>
	  <div class='tabbertab' style="height:700px;overflow:auto">
	    <h2>tweXML</h2>
	    <fieldset>
	      <legend>Save twexml</legend>
	      <form method="post" action="javascript:void(0);">
		File Name (without extension) &nbsp;<input type="text" name="filename">
		<input type="submit" value="save">
	      </form>
	    </fieldset>
	    <pre>Coming soon... javascript only...</pre>
	  </div>
	  <div class='tabbertab'>
	    <h3>style twext</h3>
	    <table width="100%"><tr><td align="center">
		  <table><tr><td align="right"><font size="+1" color="000033">TEXT</font><br />
			font <input type='text' name='twixt-text-font' value='<?php echo $post["twixt-text-font"]; ?>' /><br />
			color <input type='text' name='twixt-text-color' value='<?php echo $post["twixt-text-color"] ?>' /><br />
		      </td><td valign="center" align="center"><img src="twexter/xx.gif"></td><td>
			<font color="cccc99"><b>twxt</font></b><br />
			<input type='text' name='twixt-twxt-font' value='<?php echo $post["twixt-twxt-font"]; ?>' />font<br />
			<input type='text' name='twixt-twxt-color' value='<?php echo $post["twixt-twxt-color"]; ?>' />color<br />
	    </td></tr></table></td></tr></table>
	  </div>
	</div>
      </form>
    </div>
  </body>
</html>
