<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!-- <script language="javascript" type="text/javascript" src="js/datetimepicker.js"> -->
<link rel="stylesheet" href="css/themes/base/jquery.ui.all.css" />
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<link rel="stylesheet" type="text/css" media="all" href="css/style.css"></link>
<script type="text/javascript" src="js/jquery.ui.core.js"></script>
<script type="text/javascript" src="js/jquery.ui.datepicker.js"></script>

</script>
<meta http-equiv="Content-Type" content="text/html; charset=cp1256">
<title>ADD News</title>
<script language="javascript" type="text/javascript" src="Editor/jscripts/tiny_mce/tiny_mce.js"></script>
<script language="javascript" type="text/javascript">
	tinyMCE.init({
		mode : "textareas",
		theme : "advanced",
		plugins : "style,layer,table,save,advhr,advimage,advlink,emotions,iespell,insertdatetime,preview,flash,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable",
		theme_advanced_buttons1_add_before : "save,newdocument,separator",
		theme_advanced_buttons1_add : "fontselect,fontsizeselect",
		theme_advanced_buttons2_add : "separator,insertdate,inserttime,preview,separator,forecolor,backcolor",
		theme_advanced_buttons2_add_before: "cut,copy,paste,pastetext,pasteword,separator,search,replace,separator",
		theme_advanced_buttons3_add_before : "tablecontrols,separator",
		theme_advanced_buttons3_add : "emotions,iespell,flash,advhr,separator,print,separator,ltr,rtl,separator,fullscreen",
		theme_advanced_buttons4 : "insertlayer,moveforward,movebackward,absolute,|,styleprops",
		theme_advanced_toolbar_location : "top",
		theme_advanced_toolbar_align : "left",
		theme_advanced_path_location : "bottom",
		content_css : "Editor/jscripts/main.css",
	    plugin_insertdate_dateFormat : "%Y-%m-%d",
	    plugin_insertdate_timeFormat : "%H:%M:%S",
		extended_valid_elements : "hr[class|width|size|noshade],font[face|size|color|style],span[class|align|style]",
		external_link_list_url : "Editor/link_list.js",
		external_image_list_url : "Editor/image_list.js",
		flash_external_list_url : "Editor/flash_list.js",
		file_browser_callback : "fileBrowserCallBack",
		theme_advanced_resize_horizontal : false,
		theme_advanced_resizing : true
	});

	function fileBrowserCallBack(field_name, url, type, win) {
		// This is where you insert your custom filebrowser logic
		//alert("Filebrowser callback: field_name: " + field_name + ", url: " + url + ", type: " + type);

		// Insert new URL, this would normaly be done in a popup
		win.document.forms[0].elements[field_name].value = "blank.jsp";
	}
</script>
<!-- /TinyMCE -->


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


