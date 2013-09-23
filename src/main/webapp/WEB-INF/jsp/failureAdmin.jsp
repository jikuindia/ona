<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Welcome to ONA</title>
<script language="javascript">
function validate()
{
var userName=remove(document.login.userName.value);
var password=remove(document.login.password.value);

if(userName=="")
{
alert("Please enter your user name.")

document.login.userName.focus();
}
else if(password=="")
{
alert("Please enter your password.")

document.login.password.focus();
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

<script>
var qsParm = new Array();
function qs() {
var query = window.location.search.substring(1);
var parms = query.split('&');
for (var i=0; i<parms.length; i++) {
   var pos = parms[i].indexOf('=');
   if (pos > 0) {
      var key = parms[i].substring(0,pos);
      var val = parms[i].substring(pos+1);
      qsParm[key] = val;
      }
   }
}

qsParm['auth'] = null;
qs();
</script>

<script>
function fnc()
{
if (qsParm['auth']=="invalid" )
{
alert("Invalid user name or password");
document.login.userName.focus();

 }
 
 else if (qsParm['session']=="invalid" )
{
alert("Sorry, you are not logged in. Please login first to avail the service.");
document.login.userName.focus();

}

 else if (qsParm['logout']=="true" )
{
alert("You are logged out successfully.");
document.login.userName.focus();

}
 }
</script>
</head>

<body onLoad="fnc()" topmargin="0" leftmargin="0" bgcolor="#FFFFFF" >
<center><h5>Invalid password or user name</h5></center>

<table border="0" width="100%" id="table1">
	
	<tr>
		<td width="182" bgcolor="#EFF3FF" valign="top">
		<table border="0" width="182" cellspacing="0" cellpadding="0" id="table2">
			<tr>
				<td width="182">
				<br>
				<br>
				</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
		</table>
		</td>
		<td width="95%" bgcolor="#FFFFFF" valign="top">
		&nbsp;<p>&nbsp;</p>
		<p>
		<br>
		</p>
		<div align="center">
		<table border="1" width="48%" id="table4" cellspacing="0" cellpadding="0" bordercolor="#E5EEF9">
			<tr>
				<td>
				<form name="login" id="login" action="send.html" modelAttribute="loginPage" method="post">
				<table border="0" width="100%" id="table5">
					<tr>
						<td colspan="2" bgcolor="#1C837C">
						<p style="margin-left: 10px"><b>
						<font face="Verdana" size="2" color="#FFFFFF">
						Administrator Login...</font></b></td>
					</tr>
					<tr>
						<td width="32%" height="30">
						<p style="margin-left: 20px"><b>
						<font face="Verdana" size="1">User name:</font></b></td>
						<td width="65%" height="30">
						<input type="text" name="userName" size="20" maxlength="15"></td>
					</tr>
					<tr>
						<td width="32%" height="30">
						<p style="margin-left: 20px"><b>
						<font face="Verdana" size="1">Password:</font></b></td>
						<td width="65%" height="30">
						<input type="password" name="password" size="20" maxlength="15"></td>
					</tr>
					<tr>
						<td width="32%">&nbsp;</td>
						<td width="65%" height="40">
						<input type="submit" value="Login"  onclick="return validate()">&nbsp;
						<input type="reset" value="Clear" ></td>
					</tr>
				</table></form>
				</td>
			</tr>
			</table>
		</div>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</td>
	</tr>
	
</table>

</body>

</html>