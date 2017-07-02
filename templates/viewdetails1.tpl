<html>

{literal}
  <script language=javascript>
        function validateForm()
        {
          var f=document.addhostel;
          if(f.hostelname.value=="")
      {
            alert("Please Enter HostelName");
            f.hostelname.focus();
            return false;
      }
      if(f.location.value=="")
      {
            alert("please Enter Location of Hostel");
            f.location.focus();
            return false;
      }
      return true;
        }
  </script>
  {/literal}

<body>
<form name="addhostel" method="POST" onSubmit="return validateForm();">
<caption><center><h1><b>{$message}</b></h1></center></caption><br><br>
<table  align="center"><tr>
<th  bgcolor=abcabc >HostelName</th>
<th  bgcolor=abcabc >Hostel Code</th>
<th  bgcolor=abcabc>Location</th>
<th  bgcolor=abcabc> HWO Name</th></tr>
<tr>
<td bgcolor=fedcba align="center">{$hname}</td>
<td bgcolor=fedcba align="center">{$hcode}</td>
<td bgcolor=fedcba align="center"> {$hloc}</td>
<td bgcolor=fedcba align="center">{$hwoname}</td></tr>
</table><br>
<table align="center">
<center><h3>No.of students in this {$hname} hostel in classwise:<hr></h3></center><br>
<tr bgcolor="abcabc"><th>1 st</th><th>2 nd</th><th>3 rd</th><th>4 th</th><th>5 th</th>
<th>6 th</th><th>7 th</th><th>8 th</th><th>9 th</th><th>10 th</th><th>TOTAL</th></tr>
<tr bgcolor="abcdef"><td align="center">{$first}</td>
<td align="center">{$second}</td>
<td align="center">{$third}</td>
<td align="center">{$fourth}</td>
<td align="center">{$fifth}</td>
<td align="center">{$sixth}</td>
<td align="center">{$seventh}</td>
<td align="center">{$eighth}</td>
<td align="center">{$ninth}</td>
<td align="center">{$tenth}</td>
<td align="center">{$total}</td></tr>
</table>
{php}
              require("connection.php");
              $sql="select * from school where hostelname='$hname'";
              $rs=$conn->Execute($sql);
              echo "<center><h3>No.of schools in this {$hname} hostel :<hr></h3></center><br>";
              echo "<table border=0 align=center><tr><th bgcolor=abcabc>SCHOOL NAME</th>
			  <th bgcolor=abcabc>SCHOOL LOCATION</th><th bgcolor=abcabc>SCHOOL STRENGTH</th></tr>";
              while(!$rs->EOF)
              {
                   echo "<tr>";
                      $schoolname=$rs->fields[1];
                      $schoollocation=$rs->fields[2];
                      $sst=$rs->fields[13];
					  echo "<td bgcolor=fedcba align=center>$schoolname</td>
					  <td bgcolor=abcdef align=center>$schoollocation</td>
					  <td bgcolor=abcdef align=center>$sst</td>";
                      echo "</tr>";
                      $rs->MoveNext();
               }
              echo "</table>";
               require("disconnect.php");
{/php}  
</html>            
<br><hr> {include file="./footer.tpl"}
</form>
</body>
</html>
