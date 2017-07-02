<?php

class updatemarks1
{
	function updatemarks1($params,$tpl)
	{

		
		
		
	 $hname=$_SESSION['hostelname'];
	 $month=$_SESSION['month'];
		$y=$_SESSION['year'];
		
    	require_once('adodb.inc.php');
		$con=&ADONewConnection("postgres");
		$con->Connect("localhost","hms","","hms") or die("could not connect to database");
        setcookie("y",$y);
        //setcookie("hname",$hname);
		//setcookie("month",$month);
			echo "<html>";
			echo "<body background=im.jpg><form name=f3 method=POST action=index.php?service=UPDATEACTION><center>
			<h2><u>ENTER PURCHASES FOR $hname HOSTEL FOR $month MONTH AND $y YEAR ";
			
			echo "<br><table height=100 width=50 border=1>";
			$rs=$con->execute("select itemname from mapmonthitem where hostelname='$hname' and year=$y and month='$month'");
	
	$cnt=$con->execute("select count(*) from mapmonthitem where year='$y' and month='$month' and hostelname='$hname'");
	//echo "select count(*) from mapmonthitem where year='$y' and month='$month' and hostelname='$hname'";
	echo "<tr><th rowspan=3>s.no</th>";
echo "<th rowspan=3>item</th>";
echo "<th colspan=3>Purchases</th>";
echo "<tr><th>Qty.</th><th>Rate</th><th>Amount</th>";
echo "</tr>";
echo "<tr>";
echo "<th>4(a)</th><th>4(b)</th><th>4(c)</th>";
echo "</tr>";

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
			echo "<td><input type=text size=7 onblur=\"return check1(this)\" name=z$i$j></td>";
		}
		echo "</tr>";
		$rs->MoveNext();
	}
			echo "</table></CENTER>
			<center><br><br><br><br>
			<B><input type=submit value=INSERT></B>
			</center>";	
		echo "</form>
			</body>
			</html>";
				$con->close();
	}
	}

?>
