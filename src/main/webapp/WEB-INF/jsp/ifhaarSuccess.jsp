<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script language="javascript" type="text/javascript" src="js/datetimepicker.js">

</script>
<script type="text/javascript">
function validate()
{
var prayer1=document.ifthar.prayer1.value;
var prayer2=document.ifthar.prayer2.value;
var prayer3=document.ifthar.prayer3.value;
var prayer4=document.ifthar.prayer4.value;
var prayer5=document.ifthar.prayer5.value;

if(prayer1=="")
{
alert("Please enter prayer 1.")

document.ifthar.prayer1.focus();
}

else if(prayer2=="")
{
alert("Please enter prayer 2.")

document.ifthar.prayer2.focus();
}

else if(prayer3=="")
{
alert("Please enter prayer 3.")

document.ifthar.prayer3.focus();
}

else if(prayer4=="")
{
alert("Please enter prayer 4.")

document.ifthar.prayer4.focus();
}
else if(prayer5=="")
{
alert("Please enter prayer 5.")

document.ifthar.prayer5.focus();
}

else if(document.ifthar.date.value=="")
{
alert("Please enter Date.")

document.ifthar.date.focus();
} 

else
{
return true;
}

return false;
}


function remove(space)
{
	var plus = 0;
	for(var i=0;i<space.length;i++)
	{
		if (space.charAt(i) != ' ')
		{
			plus =plus + 1;
		}
	}
	return(plus);
}
</script>
<!-- <style>
td{font-family:Tahoma;font-size:11px;color:#000000;}
.txt{padding-left:15px;padding-right:15px;padding-top:5px;}
.date{font-weight:bold;font-size:10px;color:#A7A7A7;}
.cap{font-weight:bold;color:#2E688E;padding-left:5px;padding-top:4px;padding-bottom:3px;}
</style>
<style type="text/css">
  div.calendar_widget { position: absolute; top: 0px; left: 0px; width:140px; height: 200px; display: none; }
</style>
<style type="text/css">
  div.downloadlist { float:right; border: 1px; background-color: e0e0ff; padding: 4px; border-style: outset; }
  div.downloadlist ul { list-style: none; margin: 4px; }
</style> -->
</head>

<body topmargin="0" leftmargin="0" bgcolor="#FFFFFF" ><center>
<center>
  <h5>Successfully Added</h5>
</center>

		<form name="ifthar" action="ifthaarsave.html" modelAttribute="iftharCommand" onsubmit="return validate()" method="post" target="frm">
		   
   <table border="1" id="table6" cellspacing="0" cellpadding="0" bordercolor="#E5EEF9">
 <table border="1" width="48%" id="table6" cellspacing="0" cellpadding="0" bordercolor="#E5EEF9"> 
			<tr>
				<td>
				<table border="0" width="100%" id="table7" cellspacing="3" cellpadding="3"> 
				<table border="0" id="table7" cellspacing="3" cellpadding="3">
					<tr>
						<td colspan="2" bgcolor="#1C837C">
						<p style="margin-left: 10px"><b>
						<font face="Verdana" size="2" color="#FFFFFF">Add 
						/ Update Ifthaar</font></b></td>
					</tr>
					<tr>
						<td width="23%">
					<b>
						<font face="Verdana" size="1">Prayer 1</font></b></td>
						<td width="72%">
						<input name="prayer1" size="20"></td>
					</tr>
					<tr>
						<td width="23%">
						<b>
						<font face="Verdana" size="1">Prayer 2</font></b></td>
						<td width="72%">
						<input name="prayer2" size="20"></td>
					</tr>
					<tr>
						<td width="23%"><b><font face="Verdana" size="1">Prayer 
						3</font></b></td>
						<td width="72%">
						<input name="prayer3" size="20"></td>
					</tr>
					<tr>
						<td width="23%"><b><font face="Verdana" size="1">Prayer 
						4</font></b></td>
						<td width="72%">
						<input name="prayer4" size="20"></td>
					</tr>
					<tr>
						<td width="23%"><b><font face="Verdana" size="1">Prayer 
						5</font></b></td>
						<td width="72%">
						<input name="prayer5" size="20"></td>
					</tr>
					<tr>
						<td width="23%"><b><font face="Verdana" size="1">Date</font></b></td>
						<td width="72%">
							
<input id="demo3" name="date" type="text" size="20"><a href="javascript:NewCal('demo3','ddmmmyyyy',true,24)"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>
						<input type="submit" value="Add Now"  name="B1" >
						<input type="reset" value="Clear" name="B2"></td>
					</tr>
					</table>
					</table>
				</td>
			</tr>
			</table>
			</table></form>
		</div>
		<p><p>&nbsp;</td>
		</center>
</body>

</html>