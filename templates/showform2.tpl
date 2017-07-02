<html>
	
	<body><form name=f3 method=POST action=index.php?service=UPDATEACTION><center>
			<h1><u>FORM-2</u></h1>  
			<h3 align=right>HOSTEL CODE:<input type="text" value={$hostelcode} align="right" size="10"></h3>
			
			<h3 align="left">Diet items consumption and Expenditure Statement for the month of :<u>{$month}-{$y}</u></h3>
			<h3 align="left">Govt.S.W.Boys/Girls Hostel: <u>{$hostelname}</u></h3>
			<table height=100 width=150 border=1>
			<tr bgcolor=abcabc><th rowspan=3>s.no</th>
<th rowspan=3 width="10">item</th>
<th colspan=3>Openingbalances</th>
<th colspan=3>Purchases</th>
<th colspan=3>Total</th>
<th colspan=3>Consumption</th>
<th colspan=3>Closingbalances</th>
<tr bgcolor=abcabc><th>Qty.</th><th>Rate</th><th>Amount</th>
<th>Qty.</th><th>Rate</th><th>Amount</th>
<th>Qty.</th><th>Rate</th><th>Amount</th>
<th>Qty.</th><th>Rate</th><th>Amount</th>
<th>Qty.</th><th>Rate</th><th>Amount</th>
</tr>
<tr bgcolor=abcabc>
<th>3(a)</th><th>3(b)</th><th>3(c)</th>
<th>4(a)</th><th>4(b)</th><th>4(c)</th>
<th>5(a)</th><th>5(b)</th><th>5(c)</th>
<th>6(a)</th><th>6(b)</th><th>6(c)</th>
<th>7(a)</th><th>7(b)</th><th>7(c)</th>
</tr>
{foreach key=k item=val from=$a}
<tr  align=center bgcolor=ffbbcc>
{foreach key=k1 item=val1 from=$val}
<td  align=center bgcolor=ffbbcc>{$val1}</td>
{/foreach}
</tr>
{/foreach}
<tr bgcolor=ffddcc><th colspan="2">TOTAL</th><th></th><th></th><th>{$ot}</th><th></th><th></th><th>{$pt}</th><th></th><th></th><th>{$tt}</th><th></th><th></th><th>{$ct}</th><th></th><th></th><th>{$clt}</th></tr>
</table>
<br><br><br>
<h4 align="right">Signature of the Hostel Welfare Officer</h4><br><br>

</form>
</body>
</html>
