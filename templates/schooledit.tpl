<html>
<head>
  <title>College Information Page</title>
  </head>
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
<form name="addhostel" action="index.php?service=UPDATESCHOOL" method="POST" onSubmit="return validateForm();">
{include file="schooltemplate.tpl"}
<br><br>
  <caption align="center"><b>{$message}</b> </caption><br>
  <pre>
  School Name&nbsp; <input type="text"   name="schoolname" value="{$sname}" readonly=""><br><br>
   Location&nbsp;   <input type="text" name="schoollocation" value="{$sloc}"><br><br>
<table border="1" bgcolor="#BCD2D5">
No.of students of {$hname} hostel in the school class-wise:              					         <tr><th>1st</th><th>2nd</th><th>3rd</th><th>4th</th><th>5th</th><th>6th</th><th>7th</th><th>8th</th><th>9th</th><th>10th</th>
</tr><tr><td><input type="text" name="first" size="2" value="{$first}"></td><td><input type="text" name="second" size="2" value="{$second}"></td><td><input type="text" name="third" size="2" value="{$third}"></td><td><input type="text" name="fourth" size="2" value="{$fourth}"></td><td><input type="text" name="fifth" size="2" value="{$fifth}"></td><td><input type="text" name="sixth" size="2" value="{$sixth}"></td><td><input type="text" name="seventh" size="2" value="{$seventh}"></td><td><input type="text" name="eighth" size="2" value="{$eighth}"></td><td><input type="text" name="ninth" size="2" value="{$ninth}"></td><td><input type="text" name="tenth" size="2" value="{$tenth}"></td></tr>
</table>
                       <input type="submit" value="SAVE">
<input name=service type=hidden value="UPDATESCHOOL" />

</pre> 
 <br><br><br><br><br><br><hr> {include file="./footer.tpl"}
</form>
</body>
</html>
