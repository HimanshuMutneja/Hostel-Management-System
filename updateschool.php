<?php
	class updateschool
	{					//<link rel="stylesheet" href="sun.css">
		var $template="addschool.tpl";
		
		function updateschool($params, $tpl)
		{
			require_once("connection.php");
			$hn= $_SESSION['hname'];
			$sn= $params['schoolname'];
			
			$sl= $params['schoollocation'];
			 $first=$params['first'];
			 $second=$params['second'];
			$third=$params['third'];
			$fourth=$params['fourth'];
			$fifth=$params['fifth'];
			$sixth=$params['sixth'];
			$seventh=$params['seventh'];
			$eighth=$params['eighth'];
			$ninth=$params['ninth'];
			$tenth=$params['tenth'];
			 $total=$first+$second+$third+$fourth+$fifth+$sixth+$seventh+$eighth+$ninth+$tenth;
			$sql = "update school set location='$sl',first=$first,second=$second,third=$third,fourth=$fourth,fifth=$fifth,sixth=$sixth,seventh=$seventh,eighth=$eighth,ninth=$ninth,tenth=$tenth";
			$sn = $conn->Execute($sql);
			if($sn)
	  			echo "<center><h2><font color=green> Record Inserted Sucessfully</font></h2></center>";
			else
				echo "<center><h2><font color=green>Role Already Exists/Failed to Insert</font></h2></center>";
				
			$tpl->assign("message","HOSTEL ADDING FORM");	
			$tpl->display($this->template);				
		}
    }
?>
