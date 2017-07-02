<html>
<body background="manila_paper.jpg">
<form name="frm" method="POST" action="index.php?service=INSERTMARKS1">
<PRE><center>
<h2><u>INSERT STUDENT MARKS OF BRANCH : {$b}   AND YEAR : {$y}</u></h2><br><br><br>
<H3><select name="m">
<option value="sm">SUBJECT MARKS</option>
<option value="lm">LAB MARKS</option>
</select>
<br><br><br><br>
<input type="hidden" name="y" value={$y}>
<input type="hidden" name="s" value={$s}>
<input type="hidden" name="internal" value={$internal}>
<input type="submit" value="INSERT"></H3>
</center></PRE>
</form>
</body>
</html>
