<html>{literal}
  <script language=javascript>
        function validateForm()
        {
          var f=document.frmuserole;
          if(f.hostelname.value=="SELECT")
      {
            alert("Please Select Hostel Name");
            f.hostelname.focus();
            return false;
      }
	   if(f.year.value=="SELECT")
      {
            alert("Please Select Year");
            f.year.focus();
            return false;
      }
	   if(f.month.value=="SELECT")
      {
            alert("Please Select Month");
            f.month.focus();
            return false;
      }
        return true;
    }
  </script>
  {/literal}

<body>
<form  name="frmuserole" action="index.php?service=MAPMONTHITEM&req=1" method="POST" onSubmit="return validateForm();">

{include file="./hostelitemtemplate.tpl}

  <table width="100%" align="left" bgcolor="#70A3D0" cellspacing="2">
   <h3 align="center"><b>{$message}</b> </h3><tr><td><td></td></td></tr>
   <tr>
 <th><h3 style="color:white">Hostel Name&nbsp;&nbsp;:</th><td>
   <select name="hostelname">
   <option value="{$default2}">{$default2}</option>
   {html_options value=$hname output=$hname}
   </select>
   </td>
   <td align="center" colspan="4">
     <input type=submit value=SAVE name="mapmonthitem">
   </td></tr>
 <tr><th><h3 style="color:white">Year&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</th><td><select name="year">
   <option value="{$default1}">{$default1}</option>
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
   <tr><th><h3 style="color:white">Month&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</th><td><SELECT name="month" onchange="frmuserole.submit()">
   <option value="{$default}">{$default}</option>
   <option value="JANUARY">JAN</option>
   <option value="FEBRUARY">FEB</option>
   <option value="MARCH">MAR</option>
   <option value="APRIL">APR</option>
   <option value="MAY">MAY</option>
   <option value="JUNE">JUNE</option>
   <option value="JULY">JULY</option>
   <option value="AUGUST">AUG</option>
   <option value="SEPTEMBER">SEP</option>
   <option value="OCTOBER">OCT</option>
   <option value="NOVEMBER">NOV</option>
   <option value="DECEMBER">DEC</option>
           
   </SELECT></td></tr>
   <tr>
 <th><h3 style="color:white">Items&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</th><td rowspan="3">
  {php}
 
  for($i=0;$i<$count1;$i++)
  {
      $f=0;
     for($j=0;$j<=$count;$j++)
	 {
	 
	  if($inames[$i]==$getnames[$j])
	   $f=1;
	}
	if($f==1)
	{
	
	echo "<input type='checkbox' value='$inames[$i]' name=itemname[] checked=''>-".$inames[$i];
	   echo "<br>";
	   }
	   else
	   {
	echo "<input type='checkbox' value='$inames[$i]' name=itemname[] >-".$inames[$i];
	echo "<br>";
	}
	 }
	 {/php}
   </tr>
  
   

</table>
 <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><hr> 
 {include file="./footer.tpl"}

</form>
</body>
</html>


