<html>
<head>
  <title>College Information Page</title>
  <link rel="stylesheet" href="mystyle.css">
 
</head>

                                                                                                                             
{literal}
  <script language=javascript>
        function formateForm()
        {
          var f=document.form;
          if(f.hostelname.value=="")
      {
            alert("Please Select Hostel Name");
            f.hostelname.focus();
            return false;
      }
      return true;
        }
  </script>
  {/literal}


<body>
<form name=form action="index.php?service=SCHOOL1" method="POST" onSubmit="return formateForm();">

<br><br>
  <h3 align="center"> {$message} </h3>
  <table width="100%" align="left" bgcolor="#70A3D0" cellspacing="2">
   <tr>
   <th align="right"><h3 style="color:white">Hostel Name&nbsp;</th><td><select name=hostelname> 
   <option value="">SELECT HOSTEL</option>
   {html_options values=$hname output=$hname}

           </select> </td>
<tr><td><td></td></td></tr>
<tr><td align=center colspan="4"><input type=submit value="VIEW"> </td></tr></table>
 <input name=service type=hidden value="SCHOOL1" />
 <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><hr> {include file="./footer.tpl"}
</body>
</html>
