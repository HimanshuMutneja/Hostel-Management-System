<html>
<head>
{literal}
<script type="text/javascript">
function check()
{
if(document.f.b.value=="0"||document.f.s.value=="0")
{
alert("select branch & sem");
return false;
}
return true;
}
</script>
{/literal}
</head>
<body background="im.jpg">
<center><h1>SELECT THE BRANCH AND SEMISTER</h1></center><hr>
<form name="f" method="POST" action="index.php?service=SELECTVIEW2" onSubmit="return check()"> <br><br><br><br><br>

<center>
BRANCHj:<select name="b"> 
    							   <option value="0"></option>
							   <option value="ECE">ECE</option>
                               <option value="EIE">EIE</option>
                               <option value="CSE">CSE</option> 
                               <option value="CSIT">CSIT</option>       
                               <option value="MECH">MECH</option>
                               <option value="CHEM">CHE</option>
      
</select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    

SEM:<select name="s"> 
                   
				   <option value="0"></option>
				   <option value="1">1 YEAR</option>
                   <option value="2_1">2-I SEM</option>
                   <option value="2_2">2-II SEM</option>
                   <option value="3_1">3-I SEM</option>
                   <option value="3_2">3-II SEM</option>
                   <option value="4_1">4-I SEM</option>
                   <option value="4_2">4-II SEM</option>
                   </select>
   <br><br><br><br><br><br>
   
 <input type="submit" value="SUBMIT"></center></form>
  </body>
</html>
