<html>
{literal}
  <script language=javascript>
        function validateForm()
        {
          var f=document.frmuserole;
          if(f.userid.value=="SELECT")
      {
            alert("Please Select User Id");
            f.userid.focus();
            return false;
      }
        return true;
    }
  </script>
  {/literal}


<form  name="frmuserole" action="index.php?service=DELETEMONTHLYITEM2" method="POST" onSubmit="return validateForm()">
  <table width="100%" align="left" bgcolor="#116280" cellspacing="2">
   <h3 align="center"><b>{$message}</b> </h3><tr><td><td></td></td></tr>
   <tr>
 <th><h2 style="color:white">Item Name :</th><td>
   <select name="itemname">
   <option selected="">SELECT ITEM</option>
   {html_options value=$itemname output=$itemname}
   </select>
   </td>
   <td align="center" colspan="4">
     <input type=submit value=DELETE>
   </td></tr>
</table>
 <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><hr> 
 {include file="./footer.tpl"}
</form>
</html>


