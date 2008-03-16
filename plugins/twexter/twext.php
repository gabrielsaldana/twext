<?php
require('twext.neutral.php');

// this is a twext parser. it parses the text/twxt into a tree
function twext_parse($language_left, $language_right)
{
  $language_left = explode("\n", $language_left);
  $language_right = explode("\n", $language_right);
  $count1 = count($language_left);
  $count2 = count($language_right);
  $count = max($count1, $count2);

  $paras = array();
  $para = false;
  $line = false;
  for($i = 0; $i <= $count; $i++) {
    $a1 = trim($language_left[$i]);
    $a2 = trim($language_right[$i]);
    if(!$a1 && !$a2) { // if its a blank line on both sides
      if($line) {
	if (!$para) $para = array();
	$para[] = $line;
	$line = false;
      } else if ($para) {
	$paras[] = $para;
	$para = false;
      }
    } else {
      if (!$line) $line = array();
      $line[] = array($a1, $a2);
    }
  }
  return twext_dom($paras);
}