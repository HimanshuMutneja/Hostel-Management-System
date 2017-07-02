<html>
<body>
<form name="f1"method="POST"service="index.php?service=view1.tpl">
<select name="s1">
<option value="1">SELECT HOSTEL</option>
{html_options value={$hname} output={$hname}</select>
<br><br><br>
<input type="submit"value="SUBMIT">
<input type="hidden"name="SUBMIT">
</form></body>
</html>
