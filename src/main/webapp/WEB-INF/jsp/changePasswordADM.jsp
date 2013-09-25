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
<center><h3>${password}</h3></center>
<body topmargin="0" leftmargin="0" bgcolor="#FFFFFF" ><center>

<form name="login1" action="sendPassword.html" method="post" target="frm">
		   
   
		<table border="1" id="table6" width="50%" cellspacing="0" cellpadding="0" bordercolor="#FF9966">
			<tr>
				<td>
				
				<table width="100%"border="0" id="table7">
					<tr bgcolor="#0066FF">
						<td colspan="2">
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
						<input type="submit" value="Change Now" class="myButton" onclick="return validate()"></input>&nbsp;
						<input type="reset" class="myButton" value="Clear" ></input></td>
					</tr>
				  </table>
				</td>
			</tr>
			</table></form></center>

</body>

</html>