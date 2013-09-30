<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
 <link rel="stylesheet" href="css/themes/base/jquery.ui.all.css" />

 <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script src="jquery/ui/jquery.ui.datepicker.js"></script>
 <script src="jquery/ui/jquery.ui.core.js"></script> 


<script type="text/javascript">
var jQuery_1_9_1 = $.noConflict(true);
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

jQuery_1_9_1(function() {
	jQuery_1_9_1( "#date" ).datepicker({
		showOn: "button",
		buttonImage: "images/calendar.gif",
		buttonImageOnly: true,
		 dateFormat: "dd/mm/yy",
		 onClose: function( selectedDate ) {
			 jQuery_1_9_1( "#date" ).datepicker( "option", "maxDate", selectedDate );
			}
	});
});
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
<center><h3>${addifhaar}${iftaar}</h3></center>

<body topmargin="0" leftmargin="0" bgcolor="#FFFFFF" ><center>

		<form name="ifthar" action="ifthaarsave.html" modelAttribute="iftharCommand" onsubmit="return validate()" method="post" target="frm">
		   
   <table border="1" id="table6" cellspacing="0" cellpadding="0" bordercolor="#E5EEF9">
 <table border="1" width="100%" id="table6" cellspacing="0" cellpadding="0" bordercolor="#E5EEF9"> 
			<tr>
				<td>
				<table border="0" width="100%" id="table7" cellspacing="3" cellpadding="3"> 
				<table border="0" width="100%"id="table7" cellspacing="3" cellpadding="3">
					<tr>
						<td colspan="2" bgcolor="#0066FF">
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
							
<input id="date" name="date" type="text">
						<!-- <input type="submit" value="Add Now"  name="B1" >
						<input type="reset" value="Clear" name="B2"> --></td>
					</tr>
					<tr>
					<td></td>
					<td><input type="submit" class="myButton" value="Add Now"  name="B1" >
						<input type="reset" class="myButton" value="Clear" name="B2"></td>
					
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