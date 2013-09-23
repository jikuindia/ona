<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Currency / Oil Manage</title>
<script>
function calcHeight(iframe)
{
var the_height=document.getElementById(iframe).contentWindow.document.body.scrollHeight;//find the height of the internal page
var the_width=document.getElementById(iframe).contentWindow.document.body.scrollWidth;//find the width of the internal page
document.getElementById(iframe).style.height=the_height;//change the height of the iframe
document.getElementById(iframe).style.width=the_width;//change the width of the iframe
}   

</script>
</head>

<body topmargin="0">
<form action="currentUpdate.html" method="get" target="frm1">
<table border="0" width="100%" id="table1">
	<tr>
		<td colspan="2" bgcolor="#008080" height="34"><b><font size="2" face="Verdana">&nbsp;<font color="#FFFFFF">Manage 
		currency/ oil price/ weather</font></font></b></td>
	</tr>
	<tr>
		<td width="14%">&nbsp;<b><font size="1" face="Verdana">Select a category</font></b></td>
		<td width="85%"><select size="1" name="categ">
		<option selected value="0">Choose...</option>
		<option value="CUR-E">Currency - English</option>
		<option value="CUR-A">Currency - Arabic</option>
		<option value="OIL-E">Oil Price -  English</option>
		<option value="OIL-A">Oil Price - Arabic</option>
		<option value="WHT-A">Weather Info - Arabic</option>
		<option value="WHT-E">Weather Info - English</option>
		</select>&nbsp;<input type="submit" value="Go" name="B1"></td>
	</tr>
	<!-- <tr>
		<td width="98%" colspan="2">		<iframe name="frm1" onLoad="calcHeight('frm1');" id="frm1" height="100%" width="100%" src="blank.jsp"  marginwidth="4" marginheight="0" scrolling="no" border="0" frameborder="0">
					Your browser does not support inline frames or is currently configured not to display inline frames.
					</iframe></td>
	</tr> -->
</table>
</form>
</body>

</html>