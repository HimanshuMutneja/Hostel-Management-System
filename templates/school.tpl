<html>
<head>
  <title>College Information Page</title>
  </head>
{literal}
  <script language=javascript>
        function validateForm()
        {
          var f=document.school;
          if(f.hname.value=="")
      {
            alert("Please Enter HostelName");
            f.hname.focus();
            return false;
      }
      
        }
  </script>
  {/literal}

<body>
<form name="school" action="index.php?service=SCHOOL1" method="POST" onSubmit="return validateForm();">
<center><h1>SELECT HOSTEl<hr></h1>
<br><br>
<table width="100%" align="center" bgcolor="#266089" cellspacing="1">
<tr><td align="right"><h3>Select Hostel :</td><td><select name="hostelname">{html_options value=$hname output=$hname}</select></td></tr>
<tr><td align="center"></td><td><input type="submit" value="SUBMIT"></td></tr>
</table>
<input name=service type=hidden value="SCHOOL1" />
</center>
</form>
</body>
</html>
