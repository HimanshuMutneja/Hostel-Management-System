<html>
<head>
{literal}
  <script language=javascript>
	function validateForm()
	{
	  var f=document.log_in;
	  
      if(f.username.value=="")
      {
            alert("please Enter username");
            f.username.focus();   
            return false;
      } 
	  if(f.password.value=="")
      {
            alert("please Enter Password");
            f.password.focus();   
            return false;
      }  
	    
      return true;
	}
  </script>
  {/literal}
  </head>
<BODY bgcolor="#F6D29C"><MARQUEE behavior="alternate" bgcolor="#8DA1B6"><FONT SIZE="6" COLOR="#283287">H M S</FONT></MARQUEE>
<br><br><br>
<h4 align=center style="font-weight: bold"><Span STYLE='COLOR:#CC0000; BACKGROUND:#FFFFFF'> **********Welcome to Hostel Management System************ </span></h4>

<center><br><br><br>{$message}
  <form name="log_in" action="index.php?service=LOGIN" method=POST onSubmit="return validateForm()" >
<TABLE border="0" cellspacing="8" cellpadding="0" style="background:#FFB76F">

 <TR><TH>User Name</TH><TD><input type = text name = username size=10 ></TD>
 </TR>
 <TR><TH>Password</TH> <TD><input type = password  name = password size=10></TD> </TR>

<tr><th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type = submit style="font-weight: bold"  value = "Login" size=10></th></tr>
 </TABLE> 
 </form>
</BODY>
</html>
