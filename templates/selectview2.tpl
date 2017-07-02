<html>
<body background="im.jpg">
{php}
echo "<table border=2>";
while(!$sub->EOF)
{
echo "<tr>";
echo "<td>".$sub->fields[0]."</td>";
echo "<td>".$sub->fields[1]."</td>";
echo "<td>".$sub->fields[2]."</td>";
echo "<td>".$sub->fields[3]."</td>";
echo "<td>".$sub->fields[4]."</td>";
echo "<td>".$sub->fields[5]."</td>";
echo "<td>".$sub->fields[6]."</td>";
echo "<td>".$sub->fields[7]."</td>";
echo "<td>".$sub->fields[8]."</td>";
echo "<td>".$sub->fields[9]."</td>";
echo "<td>".$sub->fields[10]."</td>";
$sub->moveNext();
echo "</tr>";
}
while(!$x->EOF)
{
echo "<tr>";
echo "<td>".$x->fields[0]."</td>";
echo "<td>".$x->fields[1]."</td>";
echo "<td>".$x->fields[2]."</td>";
echo "<td>".$x->fields[3]."</td>";
echo "<td>".$x->fields[4]."</td>";
echo "<td>".$x->fields[5]."</td>";
echo "<td>".$x->fields[6]."</td>";
echo "<td>".$x->fields[7]."</td>";
echo "<td>".$x->fields[8]."</td>";
echo "<td>".$x->fields[9]."</td>";
echo "<td>".$x->fields[10]."</td>";
echo "<td><a href=index.php?t1={$x->fields[0]}&service=SVIEW>sview</a></td>";
$x->moveNext();
echo "</tr>";
}
echo "</table>";  
{/php}
</body>
</html>
