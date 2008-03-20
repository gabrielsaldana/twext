<?php
require_once('config.php');
require_once('./core/main.inc.php');
require_once('./core/database.inc.php');
require_once('./core/user.inc.php');

$main = new TMain();
$db = new TDatabase();
$user = new TUser();

switch($main->getVar('cmd')){
 case 'login': 			$user->login($main->postVar('nick'),$main->postVar('pass'));	break;
 case 'logout': 			$user->logout();	break;
 case 'loadPlugin': 	$main->loadPlugin($main->getVar('p'));	break;

 default:
   if($user->loggedin()) {
     $db->query("SELECT * FROM plugins");
     $plugins = $db->getRows();

     $main->loadTemplate('userArea',array('msg'=>'Hello '.$user->getUserNick(),
					  'plugins' => $plugins));
   }
   else $main->loadTemplate('index',array('msg'=>''));
   break;
 }
?>