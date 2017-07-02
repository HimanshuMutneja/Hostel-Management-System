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
          if(f.hostelname.value=="0")
      {
            alert("Please Select Hostel Name");
            f.hostelname.focus();
            return false;
      }
	   if(f.year.value=="0")
      {
            alert("Please Select Year");
            f.year.focus();
            return false;
      }
	   if(f.month.value=="0")
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
<form name=form action="index.php?service=SELECTFORM2" method="POST" onSubmit="return formateForm();">

<br><br>
  <h3 align="center"> {$message} </h3>
  <table width="100%" align="left" bgcolor="#70A3D0" cellspacing="2">
   <tr>
   <th><h2 style="color:white">Hostel Name&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</th><td><select name=hostelname> 
   <option value="0">SELECT HOSTEL</option>
   {html_options values=$hname output=$hname}

           </select> </td>
		   <tr><th><h2 style="color:white">YEAR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</th><td><select name="year">
   <option value="0">SELECT YEAR</option>
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
   <tr><th><h2 style="color:white">Month&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</th><td><SELECT name="month">
   <option value="0">SELECT MONTH</option>
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
<tr><td><td></td></td></tr>
<tr><td align=center colspan="4"><input type=submit value="VIEW"> </td></tr></table>
 <input name=service type=hidden value="SELECTFORM2" />
 <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><hr> {include file="./footer.tpl"}
</body>
</html>
