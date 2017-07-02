<?php
class updatestock
{
function updatestock($params,$tpl)
{
require_once("connection.php");
$itemname=$params['itemname'];
$sql=$conn->execute("select * from stock where itemname='$itemname'");
$itemno=$sql->fields[0];
$itemname=$sql->fields[1];
$tpl->assign("itemno",$itemno);
$tpl->assign("itemname",$itemname);
$tpl->display("updatestock.tpl");
}
}