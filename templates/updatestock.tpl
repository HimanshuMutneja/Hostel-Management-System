<html>
<head>
  <title>Stock Information Page</title>
  </head>
{literal}
  <script language=javascript>
        function validateForm()
        {
          var f=document.addstock;
         
      if(f.itemname.value=="")
      {
            alert("please Enter item name");
            f.itemname.focus();
            return false;
      }
      return true;
        }
  </script>
  {/literal}

<body>
<form name=addstock action="index.php?service=UPDATESTOCK1" method="POST" onSubmit="return validateForm();">
{include file="stocktemplate.tpl"}
<br><br>
  <h3 align="center"> {$message} </h3>
  <table width="100%" align="left" bgcolor="#70A3D0" cellspacing="2">
   <tr>
   <th align="right">Item No&nbsp;</th><td><input type="text" name="itemno" value="{$itemno}" readonly></td>
   <th align="right">Item Name&nbsp;</th><td><input type="text" name="itemname" value="{$itemname}"></td>
   </tr>
   <tr><td><td></td></td></tr>
   <tr><td align="center" colspan="4">
     <input type=submit value=UPDATE>
   </td>
</table>
</form>
 <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><hr> {include file="./footer.tpl"}
</body>
</html>
