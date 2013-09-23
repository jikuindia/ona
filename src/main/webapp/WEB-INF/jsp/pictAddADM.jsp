<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Welcome to ONA - ifthar</title>
<script language="javascript">
function validate(actn)
{
var img_url=remove(document.login1.img_url.value);

if(img_url=="")
{
alert("Please enter image url.")

document.login1.img_url.focus();
}

else
{
var action= confirm("Do you wish to "+actn+" picture?");
    if (action== true)
      {
document.login1.actn.value=actn;
return true;

}

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
<style>
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
</style>

</head>

<body topmargin="0" leftmargin="0" bgcolor="#FFFFFF" >

<table border="0" width="100%" id="table1">
	
	<tr   >
		<td width="182" bgcolor="#EFF3FF" valign="top">
		<table width="182"  border="0" width="100%" cellspacing="0" cellpadding="0" id="table2">
					
			</table>
		</td>
		<td width="95%" bgcolor="#FFFFFF" valign="top" align="center">
		<p>
		&nbsp;</p>
		<div align="center"><form name="login1" action="pictAddADMDB.jsp" method="post" target="frm">
		   
     <input name="actn" type="hidden" value="">
   
		<table border="1" width="48%" id="table6" cellspacing="0" cellpadding="0" bordercolor="#E5EEF9">
			<tr>
				<td>
				
				<table border="0" width="100%" id="table7" cellspacing="3" cellpadding="3">
					<tr>
						<td colspan="2" bgcolor="#1C837C">
						<p style="margin-left: 10px"><b>
						<font face="Verdana" size="2" color="#FFFFFF">Add 
						Picture</font></b></td>
					</tr>
					<tr>
						<td width="23%">
					<b><font face="Verdana" size="1">Image URL</font></b></td>
						<td width="72%">
						<input name="img_url" size="35" maxlength="200"><br>
						(ei... pict/xyz.jpg)</td>
					</tr>
					<tr>
						<td width="23%">&nbsp;</td>
						<td width="72%">
						<input type="submit" value="Add Now" name="B1" onclick="return validate('add')">&nbsp;&nbsp;
						<input type="submit" value="Delete" name="B2" onclick="return validate('delete')"></td>
					</tr>
					</table>
				</td>
			</tr>
			</table></form>
			<!-- <iframe name="frm" width="460" height="45" src="blank.jsp" scrolling="no" border="0" frameborder="0">
						Your browser does not support inline frames or is currently configured not to display inline frames.
						</iframe> -->
		</div>
		<p>&nbsp;<p>&nbsp;</td>
	</tr>
	</table>

</body>

</html>