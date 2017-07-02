<html>
<head>
  <title>Stock Information Page</title>
  </head>
{literal}
  <script language=javascript>
        function validateForm()
        {
          var f=document.addstock;
         
      if(f.itemname.value=="0")
      {
            alert("Select Item");
            f.itemname.focus();
            return false;
      }
      return true;
        }
  </script>
  {/literal}

<body>
<form name=addstock action="index.php?service=UPDATESTOCK" method="POST" onSubmit="return validateForm();">
{include file="stocktemplate.tpl"}
<br><br>
  <h3 align="center"> {$message} </h3>
  <table width="100%" align="left" bgcolor="#70A3D0" cellspacing="2">
   <tr>
   <td align="center"><select name="itemname">
    <option value="0">SELECT ITEM</option>
   {html_options value=$itemname output=$itemname}</select></td>
   </tr>
   <tr><td><td></td></td></tr>
   <tr><td align="center" colspan="4">
     <input type=submit value=EDIT>
   </td>
</table>
</form>
 <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><hr> {include file="./footer.tpl"}
</body>
</html>
