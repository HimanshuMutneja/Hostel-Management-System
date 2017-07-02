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
      if(f.hostelcode.value=="")
      {
            alert("please Enter Hostel hostelcode");
            f.hostelcode.focus();
            return false;
      }
	  if(f.hostellocation.value=="")
      {
            alert("please Enter Hostel hostel location");
            f.hostellocation.focus();
            return false;
      }
	  if(f.hwoname.value=="")
      {
            alert("please Enter HWO Name");
            f.hwoname.focus();
            return false;
      }
	  if(f.year.value=="0")
      {
            alert("please Select Year");
            f.year.focus();
            return false;
      }
	  
      return true;
        }
  </script>
  {/literal}

<body bgcolor="#70A3D0">
<form name="addhostel" action="index.php?service=SAVEHOSTEL" method="POST" onSubmit="return validateForm();">
{include file="hosteltemplate.tpl"}<br><br><caption align="center"><b>{$message}</b> </caption><br>
  <pre><h3 style="color:white">    HostelName&nbsp;   :<input type="text"   name="hostelname" value=""><br><br>
   Hostel Code&nbsp;  :<input type="text" name="hostelcode" value=""><br><br>
   Location&nbsp;     :<input type="text" name="hostellocation" value=""><br><br>
   HWO Name&nbsp;     :<input type="text" name="hwoname" value=""><br><br>
   SELECT STARTING :</th><td><select name="year">
   <option value="0">YEAR</option>
   <option>2001</option>
   <option>2002</option>
   <option>2003</option>
   <option>2004</option>
   <option>2005</option>
   <option>2006</option>
   <option>2007</option>
   <option>2008</option>
   <option>2009</option>
   <option>2010</option>
   <option>2011</option>
   <option>2012</option>
   <option>2013</option>
   <option>2014</option>
   <option>2015</option>
   <option>2016</option>
   
   </select></td></tr>
   <tr><th></th><td><select name="month">
   <option value="0">MONTH</option>
   <option value="JANUARY">JAN</option>
   <option value="FEBRUARY">FEB</option>
   <option value="MARCH">MAR</option>
   <option value="APRIL">APR</option>
   <option value="MAY">MAY</option>Year
   <option value="JUNE">JUNE</option>
   <option value="JULY">JULY</option>
   <option value="AUGUST">AUG</option>
   <option value="SEPTEMBER">SEP</option>
   <option value="OCTOBER">OCT</option>
   <option value="NOVEMBER">NOV</option>
              <option value="DECEMBER">DEC</option>
   </SELECT></td></tr><br><br><br>

                       <input type="submit" value="SAVE">
<input name=service type=hidden value="SAVEHOSTEL" />

</pre> 
 <br><br><br><br><br><br><hr> {include file="./footer.tpl"}
</form>
</body>
</html>
