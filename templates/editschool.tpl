<html>
<head>
  <title>Hostel Information Page</title>

</head>

                                                                                                                             
{literal}
  <script language=javascript>
         function validateForm()
        {
          var f=document.form;
          if(f.schoolname.value=="")
      {
            alert("Please Select School Name");
            f.schoolname.focus();
            return false;
      }
      return true;
        }
  </script>
  {/literal}


<body>
<form name=form action="index.php?service=SCHOOLEDIT" method="POST" onSubmit="return validateForm();">
{include file="schooltemplate.tpl"}
<br><br>
  <h3 align="center"> {$message} </h3>
  <table width="100%" align="left" bgcolor="#70A3D0" cellspacing="2">
   <tr>
   <th align="right"><h2 style="color:white">School Name&nbsp;:</th><td><select name=schoolname>
   <option value="">SELECT SCHOOL</option>
   {html_options values=$sname output=$sname}

           </select> </td>
<tr><td><td></td></td></tr>
<tr><td align=center colspan="4"><input type=submit value="EDIT"> </td></tr></table>
 <input name=service type=hidden value="SCHOOLEDIT" />
 <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><hr> {include file="./footer.tpl"}
</body>
</html>
