<?php
	class updatestock1
	{					//<link rel="stylesheet" href="sun.css">
		var $template="addstock.tpl";
		
		function updatestock1($params, $tpl)
		{
			require_once("connection.php");
			$itemno= $params['itemno'];
			$itemname= $params['itemname'];
			
			$sql = "update stock set itemname='$itemname' where itemnumber=$itemno";
			
			$sn = $conn->Execute($sql);
			if($sn)
	  			echo "<center><h2><font color=green> Record Updated Sucessfully</font></h2></center>";
			else
				echo "<center><h2><font color=green>Failed to Update</font></h2></center>";
				
				
			$tpl->display($this->template);				
		}
    }
?>
