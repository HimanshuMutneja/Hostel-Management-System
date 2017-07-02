<html>
<head>
  <title>College Information Page</title>
  <link rel="stylesheet" href="mystyle.css">
 
</head>

                                                                                                                             
{literal}
  <script language=javascript>
        function validateForm()
        {
          var f=document.valid;
          if(f.topicname.value=="Select")
      {
            alert("Please Select Role Name");
            f.topicname.focus();
            return false;
      }
      return true;
        }
  </script>
  {/literal}


<body>
<form name=valid action="index.php?service=SCHOOLDELETE" method="POST" onSubmit="return validateForm();">
{include file="schooltemplate.tpl"}
<br><br>
  <h3 align="center"> {$message} </h3>
  <table width="100%" align="left" bgcolor="lightgray" cellspacing="2">
   <tr>
   <th align="right">School Name&nbsp;</th><td><select name=schoolname>
   {html_options values=$sname output=$sname}

           </select> </td>
<tr><td><td></td></td></tr>
<tr><td align=center colspan="4"><input type=submit value="DELETE"> </td></tr></table>
 <input name=service type=hidden value="SCHOOLDELETE" />
 <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><hr> {include file="./footer.tpl"}
</body>
</html>
