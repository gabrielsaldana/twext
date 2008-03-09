<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>User Home</title>
</head>

<body>
<div align="center">
<?=$data['msg']?>&nbsp;&nbsp;&nbsp;<a href="?cmd=logout">Log out</a>
<br><br>

<big>Plugins:</big><br><br>
<? foreach($data['plugins'] as $plugin):?>
	<a href="?cmd=loadPlugin&p=<?=$plugin['id']?>"><?=$plugin['name']?></a><br>
<? endforeach;?>

</div>
</body>
</html>
