<?php
  // just an internal helper function. it modifies the parsed twext tree to any form dependent o the file (e.g., a DOM
function twext_dom($twext) {
  return $twext;
  }

// outputs xml
function twext_xml($twext) {
  $xml = "<twext>\n";
  foreach ($twext as $para) {
    $xml .= "  <para>\n";
    foreach ($para as $line) {
      $xml .= "    <line>\n";
      foreach ($line as $chunk) {
	$xml .= "      <chunk>\n";
	$xml .= "        <text>".htmlentities($chunk[0])."</text>\n";
	$xml .= "        <twxt>".htmlentities($chunk[1])."</twxt>\n";
	$xml .= "      </chunk>\n";
      }
      $xml .= "    </line>\n";
    }
    $xml .= "  </para>\n";
  }
  $xml .= "</twext>\n";
  return $xml;
}
// outputs html
function twext_html($twext) {
  $xml = "<div class='twext-box'>\n";
  foreach ($twext as $para) {
    $xml .= "  <table class='twext-para'>\n";
    foreach ($para as $line) {
      $xml .= "    <tr><td class='twext-line'>\n";
      foreach ($line as $chunk) {
	$xml .= "      <table class='twext-chunk'>\n";
	$xml .= "        <tr><td><center><span class='twext-text'><nobr>".htmlentities($chunk[0])."</nobr></span></center></td></tr>\n";
	$xml .= "        <tr><td><center><span class='twext-twxt'><nobr>".htmlentities($chunk[1])."</nobr></span></center></td></tr>\n";
	$xml .= "      </table>\n";
      }
      $xml .= "    </td></tr>\n";
    }
    $xml .= "  </table>\n";
  }
  $xml .= "</div>\n";
  return $xml;
}