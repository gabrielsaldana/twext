<!-- Twexter interface -->
<?
/**
 * The Twexter interface
 *
 * @author Gabriel Saldana <gsaldana@gmail.com>
 * @license GPL v2.0
 */
$script = 'twext/' . $_POST['script'];
$title = '' ;
if($_POST['script'])
    {
        $title = str_replace(".txt",'',$_POST['script']);
        $title = str_replace('_', ' ',$title);
    }
if($script)
    {
        /* Read file contents and load as JSON string */
        $file = fopen($script, "r");
        $jscript = '';
        while(!feof($file))
            {
                // send the current file part to the browser
                $jscript .= fread($file, filesize($script));
            }
        fclose($file);
    }
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
  <head>
    <title>Twexter</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" href="twext.css" type="text/css" media="all">
    <link rel="stylesheet" href="print.css" type="text/css" media="print">
    <link rel="stylesheet" href="twexter.css" type="text/css" media="all">

  </head>
  <body>
      <div id="style-controls" style="display:none">
	<form id="styles-form" action="javascript:void(0)" method="post">
	<table summary="twext styling controls">
	  <thead>
	  <tr>
	    <th>&nbsp;</th>
	    <th class="normal-control-title">Text</th>
	    <th>&nbsp;</th>
	    <th class="twext-control-title">Twext</th>
	  </tr>
	  </thead>
	  <tbody>
	  <tr>
	    <td class="normal-control">Color</td>
	    <td>
	      <select name="normal-color-control" onchange="javascript:setStyle('normal-color', this.value)">
		<option value="#000033">Default</option>
		<option value="blue">Blue</option>
		<option value="red">Red</option>
	      </select>
	    </td>
	    <td class="twext-control">color</td>
	    <td>
	      <select name="twext-color-control" onchange="javascript:setStyle('twxt-color', this.value)">
		<option value="#cccc99">Default</option>
		<option value="blue">Blue</option>
		<option value="red">Red</option>
	      </select>
	    </td>
	  </tr>
	  <tr>
	    <td class="normal-control">Font</td>
	    <td>
	      <select name="normal-font-control" onchange="javascript:setStyle('normal-font', this.value)">
		<option value="Verdana">Default</option>
		<option value="Arial">Arial</option>
		<option value="Times New Roman">Times</option>
	      </select>
	    </td>
	    <td class="twext-control">font</td>
	    <td>
	      <select name="twext-font-control" onchange="javascript:setStyle('twxt-font', this.value)">
		<option value="Verdana">Default</option>
		<option value="Arial">Arial</option>
		<option value="Times New Roman">Times</option>
	      </select>
	    </td>
	  </tr>
	  <tr>
	    <td class="normal-control">Bold</td>
	    <td>
	      <select name="normal-bold-control" onchange="javascript:setStyle('normal-bold', this.value)">
		<option value="bolder">Default</option>
		<option value="normal">Normal</option>
		<option value="bold">Bold</option>
	      </select>
	    </td>
	    <td class="twext-control">bold</td>
	    <td>
	      <select name="twext-bold-control" onchange="javascript:setStyle('twxt-bold', this.value)">
		<option value="normal">Default</option>
		<option value="bold">Bold</option>
		<option value="bolder">Bolder</option>
	      </select>
	    </td>
	  </tr>
	  <tr>
	    <td class="normal-control">Size</td>
	    <td>
	      <select name="normal-size-control" onchange="javascript:setStyle('normal-size', this.value)">
		<option value="12pt">Default</option>
		<option value="14pt">14</option>
		<option value="16pt">16</option>
	      </select>
	    </td>
	    <td class="twext-control">size</td>
	    <td>
	      <select name="twext-size-control" onchange="javascript:setStyle('twxt-size', this.value)">
		<option value="6pt">Default</option>
		<option value="8pt">8</option>
		<option value="10pt">10</option>
	      </select>
	    </td>
	  </tr>
	  <tr>
	    <td class="normal-control">Space</td>
	    <td>
	      <select name="normal-space-control" onchange="javascript:setStyle('normal-space', this.value)">
		<option value="26px">Default</option>
		<option value="15px">15px</option>
		<option value="32px">32px</option>
	      </select>
	    </td>
	    <td class="twext-control">space</td>
	    <td>
	      <select name="twext-space-control" onchange="javascript:setStyle('twxt-space', this.value)">
		<option value="-8px">Default</option>
		<option value="-5px">5px</option>
		<option value="-2px">2px</option>
	      </select>
	    </td>
	  </tr>
	  </tbody>
	</table>
	</form>
      </div>
<h1 id="preview_title"><?= ($title) ? strtoupper($title) : '' ?></h1>
    <div id="preview"></div>
<div id="twexter-interface">
    <form name="twext_form" action="save.php" method="post" accept-encoding="utf-8">

<div id="languages">
<p id="first_language">      <a id="logo" href="http://twext.com/method"><img src="xx.gif" alt="Twexter"></a><label>Type in: </label><select name="first_language">
<option value="ENGLISH.espanol">ENGLISHespanol</option>
<option value="ESPANOL.english">ESPANOLenglish</option>
<option value="SPANGLISH.spanglish">SPANGLISHspanglish</option>
</select></p>

      <label>Title/T&iacute;tulo </label>
      <input type="text" name="title" id="title" value="<?= strtoupper($title) ?>" />

</div>
    <textarea name="text1" id="xscroll-left" onkeyup="javascript:growTextAreas('xscroll-left','xscroll-right')"></textarea>
    <textarea name="text2" id="xscroll-right" onkeyup="javascript:growTextAreas('xscroll-right','xscroll-left')"></textarea>
    <div id="buttons">
    <input type="button" value="dodo" onclick="javascript:twext_text();saveTwext(twexterize(txtleft.value,txtright.value));document.twext_form.submit()"/>
      <input type="hidden" name="twexted_text" id="forsave">
      </div>
    </form>
      <!-- begin style controls -->
</div>
      <!-- end style controls -->
<!--       <script type="text/javascript" src="http://www.google.com/jsapi"></script> -->
      <script src="json2.js" language="javascript" type="text/javascript"></script>
      <script src="twexter.js" language="javascript" type="text/javascript"></script>
<script>
function toggle_stylecontrols(controls)
{
  var ctls = document.getElementById(controls);
  if(ctls.style.display == 'none')
  {
   ctls.style.display = 'block';
  }
  else
  {
   ctls.style.display = 'none';
  }
}
</script>
    <? if(isset($jscript) && $jscript): ?>
     <script>
          var loadedtwext = "<?= $jscript ?>";
          loadTwext(loadedtwext);
     </script>
    <? endif ?>
   </body>
</html>
