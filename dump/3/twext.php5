<?php

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

require('twext.php');
?>