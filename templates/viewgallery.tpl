<html><head>
{literal}
<script language='javascript'>
function book1()
 {
   
   if(document.f.s1.options.selectedIndex==0)
     {
	    alert("select subject");
		return false;
	  }
	else
	  {
	    
	    f.h.value=1;
		f.submit();
		return true;
	   }
  }
  </script>
 {/literal}
 </head>
 <body bgcolor="#CCFFFF"><form name="f" method="post" action="index.php?service=VIEWGALLERY">
 <center><h1>SELECT DATE</h1>
 <select name="s1" onchange=book1()>
 {html_options options=$date selected=$sel1}
  </select><br /><br />
  <h1>Select EVENT</h1>
  <select name="s2">
  {html_options options=$photo selected=$sel2}
  </select><br /><br /><br />
  <input type="hidden" name="h" value=0 />
 <input type="submit" name="bbb" value="submit" />
</form></center>			 
  .</body></html>
