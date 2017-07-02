<html>
<head>
  <title>Hostel Information Page</title>
  <link rel="stylesheet" href="mystyle.css">
</head>
<body>
<form action="index.php?service=ADDSCHOOLFORM1" method="POST">
<br><br>
{php}
              require("connection.php");
              $sql="select * from school where hostelname='{$hname}'";
              $rs=$conn->Execute($sql) or die("error");
              echo "<center><h3>School Details Under {$hname} hostel </h3></center><br>";
              echo "<table border=0 align=center><tr><th bgcolor=abcabc>NAME OF THE SCHOOL</th>
			                        <th bgcolor=abcabc align=center>NO.OF STUDENTS IN THE SCHOOL</th>
									<th bgcolor=abcabc align=center>NO.OF SCHOOL WORKING DAYS</th>
									<th bgcolor=abcabc align=center>NO.OF HOLIDAYS</th>
									<th bgcolor=abcabc align=center>TOTAL SCHOOL ATTENDANCE</th></tr>";
              while(!$rs->EOF)
              {
                   echo "<tr>";
                      $sname=$rs->fields[1];
					  $sst=$rs->fields[13];
					  echo "<td bgcolor=fedcba align=center>$sname</td>
					  <td bgcolor=abcdef align=center>$sst</td>
					  <td bgcolor=abcdef align=center><input type=text name=w1></td>
					  <td bgcolor=abcdef align=center><input type=text name=w2></td>
					  <td bgcolor=abcdef align=center><input type=text name=w3></td>";
					  echo "</tr>";
					  $rs->MoveNext();
					 
					  
               }
			  
              echo "</table>";
			  echo "<br><br><br>";
               echo "<table border=0 align=left>
			   <tr><td bgcolor=abcdef align=left>Attendance for sick boarders in hostel
			   for the school working days : <input type=text size=4 name=wdays> <br><br></td>
			   </tr>";
			   echo "<tr><td bgcolor=abcdef align=left>Attendance in the hostel
			   for the holidays only (Holidays attendance can not be more than school holidays) : 
			   <input type=text size=4 name=hdays></td>
			   </tr>";
			   echo "</table>";
			   $_SESSION['sname']=$sname;
			   $_SESSION['sst']=$sst;
			   require("disconnect.php");
{/php}

 <input name=service type=hidden value="ADDSCHOOLFORM1" /> 
 <input name=sname type=hidden value="{$sname}" />   <br><br><br><br><br><br> 
 <pre>                                            <input type="submit" value="SUBMIT">
 </pre>
</form>
<br><br><br><br><br><hr> {include file="./footer.tpl"}
</body>
</html>
