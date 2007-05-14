<?php

/*
twexter formats text for language learners
free software: http://sf.net/projects/twexter
Copyright © 2007 READ.FM http://license.read.fm
growing literacy grows our market

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation, version 2

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.
 
You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
 Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
*/


/*if (version_compare(phpversion(), '5.0.0', '>=')) {
	require('twext.xsl.php5');
} else {
	require('twext.xsl.php4');
}*/
// the above commented include versions use xsl, but that's slow
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
	for ($i = 0; $i < $count; $i++) {
		$a1 = $i < $count1 ? trim($text1[$i]) : '';
		$a2 = $i < $count2 ? trim($text2[$i]) : '';
		if ($a1 == '' && $a2 == '') { // if its a blank line on both sides
			if ($line !== false) {
				if ($para === false) $para = array();
				$para[] = $line;
				$line = false;
			} else if ($para !== false) {
				$paras[] = $para;
				$para = false;
			}
		} else {
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