<script language="javascript">
function validate()
{
var newsLang=document.news.newsLang.options[document.news.newsLang.selectedIndex].value

var newsCat=document.news.newsCat.options[document.news.newsCat.selectedIndex].value

var newsHomePage=document.news.newsHomePage.options[document.news.newsHomePage.selectedIndex].value

var status=document.news.status.options[document.news.status.selectedIndex].value

var title=remove(document.news.title.value);
var date=remove(document.news.date.value);

var newsDesHom=remove(document.news.newsDesHom.value);
var descHome=document.getElementById('newsDesHom').value;

var desciption=document.getElementById('newsDesMan').value;

if(newsLang=="0")
{
alert("Please select a language.")

document.news.newsLang.focus();
}

else if(newsCat=="0")
{
alert("Please select a news category.")

document.news.newsCat.focus();
}

else if(date=="")
{
alert("Please select news date.")

document.news.date.focus();
}

else if(title=="")
{
alert("Please enter a news title.")

document.news.title.focus();
}

else if(newsHomePage=="0")
{
alert("Please select home display.")

document.news.newsHomePage.focus();
}

else if(status=="0")
{
alert("Please select a news status.")

document.news.status.focus();
}
else if(descHome=="")
{
alert("Please select news description for home page.")
return false;
}
else if(desciption=="")
{
alert("Please select news description.")
return false;
}





else
{
var cnfr=window.confirm("Are you sure you want to proceed?")
	if (cnfr)
	{
return (true);

	}
	else
	{
	return (false);
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

$(function() {
	$( "#date" ).datepicker({
		showOn: "button",
		buttonImage: "images/calendar.gif",
		buttonImageOnly: true,
		 dateFormat: "dd/mm/yy",
		 onClose: function( selectedDate ) {
				$( "#fromdate" ).datepicker( "option", "maxDate", selectedDate );
			}
	});
	$( "#fromdate" ).datepicker({
		showOn: "button",
		buttonImage: "images/calendar.gif",
		buttonImageOnly: true,
		 dateFormat: "dd/mm/yy",
			onClose: function( selectedDate ) {
				$( "#todate" ).datepicker( "option", "minDate", selectedDate );
			}
	});
});

</script>

</head>
<center><h3>${addnewssuccess}${incorrect}</h3></center>
<body>
<form  action="addNews.html"  modelAttribute="NewsAddCommand" name="news">
<table border="0" width="100%" id="table1" cellspacing="3" cellpadding="2">
	<tr bgcolor="#0066FF">
		<td height="33" colspan="2"><b>
		<font face="Verdana" color="#FFFFFF">ADD News</font></b></td>
	</tr>
	
		<tr>
		<td width="11%"><font face="Verdana" size="1"><b>News Language</b></font></td>
		<td><select size="1" name="newsLang">
		<option selected value="0">Choose...</option>
		<option value="A">Arabic</option>
		<option value="E">English</option>
		
		</select></td>
    </tr>
	<tr>
		<td width="11%"><font face="Verdana" size="1"><b>News Category</b></font></td>
		<td><select size="1" name="newsCat">
		<option selected value="0">Choose...</option>
		<option value="1">Main News</option>
		<option value="2">Local News</option>
		<option value="3">Economy News</option>
		<option value="4">Single news</option>
		<option value="5">Left Bar News</option>
		
		</select></td>
	</tr>
	<tr>
		<td width="11%"><font face="Verdana" size="1"><b>News date</b></font></td>
		<td><input id="demo3" name="date" type="text" size="20" id="date"><a href="javascript:NewCal('demo3','ddmmmyyyy',true,24)"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date"></a></td>
	</tr>
	<tr>
		<td width="11%"><b><font face="Verdana" size="1">Title</font></b></td>
		<td><input type="text" name="title" size="70"></td>
	</tr>
	<tr>
		<td width="11%"><b><font face="Verdana" size="1">Home Page</font></b></td>
		<td><select size="1" name="newsHomePage">
		<option selected value="0">News Display on Home Page</option>
		<option value="YES">Yes</option>
		<option value="NO">No</option>
		</select></td>
	</tr>
	<tr>
		<td width="11%"><b><font face="Verdana" size="1">Status</font></b></td>
		<td><select size="1" name="status">
		<option selected value="0">Choose..</option>
		<option value="1">Current</option>
		<option value="2">Archive</option>
		</select></td>
	</tr>
	<tr>
		<td width="11%">&nbsp;</td>
		<td><b><font face="Verdana" color="#008080">News Description (Home Page)</font></b>	
	<textarea  name="newsDesHom" rows="15" cols="80" style="width: 100%" id="newsDesHom">
		
	</textarea>
</td>
	</tr>
	<tr>
		<td width="11%">&nbsp;</td>
		<td><b><font face="Verdana" color="#008080">News Description</font></b>		
<textarea  name="newsDesMan" rows="15" cols="80" style="width: 100%" id="newsDesMan">
</textarea>
</td>
	</tr>
	<tr>
		<td width="11%">&nbsp;</td>
		<td><input type="submit" class="myButton" onClick="return validate()" name="save" value="Add" />
	<input type="reset" class="myButton" name="reset" value="Reset" /></td>
	</tr>
</table>

	
	
	
</form>

<!-- <div class="calendar_widget" id="calendar_widget"><iframe id='calendar_widget_iframe' name='calendar_widget_iframe' style="border: none;" width=100% height=100% src="calendar_widget.html" /></div> -->

</body>

</html>