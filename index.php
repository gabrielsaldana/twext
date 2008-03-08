<?php

// just a helper function to get a posted value, or a default
function getPost($label, $default) {
	return isset($_POST[$label]) ?
		get_magic_quotes_gpc() ? stripslashes($_POST[$label]) : $_POST[$label]
		: $default;
}

$post["text1"] = getPost("text1", "cada trozo\nen un nuevo renglón\n\nun renglón vacio\nempieza\nnuevo renglón twexto\n\ndos renglones vacios\nentre\nlos coros\n\n\nuse firefox and enable javascript\n\nget twext™ in unicode\n\n\ntwext\nenhances\ntext\nfor\nlanguage learners\n\nlook hard\nbetwixt\nthe lines\nof text\nand\n\nreenfocar\npara ver\nlo que dice\ntwext\n\n\nif\nthe twext text\nseems hard to read,\ngood!\n\nque\nte enfoques\nen el\ntexto para aprender!\n\n\nsi la twext\nno sique\ntus réglas\nde gramática\n\n¡no te espantas!\npoco a poco\nagarras la onda\n\nde\ncomo\nse juntan\nlas\nideas\nen otras idiomas\n\n\nconceivably,\ntwext iterations\nshan't preclude\n\nutilization\nwithin\nmonolingual\nenviroments\n\n\ntwext may\nademás\nincluir\nmixing\nentre\ntwo\nor\n\nmore\nidiomas,\ngergas,\ndialects..\nlo que sea..\n\ncomo\nlo usas\ndepende en\nhow you use it\n\n\ntwext\nhas\nuna regla:\nif it helps you\na aprender\n\nlenguajes,\nit's working..\nhave fun\nand\nplay\n\nwith\ntwext\nand\nwe'll see\nque pasa..");
$post["text2"] = getPost("text2", "each chunk\non a new line\n\none empty line\nstarts\na new twext line\n\ntwo empty lines\nbetween\nthe chorus\n\n\ngeek out now\n\nen idioma lo que sea\n\n\ntwexto\naumenta\ntexto\npa'\nlos que aprenden idiomas\n\nver bién\nentre\nlos renglones\nde texto\ny\n\nrefocus\nto see\nwhat its says\ntwext\n\n\nsi\nel texto twext\nes difícil leer\nbien\n\nso\nyou focus\non the\ntext to learn\n\n\nif the twext\nno follows\nyours rules\nof grammar\n\ndo not have cow\nbit by bit\nyou get the vibe\n\nfor\nhow\nput together\nthe\n-\nin other languages\n\n\nmaybe\ntwext versions\ndo not stop\n\nuse\nin\nsingle language\nworlds\n\n\npuede que twext\nalso\nincludes\nmezclando\ntwixt\ndos\no\n\nmás\nlanguages\nslangs\ndialects\nwhatever\n\nhow\nyou use it\ndepends on\ncomo lo usas\n\n\n-\ntiene\nUNA REGLA\nsi te ayuda\nto learn\n\nlanguages\nfunciona\ndiviertense\ny\njuegan\n\ncon\n-\ny\nvermos\nwhat happens");

require('twext.php');

$text1 = $post['text1'];
$text2 = $post['text2'];
$twext = twext_parse($text1, $text2);
?>
<html>
  <head>
    <title>test twext with firefox, javascript enabled</title>
    <script src='jquery.js'></script>
    <script src='twexter.js'></script>
    <link rel="stylesheet" href="twexter.css" type="text/css">
    <link rel="stylesheet" href="tabber.css" type="text/css">
    <script src='tabber.js'></script>
  </head>
  <body style='font-family: arial; padding:0px; margin:0px;'>
    <div style='width:100%; height:100%; position:absolute;'>
     
      <table><tr><td align=right valign=bottom>
	    <img src="xx.gif">
	  </td><td valign=bottom align=right><span style:"size: -2px;
	      font-family: verdana,tahoma; color:gray;"><span style="color:#ff0000;">please use the <strong>FIREFOX BROWSER</span></strong> to test this twexter otherwise don't bother,
	      thanks<br> <a href="http://mozilla.org/firefox">firefox</a>
	      test zeen twexter <a href="../go/test">feedback</a> . <a href="../faq.html">faq</a> <a href="../go/">news</a> twext&trade; &copy; 2007, <a href="http://license.read.fm">read.fm</a> some rights reserved <a href="http://sf.net/projects/twexter">improve twexter</a> <a href="http://wiki.laptop.org/go/WiXi">for <strong>wixi</strong></a></span></td></tr></table>
      <form action='./' method='post'>
	<div class='tabber' style='position:absolute; top:40px; height:auto; left:10px; right:10px; bottom:10px;'>
	  <div class='tabbertab'>
	    <h2>input twext</h2>
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
