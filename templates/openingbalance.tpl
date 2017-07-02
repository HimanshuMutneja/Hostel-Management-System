echo "<html>";
			echo "<body background=im.jpg><form name=f3 method=POST action=index.php?service=UPDATEACTION>
echo "<br><table height=100 width=50 border=1>";
<th>Items&nbsp;</th><td rowspan="3">
  {php}
 
echo "<tr>";
	for($i=1;$i<=$cnt->fields[0];$i++)
	{
    	
		echo "<tr>";
		for($j=1;$j<=5;$j++)
		{
  			if($j==1)
			{
				static $k=0;
				$k++;
				echo "<td><input type=text readonly=true size=10 name=z$i$j value=".$k."></td>";
			}
			elseif($j==2)
				echo "<td><input type=text readonly=true size=10 name=z$i$j value=".$rs->fields[0]."></td>";
			else
			echo "<td><input type=text size=7 onblur=\"return check1(this)\" name=z$i$j value=".$rs->fields[$j]."></td>";
		}
		echo "</tr>";
		$rs->MoveNext();
	}
	{/php}
   </tr>
   echo "</table></CENTER>
			<center><br><br><br><br>
			<B><input type=submit value=INSERT></B>
			</center>";	
		echo "</form>
			</body>
			</html>";