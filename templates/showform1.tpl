<html>
	
	<body><form name=f3 method=POST><center>
			<h1><u>FORM-1</u></h1>  
			<h3 align=right>HOSTEL CODE:<input type="text" value={$hostelcode} align="right" size="10"></h3>
			<h3 align="left">Abstract of Attendance of Hostel Boarders for the month of :<u>{$month}-{$y}</u></h3>
			<h3 align="left">Govt.S.W.Boys/Girls Hostel: <u>{$hostelname}</u></h3>
			<h4 align="right">No.of boarers on roll in the hostel during the months[class-wise]:</h4>
			<table height=100 width=150 border=1 align="right">
			<tr bgcolor=abcabc>
			<th>1st</th>
<th>2nd</th>
<th>3rd</th>
<th>4th</th>
<th>5th</th>
<th>6th</th>
<th>7th</th>
<th>8th</th>
<th>9th</th>
<th>10th</th>
<th>Total</th>

{foreach key=k item=val from=$a1}
<tr  align=center bgcolor=ffbbcc>
{foreach key=k1 item=val1 from=$val}
<td  align=center bgcolor=ffbbcc>{$val1}</td>
{/foreach}
</tr>
{/foreach}
</table><br><br><br><br><br><br><br>
<h4 align="left">&nbsp;&nbsp;1. Names of the Schools and wise no.of Students:</h4>	
<table height=100 width=200 border=1 align="center">
			<tr bgcolor=abcabc>
			<th>s.no</th>
<th>Name Of the School</th>
<th>No.of Students in the School</th>
<th>No.of School working days</th>
<th>No.of Holidays</th>
<th>Total School attendnace</th>

{foreach key=k item=val from=$a}
<tr  align=center bgcolor=ffbbcc>
{foreach key=k1 item=val1 from=$val}
<td  align=center bgcolor=ffbbcc>{$val1}</td>
{/foreach}
</tr>
{/foreach}
<tr bgcolor=ffddcc><th colspan="2">TOTAL</th><th></th><th></th><th></th><th>{$total}</th></tr>
</table><br><br>
<h4 align="left">2. Attendance for sick boarders in hostel for the school working days   :<u>{$sickboarders}</u></h4></td></tr>
<h4 align="left">3. Attendance in the hostel for the holidays only(Hostel attendance can not be more than school holidays)   :<u>{$hhattendance}</u></h4></td></tr>
<h4 align="left">4. Total Attendance (School attedance + Sick Attendance in hostel + School holidays attendance in hostel)    :<u>{$totalattendance}</u></h4></td></tr>
<br><br>
<h4 align="right">Signature of the Hostel Welfare Officer</h4><br><br>

</form>
</body>
</html>
