<html>
<head>
{literal}
<script type="text/javascript">
	var timer = null
    function stop()
	{
	clearTimeout(timer)
	}
	function start()
	{
	var time = new Date()
	var hours = time.getHours()
	var minutes = time.getMinutes()
	minutes=((minutes < 10) ? "0" : "") + minutes
	var seconds = time.getSeconds()
	seconds=((seconds < 10) ? "0" : "") + seconds
	var clock = hours + ":" + minutes + ":" + seconds
	document.forms[0].display.value = clock
	timer = setTimeout("start()",1000)
	}
	
	</script>
	</head>

{/literal}
	</head>
	

<body  onload="start()" onunload="stop()" background="im.jpg">
					<form>
					<font color="Lime" align="right" size="4">
					{$smarty.now|date_format:"%A, %B %e, %Y"}
					
				
	</head>
	</head>
           <br>	<input type="text" name="display" align="right" size="7" color="Fushsia">
					</form>
					

<center>
<font size="12">
<font color="yellow" style="italic">
<font face= " 25">
Welcome TO Handy Cricket </font><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <font size="6">
<font color="red" style="italic">
<font face= " 25">
 a trend creater
</font>
</center>
</body>
</html>
