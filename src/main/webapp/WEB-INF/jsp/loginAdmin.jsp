<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<meta http-equiv="Content-Language" content="en-us">
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
<style>
.myButton {
        
        background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #79bbff), color-stop(1, #378de5));
        background:-moz-linear-gradient(top, #79bbff 5%, #378de5 100%);
        background:-webkit-linear-gradient(top, #79bbff 5%, #378de5 100%);
        background:-o-linear-gradient(top, #79bbff 5%, #378de5 100%);
        background:-ms-linear-gradient(top, #79bbff 5%, #378de5 100%);
        background:linear-gradient(to bottom, #79bbff 5%, #378de5 100%);
        filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#79bbff', endColorstr='#378de5',GradientType=0);
        
        background-color:#79bbff;
        
        -moz-border-radius:5px;
        -webkit-border-radius:5px;
        border-radius:5px;
        
        border:1px solid #337bc4;
        
        display:inline-block;
        color:#ffffff;
        font-family:arial;
        font-size:10px;
        font-weight:bold;
        padding:3px 8px;
        text-decoration:none;
        
        text-shadow:0px 1px 0px #528ecc;
        
    }
    .myButton:hover {
        
        background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #378de5), color-stop(1, #79bbff));
        background:-moz-linear-gradient(top, #378de5 5%, #79bbff 100%);
        background:-webkit-linear-gradient(top, #378de5 5%, #79bbff 100%);
        background:-o-linear-gradient(top, #378de5 5%, #79bbff 100%);
        background:-ms-linear-gradient(top, #378de5 5%, #79bbff 100%);
        background:linear-gradient(to bottom, #378de5 5%, #79bbff 100%);
        filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#378de5', endColorstr='#79bbff',GradientType=0);
        
        background-color:#378de5;
    }
    .myButton:active {
        position:relative;
        top:1px;
    }

</style>
</head>

<body onLoad="fnc()" topmargin="0" leftmargin="0" bgcolor="#FFFFFF" >

<table border="0" width="100%" id="table1">
	
	<tr>
		
		<td width="95%" bgcolor="#FFFFFF" valign="top">
		&nbsp;
		
		<div align="center">
		<table border="1" width="48%" id="table4" cellspacing="0" cellpadding="0" bordercolor="#FF9966">
			<tr>
				<td>
				<form name="login" id="login" action="send.html" modelAttribute="loginPage" method="post">
				<table border="0" width="100%" id="table5">
					<tr bgcolor="#0066FF">
						<td height="28" colspan="2">
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
						<input type="submit" class="myButton"value="Login"  onclick="return validate()">&nbsp;
						<input type="reset" class="myButton"value="Clear" ></td>
					</tr>
				</table></form>
				</td>
			</tr>
			</table>
		</div>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p></td>
	</tr>
	
</table>

</body>

</html>