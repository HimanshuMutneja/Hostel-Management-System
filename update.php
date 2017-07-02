<?php
class update
{
function update($params,$tpl)
{
require_once("connection.php");
$htno=$params['htno'];
$sname=$params['sname'];
$fname=$params['fname'];
$address=$params['address'];
$email=$params['email'];
$branch=$params['branch'];
$sem=$params['sem'];
$y=$branch.$sem;
$photo=$params['photo'];
$sql="update profile set rollno='$htno',year='$y',name='$sname', fname='$fname', address='$address',email='$email',image='$photo' where rollno='$htno'";
$rs=$conn->Execute($sql) or die("not update");
$sql1=$conn->execute("update marks set rollno='$htno',year='$y' where rollno='$htno'") or die("can not update in marks table");
if($rs)
echo "UPDATED SUCCESSFULLY";
$tpl->display("update.tpl");
}
}
?>
