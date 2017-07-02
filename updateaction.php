<?php
 
  $hname=$_SESSION['hostelname'];
	 $month=$_SESSION['month'];
		$y=$_SESSION['year'];
   require_once('adodb.inc.php');
		$con=&ADONewConnection("postgres");
		$con->Connect("localhost","hms","","hms") or die("could not connect to database");
   echo "<html><body background=im.jpg>";
  $cnt=$con->execute("select count(*) from mapmonthitem where year='$y' and month='$month' and hostelname='$hname'") or die("could not countt");
  for($i=1;$i<=$cnt->fields[0];$i++)
	{
    	for($j=1;$j<=10;$j++)
		{
  			$z[$j]=$_POST[z.$i.$j];
		
		if($j==3)
		{
		$p=$_POST[z.$i.$j];
		}
		if($j==4)
		{
		$q=$_POST[z.$i.$j];
		}
		if($j==5)
		{
		$z[$j]=$p*$q;
		}
		}
		$u=$con->execute("insert into purchases values($i,'$hname','$month',$y,'$z[2]',$z[3],$z[4],$z[5])");
		
		
	}
	$sql1=$con->execute("select quantity,rate,amount,itemname from openingbalance where hostelname='$hname' and month='$month' and year=$y order by sno");
	$sql2=$con->execute("select quantity,rate,amount from purchases where hostelname='$hname' and month='$month' and year=$y order by sno");
	$i=0;
		while(!$sql1->EOF)
	{
	$oq[$i]=$sql1->fields[0];
	$or[$i]=$sql1->fields[1];
	$oa[$i]=$sql1->fields[2];
	$itemname[$i]=$sql1->fields[3];
	$i++;
	$sql1->MoveNext();
	}
	
	$i=0;
	while(!$sql2->EOF)
	{
	$pq[$i]=$sql2->fields[0];
	$pr[$i]=$sql2->fields[1];
	$pa[$i]=$sql2->fields[2];
	$i++;
	$sql2->MoveNext();
	}
	
		for($i=0;$i<$cnt->fields[0];$i++)
	{
	$tq[$i]=$oq[$i]+$pq[$i];
	$ta[$i]=$oa[$i]+$pa[$i];
	$total=$con->execute("insert into total values($i+1,'$hname','$month',$y,'$itemname[$i]',$tq[$i],$pr[$i],$ta[$i])");
	}
	
	if($u)
	  echo "<CENTER><H2>SUCESSFULLY  INSERTED PURCHASES </H2></CENTER> ";
	  else
	  echo "<CENTER><H2><FAILED TO INSERT PURCHASE VALUES </H2></CENTER> ";
		

?>   
