<?php
class updatepass
{
	function updatepass($params,$tpl)
	{
		session_start();
		$n=$params['npass'];
		$o=$params['opass'];
		$c=$params['cpass'];
		$id=$_SESSION['USERNAME'];
		$p=$_SESSION['PASSWORD'];
		if($o==$p)
		{
			include("connection.php");
		$sql="update add_users set password='$c',roles='$c' where password='$p'";
		$sql1=$conn->execute("update user_roles set roles='$c' where roles='$p'") or die("unable");
		//echo "update user_roles set roles='$c' where roles='$p'";echo "\n";
		
		//echo "update add_users set password='$c',roles='$c' where password='$p'";
			$num=$conn->execute($sql) or die("Unable to execute");
			$conn->close();
			$_SESSION['PASSWORD']=$c;
			
				$conn->close();
				
				$tpl->assign("m","Succesfully changed ur password");
				$tpl->display("updatepass.tpl");
			}
				
		}
	}
?>
