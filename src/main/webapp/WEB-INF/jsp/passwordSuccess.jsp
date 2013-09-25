<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Language" content="en-us">
<title>Welcome to ONA - Change Password</title>
<script language="javascript">
function validate()
{
var password=document.login1.password.value;
var password1=document.login1.password1.value;
if(password=="")
{
alert("Please enter new password.")

document.login1.password.focus();
}

else if(password1=="")
{
alert("Please enter confirm new password.")

document.login1.password1.focus();
}
else if(password != password1)
{
alert("New password and confirm new password value does'nt match.")

document.login1.password.focus();
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
</head>

<body topmargin="0" leftmargin="0" bgcolor="#FFFFFF" ><center>
<center><h5>${password}</h5></center>

<form name="login1" action="sendPassword.html" method="post" target="frm">
		   
   
		<table border="1" id="table6" cellspacing="0" cellpadding="0" bordercolor="#E5EEF9">
			<tr>
				<td>
				
				<table border="0" id="table7">
					<tr>
						<td colspan="2" bgcolor="#1C837C">
						<p style="margin-left: 10px"><b>
						<font face="Verdana" size="2" color="#FFFFFF">Change 
						Password</font></b></td>
					</tr>
					<tr>
						<td width="36%" height="30">
						<p style="margin-left: 20px"><b>
						<font face="Verdana" size="1">Enter New Password:</font></b></td>
						<td width="62%" height="30">
						<input type="password" name="password" size="20"></td>
					</tr>
					<tr>
						<td width="36%" height="30">
						<p style="margin-left: 20px"><b>
						<font face="Verdana" size="1">Confirm New Password:</font></b></td>
						<td width="62%" height="30">
						<input type="password" name="password1" size="20"></td>
					</tr>
					<tr>
						<td width="36%">&nbsp;</td>
						<td width="62%" height="40">
						<input type="submit" value="Change Now"  onclick="return validate()"></input>&nbsp;
						<input type="reset" value="Clear" ></input></td>
					</tr>
					</table>
				</td>
			</tr>
			</table></form></center>

</body>

</html>