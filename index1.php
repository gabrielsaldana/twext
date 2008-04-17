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

$post["text2"] = getPost("text2", "cada trozo\nen un nuevo renglón\n\nun renglón vacio\nempieza\nnuevo renglón twexto\n\ndos renglones vacios\nentre\nlos coros\n\n\nuse firefox and enable javascript\n\nget twext in unicode\n\n\ntwext\nenhances\ntext\nfor\nlanguage learners\n\nlook hard\nbetwixt\nthe lines\nof text\nand\n\nreenfocar\npara ver\nlo que dice\ntwext\n\n\nif\nthe twext text\nseems hard to read,\ngood!\n\nque\nte enfoques\nen el\ntexto para aprender!\n\n\nsi la twext\nno sique\ntus réglas\nde gramática\n\n¡no te espantas!\npoco a poco\nagarras la onda\n\nde\ncomo\nse juntan\nlas\nideas\nen otras idiomas\n\n\nconceivably,\ntwext iterations\nshan't preclude\n\nutilization\nwithin\nmonolingual\nenviroments\n\n\ntwext may\nademás\nincluir\nmixing\nentre\ntwo\nor\n\nmore\nidiomas,\ngergas,\ndialects..\nlo que sea..\n\ncomo\nlo usas\ndepende en\nhow you use it\n\n\ntwext\nhas\nuna regla:\nif it helps you\na aprender\n\nlenguajes,\nit's working..\nhave fun\nand\nplay\n\nwith\ntwext\nand\nwe'll see\nque pasa..");

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
    <script src='twexter.js' language="javascript" type="text/javascript"></script>
    <link rel="stylesheet" href="twexter/tabber.css" type="text/css">

    <script src='twexter/tabber.js'></script>
  </head>
  <body>
    <div class='xcroll-preview'></div>
    <textarea name='text1' class='xcroll-left' WRAP='OFF'><?php echo htmlspecialchars($post['text1']);?></textarea>
    <textarea name='text2' class='xcroll-right' WRAP='OFF'><?php echo htmlspecialchars($post['text2']);?></textarea>
    <input type='button' value='twext me' onclick="javascript:twext_text();"/>
  </body>
</html>
