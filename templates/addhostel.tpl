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
<form name="addhostel" action="index.php?service=SAVEHOSTEL" method="POST" onSubmit="return validateForm();">
{include file="hosteltemplate.tpl"}
<br><br>
  <caption align="center"><b>{$message}</b> </caption><br>
  <pre>
  HostelName&nbsp; <input type="text"   name="hostelname" value=""><br><br>
  Hostel Code&nbsp; <input type="text" name="hostelcode" value=""><br><br>
   Location&nbsp;   <input type="text" name="hostellocation" value=""><br><br>
   HWO Name&nbsp;   <input type="text" name="hwoname" value=""><br><br>

                       <input type="submit" value="SAVE">
<input name=service type=hidden value="SAVEHOSTEL" />

</pre> 
 <br><br><br><br><br><br><hr> {include file="./footer.tpl"}
</form>
</body>
</html>
