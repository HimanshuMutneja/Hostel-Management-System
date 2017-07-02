<html>
<head>
  <title>College Information Page</title>
  <link rel="stylesheet" href="mystyle.css">
</head>

<body>
<form action="index.php?mode=ADDSCHOOL" method="POST">
{include file="schooltemplate.tpl"}
<br><br>
{php}
              require("connection.php");
              $hname=$_SESSION['hname'];
			  $sql="select * from school where hostelname='$hname'";
       
			  $rs=$conn->Execute($sql);
              echo "<center><h3>School Details</h3></center><br>";
              echo "<table border=0 align=center><tr><th bgcolor=abcabc>SCHOOL NAME</th><th bgcolor=abcabc>SCHOOL NAME</th><th bgcolor=abcabc>SCHOOL STRENGTH</th></tr>";
              while(!$rs->EOF)
              {
                   echo "<tr>";
                      $schoolname=$rs->fields[1];
                      $schoollocation=$rs->fields[2];
                      $sst=$rs->fields[13];
					  echo "<td bgcolor=fedcba align=center>$schoolname</td><td bgcolor=abcdef align=center>$schoollocation</td><td bgcolor=abcdef align=center>$sst</td>";
                      echo "</tr>";
                      $rs->MoveNext();
               }
              echo "</table>";
               require("disconnect.php");
{/php}
     
</form>
<br><br><br><br><br><hr> {include file="./footer.tpl"}
</body>
</html>
