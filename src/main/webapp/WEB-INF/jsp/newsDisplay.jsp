
<%@page contentType="text/html;charset=cp1256"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=cp1256">
<title>Welcome to ONA - News</title>
<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/util.js'></script>
<script type='text/javascript' src='dwr/interface/dwrService.js'></script>
<script language="javascript" type="text/javascript"
	src="Editor/jscripts/tiny_mce/tiny_mce.js"></script>
<script language="javascript" type="text/javascript"
	src="js/datetimepicker.js"></script>

<script language="javascript" type="text/javascript">
	function sendLanguage(value) {
		    if(value=='')
	    	  value=document.getElementById("lang").value;
		dwrService.showTitle(value, function(newsTitleList) {
			document.getElementById("title").innerHTML = "";
			var select = document.getElementById("title");
			var option, titleDisplay;

			for ( var i = 0; i < newsTitleList.length; i++) {

				titleDisplay = newsTitleList[i].srno;

				option = document.createElement("option");
				if (newsTitleList[i].srno == '${newsDisplay.srno}') {
				alert(newsTitleList[i].srno);
					option.selected = true;
				}
				option.setAttribute("value", titleDisplay);
				option.appendChild(document
						.createTextNode(newsTitleList[i].title));
				select.appendChild(option);
			}
		});

	}
	function sendNewsId(id, lang) {
	
		document.newsForm.action = "/ona/newsRetrive.html";

	}

	function validateArchive(id, lang) {

		document.newsForm.action = "/ona/newsArchive.html";
	
	}

	function validateUpdate(newsCat,lang,date,title,newsHomePage,status,newsDesHom,newsDesMan) {
	
		document.newsForm.action = "/ona/newsUpdate.html";
	
	}

	function remove(space) {
		var plus = 0;
		for ( var i = 0; i < space.length; i++) {
			if (space.charAt(i) != ' ') {
				plus = plus + 1;
			}
		}
		return (plus);
	}

	tinyMCE
			.init({
				mode : "textareas",
				theme : "advanced",
				plugins : "style,layer,table,save,advhr,advimage,advlink,emotions,iespell,insertdatetime,preview,flash,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable",
				theme_advanced_buttons1_add_before : "save,newdocument,separator",
				theme_advanced_buttons1_add : "fontselect,fontsizeselect",
				theme_advanced_buttons2_add : "separator,insertdate,inserttime,preview,separator,forecolor,backcolor",
				theme_advanced_buttons2_add_before : "cut,copy,paste,pastetext,pasteword,separator,search,replace,separator",
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
	.btnEdit {
        
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

<style>
td {
	font-family: Tahoma;
	font-size: 11px;
	color: #000000;
}

.txt {
	padding-left: 15px;
	padding-right: 15px;
	padding-top: 5px;
}

.date {
	font-weight: bold;
	font-size: 10px;
	color: #A7A7A7;
}

.cap {
	font-weight: bold;
	color: #2E688E;
	padding-left: 5px;
	padding-top: 4px;
	padding-bottom: 3px;
}
</style>
<style type="text/css">
div.calendar_widget {
	position: absolute;
	top: 0px;
	left: 0px;
	width: 140px;
	height: 200px;
	display: none;
}
</style>
<style type="text/css">
div.downloadlist {
	float: right;
	border: 1px;
	background-color: e0e0ff;
	padding: 4px;
	border-style: outset;
}

div.downloadlist ul {
	list-style: none;
	margin: 4px;
}
</style>
</head>

<body topmargin="0" leftmargin="0" bgcolor="#FFFFFF"
	onload="sendLanguage('${newsDisplay.newsLang}')">

	<table border="0" width="100%" id="table1">

		<tr>
			<!-- <td width="182" bgcolor="#EFF3FF" valign="top">
				<table width="182" border="0" width="100%" cellspacing="0"
					cellpadding="0" id="table2">


				</table>
			</td> -->
			<td width="100%" bgcolor="#FFFFFF" valign="top" align="center">


				<div align="center">
					<form name="newsForm" action="#" method="post"
						modelAttribute="newsAddCommand">

						<br>

						 <table border="0" width="100%" id="table6" cellspacing="0"
							cellpadding="0" bordercolor="#E5EEF9">
							<tr>
								<td>

									<table border="0" width="100%" id="table7" cellspacing="3"
										cellpadding="3">
										<tr>
											<td colspan="3" bgcolor="#0066FF">
												<p style="margin-left: 10px">
													<b> <font face="Verdana" size="2" color="#FFFFFF">Update
															News</font></b>
											</td>
										</tr>

										<tr>
											<td width="14%"><b><font face="Verdana" size="1">Select
														a Language</font></b></td>
											</td>
											<td width="20%"><select name="lang" id="lang"
												onChange="sendLanguage(this.value)">
													<option value="E"
														<c:if test="${newsDisplay.newsLang =='E'}">selected</c:if>>English</option>
													<option value="A"
														<c:if test="${newsDisplay.newsLang =='A'}">selected</c:if>>Arabic</option>
											</select></td>
										</tr>
										<tr></tr>

										<tr>
											<td width="14%"><b><font face="Verdana" size="1">Select
														a News</font></b></td>
											<td width="30%" bordercolor="black" border="2"><select
												id="title" width="20%" name="tnews">
											</select></td>
											<!-- <td width="74%"><input type="submit" value="Edit"
												name="B3"
												onclick="sendNewsId(tnews.value,lang.value)">
												<!-- <input type="submit" value="Add" name="B3" onclick="return validate('add')"> -->
												<!-- <div class="addNews">
													<a href="/ona/addNewsDisplay.html">Add</a>
												</div> -->
												<!-- </div> <input type="submit" value="Add to Archive"
												onclick="validateArchive(tnews.value,lang.value)"></td> -->
										</tr>
										<tr>
										<td></td>
										<td width="74%"><input type="submit" class="btnEdit"value="Edit"
												name="B3"
												onclick="sendNewsId(tnews.value,lang.value)">
												<!-- <input type="submit" value="Add" name="B3" onclick="return validate('add')"> -->
												<!-- <div class="addNews">
													<a href="/ona/addNewsDisplay.html">Add</a>
												</div> -->
												</div> <input type="submit" class="myButton" value="Add to Archive"
												onclick="validateArchive(tnews.value,lang.value)"></td>

										</tr>
									</table>
								 </td>
							</tr>
						</table>
						&nbsp;
				</div>
				<p>
				<p>&nbsp;
			</td>
		</tr>

	</table>


	<!-- <form  action="addNews.html"  modelAttribute="NewsAddCommand" name="news"> -->
	<table border="0" width="100%" id="table1" cellspacing="3"
		cellpadding="2">
		<tr bgcolor="#0066FF">
			<td height="22" colspan="2"><b> <font face="Verdana"
					color="#FFFFFF">ADD News</font></b></td>
	  </tr>
		
		<!-- <tr>
		<td width="8%"><font face="Verdana" size="1"><b>News Language</b></font></td>
		<td width="90%"><select size="1" name="newsLang">
		<option selected value="0">Choose...</option>
		<option value="A">Arabic</option>
		<option value="E">English</option>
		
		</select></td>
	</tr> -->
		<tr>
			<td width="8%"><font face="Verdana" size="1"><b>News
						Category</b></font></td>
			<td width="90%"><select size="1" name="newsCat">

					<%-- <option value="1">${newsDisplay.newsCat}</option> --%>
					<option value="0">Choose...</option>
					<option value="1"
						<c:if test="${newsDisplay.newsCat ==1}">selected</c:if>>Main
						News</option>
					<option value="2"
						<c:if test="${newsDisplay.newsCat ==2}">selected</c:if>>Local
						News</option>
					<option value="3"
						<c:if test="${newsDisplay.newsCat ==3}">selected</c:if>>Economy
						News</option>
					<option value="4"
						<c:if test="${newsDisplay.newsCat ==4}">selected</c:if>>Single
						news</option>
					<option value="5"
						<c:if test="${newsDisplay.newsCat ==5}">selected</c:if>>Left
						Bar News</option>

			</select>
			</td>
		</tr>
		<tr>
			<td width="8%"><font face="Verdana" size="1"><b>News
						date</b></font></td>
			<td width="90%"><input id="demo3" name="date" type="text"
				size="20" value="${newsDisplay.date}"><a
				href="javascript:NewCal('demo3','ddmmyyyy')"><img
					src="images/cal.gif" width="16" height="16" border="0"
					alt="Pick a date"></a></td>
		</tr>
		<tr>
			<td width="8%"><b><font face="Verdana" size="1">Title</font></b></td>
			<td width="90%"><input type="text" name="title" size="70"
				value="${newsDisplay.title}"></td>
		</tr>
		<tr>
			<td width="8%"><b><font face="Verdana" size="1">Home
						Page</font></b></td>
			<td width="90%"><select size="1" name="newsHomePage">
					<%-- <option  value="0">${newsDisplay.newsHomePage}</option> --%>
					<option value="0">News Display on Home Page</option>
					<option value="YES"
						<c:if test="${newsDisplay.newsHomePage =='YES'}">selected</c:if>>Yes</option>
					<option value="NO"
						<c:if test="${newsDisplay.newsHomePage =='NO'}">selected</c:if>>No</option>
			</select></td>
		</tr>
		<tr>
			<td width="8%"><b><font face="Verdana" size="1">Status</font></b></td>
			<td width="90%"><select size="1" name="status">
					<%-- <option value="1">${newsDisplay.newsHomePage}</option> --%>
					<option value="0">Choose..</option>

					<option value="1"
						<c:if test="${newsDisplay.status ==1}">selected</c:if>>Current</option>
					<option value="2"
						<c:if test="${newsDisplay.status ==2}">selected</c:if>>Archive</option>
			</select></td>
		</tr>
		<tr>
			<td width="8%">&nbsp;</td>
			<td width="90%"><b><font face="Verdana" color="#008080">News
						Description (Home Page)</font></b> <textarea name="newsDesHom" rows="15"
					cols="80" style="width: 100%">
					<value>${newsDisplay.newsDesHom}</value>
		
	</textarea></td>
		</tr>
		<tr>
			<td width="8%">&nbsp;</td>
			<td width="90%"><b><font face="Verdana" color="#008080">News
						Description</font></b> <textarea name="newsDesMan" rows="15" cols="80"
					style="width: 100%">
					<value>${newsDisplay.newsDesMan}</value>
</textarea></td>
		</tr>
		<tr>
			<td width="8%">&nbsp;</td>
			<td width="90%"><input type="submit" class="myButton" onClick="validateUpdate(newsCat.value,lang.value,date.value,title.value,newsHomePage.value,status.value,newsDesHom.value,newsDesMan.value)"
				name="save" value="Update" /> <input type="reset" name="reset" class="myButton"
				value="Reset" /></td>
		</tr>
	</table>




	</form>




</body>

</html>