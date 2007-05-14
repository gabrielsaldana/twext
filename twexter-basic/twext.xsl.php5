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


function twext_dom($twext) {
	$doc = new DOMDocument;
	$root = $doc->createElement('twext');
	foreach ($twext as $para) {
		$xpara = $doc->createElement('para');
		foreach ($para as $line) {
			$xline = $doc->createElement('line');
			foreach ($line as $chunk) {
				$xchunk = $doc->createElement('chunk');
				$xchunk->appendChild($doc->createElement('text', $chunk[0]));
				$xchunk->appendChild($doc->createElement('twxt', $chunk[1]));
				$xline->appendChild($xchunk);
			}
			$xpara->appendChild($xline);
		}
		$root->appendChild($xpara);
	}
	$doc->appendChild($root);
	$doc->formatOutput = true;
	return $doc;
}

function twext_xml($twext) {
	return $twext->saveXML();
}
function twext_html($twext) {
	$xsldoc = DOMDocument::load('twext_tables.xsl');
	$proc = new XSLTProcessor;
	$proc->importStyleSheet($xsldoc);
	return $proc->transformToXML($twext);
}

?>