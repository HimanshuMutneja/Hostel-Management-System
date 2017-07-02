<html>
<head>
  <title>College Information Page</title>
  </head>
{literal}
  <script language=javascript>
        function validateForm()
        {
          var f=document.form;
          if(f.schoolname.value=="")
      {
            alert("Please Enter School Name");
            f.schoolname.focus();
            return false;
      }
      if(f.schoollocation.value=="")
      {
            alert("please Enter Location of School");
            f.schoollocation.focus();
            return false;
      }
      if(f.first.value=="")
      {
            alert("Enter Strength In First Class");
            f.first.focus();
            return false;
      }
	  if(f.second.value=="")
      {
            alert("Enter Strength In Second Class");
            f.second.focus();
            return false;
      }
	  if(f.third.value=="")
      {
            alert("Enter Strength In Third Class");
            f.third.focus();
            return false;
      }
	  if(f.fourth.value=="")
      {
            alert("Enter Strength In Fourth Class");
            f.fourth.focus();
            return false;
      }
	  if(f.fifth.value=="")
      {
            alert("Enter Strength In Fifth Class");
            f.fifth.focus();
            return false;
      }
	  if(f.sixth.value=="")
      {
            alert("Enter Strength In Sixth Class");
            f.sixth.focus();
            return false;
      }
	  if(f.seventh.value=="")
      {
            alert("Enter Strength In Seventh Class");
            f.seventh.focus();
            return false;
      }
	  if(f.eighth.value=="")
      {
            alert("Enter Strength In Eighth Class");
            f.eighth.focus();
            return false;
      }
	  if(f.ninth.value=="")
      {
            alert("Enter Strength In Ninth Class");
            f.ninth.focus();
            return false;
      }
	  if(f.tenth.value=="")
      {
            alert("Enter Strength In Tenth Class");
            f.tenth.focus();
            return false;
      }
	  return true;
        }
  </script>
  {/literal}

<body>
<form name="form" action="index.php?service=SAVESCHOOL" method="POST" onSubmit="return validateForm();">
{include file="schooltemplate.tpl"}
<br><br>
  <caption align="center"><b>Add Schools Under {$hname}  hostel</b> </caption><br>
  <pre>
  SchoolName&nbsp; <input type="text"   name="schoolname" value=""><br><br>
  Location&nbsp;   <input type="text" name="schoollocation" value=""><br><br>
  <table border="1" bgcolor="#BCD2D5">
No.of students of {$hname} hostel in the school class-wise:            					         <tr><th>1st</th><th>2nd</th><th>3rd</th><th>4th</th><th>5th</th><th>6th</th><th>7th</th><th>8th</th><th>9th</th><th>10th</th>
</tr><tr><td><input type="text" name="first" size="2"></td><td><input type="text" name="second" size="2"></td><td><input type="text" name="third" size="2"></td><td><input type="text" name="fourth" size="2"></td><td><input type="text" name="fifth" size="2"></td><td><input type="text" name="sixth" size="2"></td><td><input type="text" name="seventh" size="2"></td><td><input type="text" name="eighth" size="2"></td><td><input type="text" name="ninth" size="2"></td><td><input type="text" name="tenth" size="2"></td></tr>
</table>
                       <input type="submit" value="SAVE">
<input name=service type=hidden value="SAVESCHOOL" />

</pre> 
 <br><br><br><br><br><br><hr> {include file="./footer.tpl"}
</form>
</body>
</html>
