<?php
  
 
   require_once("connection.php");
   echo "<html><body>";
   $cnt=$conn->execute("select count(*) from marks where year='$y' and internal='$internal'");
	for($i=1;$i<=$cnt->fields[0];$i++)
	{
    	for($j=0;$j<8;$j++)
		{
  			$z[$j]=$_POST[z.$i.$j];
		}
		$u=$conn->execute("update marks set sub1=$z[2],sub2=$z[3] where rollno='$z[0]' and year='$y' and internal='$internal'");
	}
	if($u)
	  echo "<CENTER><H2>  SUCESSFULLY   UPDATED   MARKS   OF  ".$opt;
	  
	
		
?>   
