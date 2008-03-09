<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Login</title>
<style>
.error{
	color:red;
}
</style>
</head>

<body>
	<br>
	<div align="center">
		<?=$data['msg']?>
	  <form id="form1" name="form1" method="post" action="?cmd=login">
		<table width="300" border="0" cellspacing="2" cellpadding="2">
		  <tr>
			<td>Nickname</td>
			<td width="100"><input type="text" name="nick" style="width:100px" /></td>
			<td>&nbsp;</td>
		  </tr>
		  <tr>
			<td>Password</td>
			<td><input type="password" name="pass" style="width:100px" /></td>
			<td>&nbsp;</td>
		  </tr>
		  <tr>
			<td>&nbsp;</td>
			<td align="right"><input type="submit" name="Submit" value="Login" /></td>
			<td>&nbsp;</td>
		  </tr>
		</table>
	  </form>
		<!--a href="?cmd=registerForm">Register</a-->	
	</div>
</body>
</html>
