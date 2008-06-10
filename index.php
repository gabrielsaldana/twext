<!-- Twexter interface -->
<?
$script = 'saved/' . $_POST['script'];
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
    <link rel="stylesheet" href="twext.css" type="text/css">
    <link rel="stylesheet" href="twexter.css" type="text/css">
<script src="browserdetect.js" language="javascript" type="text/javascript"></script>
<?= ($script) ? '<script src="' . $script . '" language="javascript" type="text/javascript"></script>' : '' ?>
<script>
BrowserDetect.init();
if(BrowserDetect.browser != "Firefox")
{
   alert("Please only test with Firefox.\n Get it at http://getfirefox.com");
   window.location = "http://getfirefox.com";
}
</script>
  </head>
  <body>
<h1 id="logo">
<a href="http://twext.com/faq">Twext</a>&nbsp;<img src="xx.gif" alt="Twexter">&nbsp;<a href="http://twext.com/method">Method</a>
</h1>
    <div id="preview"></div>
    <form action="save.php" method="post" accept-encoding="utf-8">
    <div id="titlediv">
      <label>Title/T&iacute;tulo </label>
      <input type="text" name="title" id="title" />
    </div>
    <textarea name="text1" id="xscroll-left" onkeyup="javascript:growTextAreas('xscroll-left','xscroll-right')"></textarea>
    <textarea name="text2" id="xscroll-right"
  onkeyup="javascript:growTextAreas('xscroll-right','xscroll-left')"></textarea>
    <div id="buttons">
    <input type="button" value="twext me" onclick="javascript:twext_text();saveTwext(twext_parse(txtleft.value,txtright.value));"/>
      <input type="submit" value="save">
      <input type="hidden" name="twexted_text" id="forsave">
      <a href="load.php">Load</a>
      </div>
      <!-- begin style controls -->
      <div id="style-controls">
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
      <!-- end style controls -->
      <script src="json.js" language="javascript" type="text/javascript"></script>
      <script src="twexter.js" language="javascript" type="text/javascript"></script>
    <? if(isset($jscript) && $jscript): ?>
     <script>
          var loadedtwext = "<?= $jscript ?>";
          loadTwext(loadedtwext);
     </script>
    <? endif ?>
   </body>
</html>
