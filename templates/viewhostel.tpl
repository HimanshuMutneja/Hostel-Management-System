<html>
<body>
<form action="index.php?mode=ADDHOSTEL" method="POST">
{include file="hosteltemplate.tpl"}
<br><br>
{php}
              require("connection.php");
              $sql="select * from hostel";
              $rs=$conn->Execute($sql);
              echo "<center><h3>Hostel Details</h3></center><br>";
              echo "<table border=0 align=center><tr><th bgcolor=abcabc>HOSTEL NAME</th><th bgcolor=abcabc align=center>HOSTEL CODE</th><th bgcolor=abcabc align=center>HOSTEL LOCATION</th><th bgcolor=abcabc align=center>HWO NAME</th></tr>";
              while(!$rs->EOF)
              {
                   echo "<tr>";
                      $hname=$rs->fields[0];
                      $hcode=$rs->fields[1];
					  $hloc=$rs->fields[2];
					  $hwoname=$rs->fields[3];
                      echo "<td bgcolor=fedcba align=center>$hname</td><td bgcolor=abcdef align=center>$hcode</td><td bgcolor=abcdef align=center>$hloc</td><td bgcolor=abcdef align=center>$hwoname</td>";
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
