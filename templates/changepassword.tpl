<html>
<head>
{literal}
<script  language="JavaScript">
function checkp()
{
if(document.f1.opass.value=="")
{
alert("Enter ur OLD PASSWORD");
return(false);
}
if(document.f1.npass.value=="")
{
alert("Enter NEW PASSWORD");
return(false);
}
if(document.f1.cpass.value=="")
{
alert("Enter CONFIRMATION PASSWORD");
return(false);
}

if((document.f1.cpass.value)!=(document.f1.npass.value))
{
alert("Ur Password did not match with the Newpassword,Confirm IT");
return false;
}
	return true;
}
</script>
{/literal}
</head>
<body background="./images/bg.jpg">

<form name=f1 action="index.php" method="post" onsubmit="return checkp()">
<center>
<font face="URW chancery L" color="#1E642E" size="9">Change Password</font></center>
<br><br>
<input type="hidden" name="service" value="UPDATEPASS">
<table border=0 align="center" cellspacing="20">
{php}
session_start();
$n=$_SESSION['USERNAME'];
$a='<tr><td align="right">Ur name:</td><td><input type="text" value="'.$n.'" readonly></td></tr>';
echo $a;
{/php}
<tr><td align="right">Old password:</td><td><input type="password" name="opass"></td></tr>
<tr><td align="right">New Password:</td><td><input type="password" name="npass"></td></tr>
<tr><td align="right">Confirm password:</td><td><input type="password" name="cpass"></td></tr>
<tr><td></td><td><input type="submit" value="Change Password"></td></tr>
</table>
</form>
</body>
</html>
