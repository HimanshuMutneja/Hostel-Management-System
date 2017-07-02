<html>
<head>
  <title>Hostel Information Page</title>
  <link rel="stylesheet" href="mystyle.css">
</head>

<body>
<form action="index.php?mode=ADDSCHOOL" method="POST">
{include file="schooltemplate.tpl"}
<br><br>
{php}
              require("connection.php");
              $sql="select * from school where hostelname='{$hname}'";
              $rs=$conn->Execute($sql) or die("error");
              echo "<center><h3>School Details Under {$hname} hostel </h3></center><br>";
              echo "<table border=0 align=center><tr><th bgcolor=abcabc>SCHOOL NAME</th><th bgcolor=abcabc align=center>SCHOOL LOCATION</th><th bgcolor=abcabc align=center>SCHOOL STRENGTH</th></tr>";
              while(!$rs->EOF)
              {
                   echo "<tr>";
                      $sname=$rs->fields[1];
					  $sloc=$rs->fields[2];
					  $sst=$rs->fields[13];
					  echo "<td bgcolor=fedcba align=center>$sname</td><td bgcolor=abcdef align=center>$sloc</td><td bgcolor=abcdef align=center>$sst</td>";
                      echo "</tr>";
                      $rs->MoveNext();
               }
              echo "</table>";
               require("disconnect.php");
{/php}
 <input name=service type=hidden value="ADDSCHOOL" />    
</form>
<br><br><br><br><br><hr> {include file="./footer.tpl"}
</body>
</html>
