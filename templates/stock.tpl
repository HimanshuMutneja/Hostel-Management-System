<html>
<head>
  <title>Hostel Information Page</title>
  <link rel="stylesheet" href="mystyle.css">
</head>

<body>
<form>
{include file="stocktemplate.tpl"}
<br><br>
{php}
              require("connection.php");
              $sql="select * from stock order by itemnumber";
              $rs=$conn->Execute($sql) or die("error");
              echo "<center><h3>Stock Names </h3></center><br>";
              echo "<table border=0 align=center><tr><th bgcolor=abcabc>ITEM NUMBER</th><th bgcolor=abcabc align=center>ITEM NAME</th></tr>";
              while(!$rs->EOF)
              {
                   echo "<tr>";
                      $itemno=$rs->fields[0];
					  $itemname=$rs->fields[1];
					  echo "<td bgcolor=fedcba align=center>$itemno</td><td bgcolor=abcdef align=center>$itemname</td>";
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
