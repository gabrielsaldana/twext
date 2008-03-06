<?php

/*if (version_compare(phpversion(), '5.0.0', '>=')) {
	require('twext.xsl.php5');
} else {
	require('twext.xsl.php4');
}*/
// the above commented include versions use xsl, but thats slow
// the following include does everything though php
require('twext.neutral.php');

// this is a twext parser. it parses the text/twxt into a tree
function twext_parse($text1, $text2) {
    $text1 = explode("\n", $text1);
    $text2 = explode("\n", $text2);
    $count1 = count($text1);
    $count2 = count($text2);
    $count = max($count1, $count2);

    $paras = array();
    $para = false;
    $line = false;
    for ($i = 0; $i < $count; $i++)
      {
          $a1 = $i < $count1 ? trim($text1[$i]) : '';
          $a2 = $i < $count2 ? trim($text2[$i]) : '';
          if ($a1 == '' && $a2 == '')
            {
                // if its a blank line on both sides
                  if ($line !== false)
                    {
                        if ($para === false) $para = array();
                        $para[] = $line;
                        $line = false;
                    }
                  else if ($para !== false)
                    {
                        $paras[] = $para;
                        $para = false;
                    }
            }
          else{
              if ($line === false) $line = array();
              $line[] = array($a1, $a2);
          }
      }
    if ($line !== false) {
        if ($para === false) $para = array();
        $para[] = $line;
        $line = false;
    }
    if ($para !== false) {
        $paras[] = $para;
        $para = false;
    }
    return twext_dom($paras);
}
?>