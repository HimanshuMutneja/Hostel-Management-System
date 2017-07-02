<html>
<head>
  <title>College Information Page</title>
  <link rel="stylesheet" href="mystyle.css">
</head>

<body>
<form action="index.php?mode=ADDHOSTEL" method="POST">
{include file="./hostelitemtemplate.tpl}
<br><br>
{php}
              require("connection.php");
              $sql="select itemname from mapmonthitem where hostelname='{$hname}' and month='{$month}' and year={$year}";
              $rs=$conn->Execute($sql);
              echo "<center><h3>Stock Details for {$hname} hostel during {$year}-{$month}</h3></center><br>";
              echo "<table border=0 align=center><tr><th bgcolor=abcabc align=center>ITEM NAME</th></tr>";
              while(!$rs->EOF)
              {
                   echo "<tr>";
                      $itemname=$rs->fields[0];
                      
                      echo "<td bgcolor=fedcba align=center>$itemname</td>";
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
