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

?>