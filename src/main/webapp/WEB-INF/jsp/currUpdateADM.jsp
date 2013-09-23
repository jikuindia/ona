 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=cp1256">
<title>Manage currency /oil price</title>

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

<script type="text/javascript" src="js/date-picker.js"></script>


<script language="javascript">
function validate()
{


var a =document.pressed;
document.getElementById("myform").action = a;
return true;

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
<body>

<form action="#" modelAttribute="currUpdateCommand" id="myform" onsubmit="return validate();" >

<table border="0" width="100%" id="table1">
	<tr bgcolor="#0066FF">
		<td colspan="2" height="34"><b><font size="2" face="Verdana">&nbsp;<font color="#FFFFFF">Manage 
		currency/ oil price/ weather</font></font></b></td>
	</tr>
	<tr>
		<td width="14%">&nbsp;<b><font size="1" face="Verdana">Select a category</font></b></td>
		<td width="85%"><select size="1" name="categ">
		<option selected value="0">Choose...</option>
		<option value="CUR-E" <c:if test="${currcommand.categ =='CUR-E'}">selected</c:if> >Currency - English</option>
		<option value="CUR-A" <c:if test="${currcommand.categ =='CUR-A'}">selected</c:if> >Currency - Arabic</option>
		<option value="OIL-E" <c:if test="${currcommand.categ =='OIL-E'}">selected</c:if> >Oil Price -  English</option>
		<option value="OIL-A" <c:if test="${currcommand.categ =='OIL-A'}">selected</c:if> >Oil Price - Arabic</option>
		<option value="WHT-A" <c:if test="${currcommand.categ =='WHT-A'}">selected</c:if> >Weather Info - Arabic</option>
		<option value="WHT-E" <c:if test="${currcommand.categ =='WHT-E'}">selected</c:if> >Weather Info - English</option>
		</select>&nbsp;<!-- <input type="submit" value="Edit" onClick="r(document.pressed=this.value)" name="B1"> -->
		 <input type="submit" name="sbmitbtn" class="myButton" value="Edit" id="edit.html" onclick="document.pressed=this.id"/>
		</td>
	</tr>
  </table>

<br>
<table border="0" width="100%" id="table1" cellspacing="3" cellpadding="2">

	</tr>

	
	<tr>
		<td width="90%"><b><font face="Verdana" color="#008080">&nbsp;<font size="2">Home page Description</font><br>
&nbsp;</font></b>&nbsp;<textarea  name="homedesc" rows="15" cols="80" style="width: 100%" >${currcommand.homedesc}

			</textarea></td>
	</tr>
	<tr>
		<td width="90%"><b><font face="Verdana" color="#008080" size="2">Main Description<br>
		</font></b><br>
	<textarea  name="maindesc" rows="15" cols="80" style="width: 100%">${currcommand.maindesc}
	</textarea></td>
	</tr>
	<tr>
		<td width="90%"><!-- <input type="submit" onClick="return validate(document.pressed=this.value)" name="save" value="Update" /> -->
		<input type="submit" name="sbmitbtn" class="myButton"value="Update" id="update.html" onclick="document.pressed=this.id"/>
			<!-- <input type="reset" name="reset" value="Reset" /> --></td>
	</tr>
</table>
</form>

</body>
</html>







