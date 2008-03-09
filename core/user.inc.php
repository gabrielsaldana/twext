<?php

class TUser {
		
	function TUser() {
	}
	
	function login($nick,$pass){
		global $main, $db;
		
		$nick = addslashes($nick);
		$pass = addslashes($pass);
		
		$db->query("SELECT * FROM users WHERE nick = '$nick' AND pass = '$pass'") ;
		if($db->getRowsCount()){
			$row = $db->getRow();
			
			$_SESSION['uid'] 				= $row['id'];
			$_SESSION['unick'] 			= $row['nick'];
			$_SESSION['ufull_name'] 	= $row['full_name'];
			$_SESSION['email'] 			= $row['email'];
			
			$main->redirect('./index.php');
		}
		else{
			$main->loadTemplate('index',array('msg'=>'Nickname or password is incorrect!'));
		}
	}
	
	function logout(){
		global $main;
		
		session_unregister('uid');
		session_unregister('unick');
		$main->loadTemplate('index');
	}
	
	function loggedin(){
		if(isset($_SESSION['uid']) && isset($_SESSION['unick'])) return true;
		else return false;
	} //Is user logged into the system or not?
	
	function registerForm(){}
	
	function register(){}
		
	function getUserID() {
		return $_SESSION['uid'];
	}

	function getUserNick() {
		return $_SESSION['unick'];
	}

	function getUserName() {
		return $_SESSION['ufull_name'];
	}

	function getUserEmail() {
		return $_SESSION['email'];
	}


}

?>