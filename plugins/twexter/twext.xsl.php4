<?php

function twext_dom($twext) {
	$doc = domxml_new_doc("1.0");
	$root = $doc->create_element('twext');
	foreach ($twext as $para) {
		$xpara = $doc->create_element('para');
		foreach ($para as $line) {
			$xline = $doc->create_element('line');
			foreach ($line as $chunk) {
				$xchunk = $doc->create_element('chunk');
				$xtext = $doc->create_element('text');
				$xtext->set_content(utf8_encode($chunk[0]));
				$xchunk->append_child($xtext);
				$xtwxt = $doc->create_element('twxt');
				$xtwxt->set_content(utf8_encode($chunk[1]));
				$xchunk->append_child($xtwxt);
				$xline->append_child($xchunk);
			}
			$xpara->append_child($xline);
		}
		$root->append_child($xpara);
	}
	$doc->append_child($root);
	return $doc;
}

function twext_xml($twext) {
	return $twext->dump_mem(true);
}
function twext_html($twext) {
	$proc = xslt_create();
	return xslt_process($proc, 'arg:/_xml', 'twext_tables.xsl', NULL, array('/_xml' => twext_xml($twext)));
}

?>