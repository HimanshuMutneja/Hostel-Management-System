<html>
	
	<body><form name=f3 method=POST><center>
			<h1><u>HOSTEL STRENGTH FOR {$hostelname} DURING {$y}-{$month}</u></h1><br><br><br>  
			
	
<table height=100 width=200 border=1 align="center">
			<tr bgcolor=abcabc>
			<th>CLASS</th>
<th>SC</th>
<th>HC</th>
<th>ST</th>
<th>BC</th>
<th>OC</th>
<th>TOTAL</th>

{foreach key=k item=val from=$a}
<tr  align=center bgcolor=ffbbcc>
{foreach key=k1 item=val1 from=$val}
<td  align=center bgcolor=ffbbcc>{$val1}</td>
{/foreach}
</tr>
{/foreach}
<tr bgcolor=ffddcc><th>TOTAL</th><th>{$total1}</th><th>{$total2}</th><th>{$total3}</th><th>{$total4}</th><th>{$total5}</th><th>{$total6}</th></tr>
</table><br><br>
<br><br>
<h4 align="right">Signature of the Hostel Welfare Officer</h4><br><br>

</form>
</body>
</html>
