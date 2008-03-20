<?php
class TMain {
	function TMain() {
		session_start();
	}
	
	function loadTemplate($template,$data=array()){		
		if(!isset($data['msg'])) $data['msg'] = '';
		
		require_once('templates/'.$template.'.tpl.php');
	}
	
	function loadPlugin($id){
		global $db;
		
		$db->query("SELECT * FROM plugins WHERE id = $id");
		$plugin = $db->getRow();
		if($plugin['indexfile']){
			$this->redirect($plugin['indexfile']);
		}
		else $this->printError('Cannot load plugin');
	}
	
	function getVar($v){
		return isset($_GET[$v]) ? $_GET[$v] : '';
	}
	
	function postVar($v){
		return isset($_POST[$v]) ? $_POST[$v] : '';
	}
	
	function printError($err){
		print '<span style="color:red">' . $err . '</span>';
	}
	
	function redirect($path){
		header("Location: ".$path);
	}
}
?>