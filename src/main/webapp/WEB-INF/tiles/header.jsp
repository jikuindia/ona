<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" type="text/css" href="css/styles.css" media="screen,projection"/>
<link rel="stylesheet" href="jquery/themes/base/jquery.ui.all.css" />

<!-- ---subscriber -->
 <link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" type="text/css" media="all" href="css/style.css"></link>
<link href="css/weather.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/util.js'></script>
<script type='text/javascript' src='dwr/interface/dwrService.js'></script>


<script src="jquery/ui/jquery.ui.core.js"></script>
	<script src="jquery/ui/jquery.ui.widget.js"></script>
	<script src="jquery/ui/jquery.ui.mouse.js"></script>
	<script src="jquery/ui/jquery.ui.button.js"></script>
	<script src="jquery/ui/jquery.ui.draggable.js"></script>
	<script src="jquery/ui/jquery.ui.position.js"></script>
	<script src="jquery/ui/jquery.ui.resizable.js"></script>
	<script src="jquery/ui/jquery.ui.dialog.js"></script>
	<script src="jquery/ui/jquery.ui.effect.js"></script>
 <script class="code" type="text/javascript">
 var jQuery_1_9_1 = $.noConflict(true);
 
 function openSubscribeModal()
 {
	 jQuery_1_9_1( "#subscribemodal" ).dialog({
 	   		autoOpen: true,
 	   		height: 300,
 	   		width: 985,
 	   		modal: true,
 			
 			close: function() {
 				jQuery_1_9_1( "#subscribemodal" ).dialog( "destroy" );
 			}
 	   	});
 }
 	   
	
  var validemail =/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,4}$/;
 function subscribeMail(subName,phone,email,address,subtype) {
	
	 if(subName==""){
		 document.getElementById('emessage').innerHTML="";
		 document.getElementById('nmessage').innerHTML="Please Enter Name!";
		 document.getElementById('phmessage').innerHTML="";
		 document.getElementById('addmessage').innerHTML="";
		 document.getElementById('subtypemessage').innerHTML="";
		 document.getElementById('message1').innerHTML="";
	 }else if(phone==""){
		 document.getElementById('emessage').innerHTML="";
		 document.getElementById('nmessage').innerHTML="";
		 document.getElementById('phmessage').innerHTML="Please Enter Phone No!";
		 document.getElementById('addmessage').innerHTML="";
		 document.getElementById('subtypemessage').innerHTML="";
		 document.getElementById('message1').innerHTML="";
	 }else if(isNaN(phone)){
	 	 document.getElementById('emessage').innerHTML="";
		 document.getElementById('nmessage').innerHTML="";
		 document.getElementById('phmessage').innerHTML="Enter Valid Number!";
		 document.getElementById('addmessage').innerHTML="";
		 document.getElementById('subtypemessage').innerHTML="";
		 document.getElementById('message1').innerHTML="";
		 
		 }else if(email==""){
		 document.getElementById('emessage').innerHTML="Please Enter EmailId!";
		 document.getElementById('nmessage').innerHTML="";
		 document.getElementById('phmessage').innerHTML="";
		 document.getElementById('addmessage').innerHTML="";
		 document.getElementById('subtypemessage').innerHTML="";
		 document.getElementById('message1').innerHTML="";
		 }else if(!(validemail.test(email))){
			 document.getElementById('emessage').innerHTML=" Enter Valid EmailId!";
			 document.getElementById('nmessage').innerHTML="";
			 document.getElementById('phmessage').innerHTML="";
			 document.getElementById('addmessage').innerHTML=""; 
			 document.getElementById('subtypemessage').innerHTML="";
			 document.getElementById('message1').innerHTML="";
	 }else if(address==""){
		 document.getElementById('emessage').innerHTML="";
		 document.getElementById('nmessage').innerHTML="";
		 document.getElementById('phmessage').innerHTML="";
		 document.getElementById('addmessage').innerHTML="Please Enter Address!";
		 document.getElementById('subtypemessage').innerHTML="";
		 document.getElementById('message1').innerHTML="";
	 }else if(subtype=="0"){
		 document.getElementById('emessage').innerHTML="";
		 document.getElementById('nmessage').innerHTML="";
		 document.getElementById('phmessage').innerHTML="";
		 document.getElementById('addmessage').innerHTML="";
		 document.getElementById('subtypemessage').innerHTML="Select Monthly or Weekly!";
		 document.getElementById('message1').innerHTML="";
		 
		 }else{
	 
	 dwrService.getSubscribe(subName,phone,email,address,subtype,function(message){
		 document.getElementById('emessage').innerHTML="";
		 document.getElementById('nmessage').innerHTML="";
		 document.getElementById('phmessage').innerHTML="";
		 document.getElementById('addmessage').innerHTML="";
		 document.getElementById('subtypemessage').innerHTML="";	 
	 document.getElementById('message1').innerHTML=message;

	 });

	 /* alert("dD"); */

	 }}
 </script>
 
 <style type="text/css">
.substyle {
	height: 30px;
	background-color: #E0E0E0 ;
	vertical-align: middle;
	font-family: verdana;
	color: #000000;
	font-size: 15px;
	font-weight: bold;
	text-decoration: none;
}
</style>
 
<!-- --end -->

<div class="header">
<div class="logo float_left"></div>
<div class="Search float_right">
<input name="" type="text" class="searchInput" value='search here...' onFocus="if(this.value=='search here...'){this.value='';}" onBlur="if(this.value==''){this.value='search here...';}" />
<input type="submit" id="search_input_submit" value="" />
<table><tr>
<td>
<a href="#subscribemodal" class="flatbtn" id="subscribemodaltrigger" onclick="openSubscribeModal()">Subscribe News</a>
<div id="subscribemodal" style="display:none;">

<form id="subform" name="subform" method="post" action="#">

<table class="fontformodalcontrol" width="100%" align="center" border="0">


<tr><td></td ><td></td></tr>
<tr>
 <td>&nbsp;</td>
<td align="right" valign="bottom">
<label for="name"><b><spring:message code="label.name"/></b></label></td>
<td>&nbsp;</td>
<td>
<input type="text" name="subName" id="subName" size="40"/>&nbsp;</td>
<td align="right"><div id=nmessage class="text"></div></td>
</tr>
<tr>
<td>&nbsp;</td>
<td align="right" valign="bottom">
<label for="phone"><b><spring:message code="label.phone"/></b></label></td>
<td>&nbsp;</td>
<td>
<input type="text" name="phone" id="phone" size="40"/>&nbsp;</td>
 <td align="right"><div id=phmessage class="text"></div></td> 
</tr>

<tr>
 <td>&nbsp;</td>
<td align="right" valign="bottom">
<label for="email"><b><spring:message code="label.email"/></b></label></td>
<td>&nbsp;</td>
<td>
<input type="text" name="email" id="email" size="40"/>&nbsp;</td>
<td align="right"><div id=emessage class="text"></div></td>
</tr>

<tr>
<td>&nbsp;</td>
<td align="right" valign="bottom">
<label for="address"><b><spring:message code="label.address"/></b></label></td>
<td>&nbsp;</td>
<td>
<input type="text" name="address" id="address" size="40"/>&nbsp;</td>
<td align="right"><div id=addmessage class="text"></div></td>
</tr>
<tr><td>&nbsp;</td>
		<td align="right" valign="bottom"><label for="subtype"><b><spring:message code="label.subtype"/></b></label></td>
		<td>&nbsp;</td>
		<td><select size="1" name="subtype">
		<option selected value="0">Choose...</option>
		<option value="M">Monthly</option>
		<option value="W">Weekly</option>
		</select>&nbsp;</td>
		<td align="right"><div id=subtypemessage class="text"></div></td> 
    </tr>

<tr>

<td colspan="4" align="center">
<input type="button" name="loginbtn" id="loginbtn" class="flatbtn-blu " value="<spring:message code="label.submit"/>" onclick="subscribeMail(subName.value,phone.value,email.value,address.value,subtype.value)" tabindex="3" />
<input type="reset" name="loginbtn2" id="loginbtn2" class="flatbtn-blu hidemodal" value="<spring:message code="label.cancel"/>" tabindex="3" />
</td>

</tr>
<tr><td>&nbsp;</td>
<td></td><td></td><td valign="top" align="center"><b><div id=message1 class="text"></div></b><td></td></td></tr>
<tr><td>&nbsp;</td>
<td></td><td></td><td valign="top" align="center"><b><div id=message4 class="text"></div></b><td></td></td></tr>
</table>
</form>
</div>
</td>
</tr>
<!--<tr> <td valign="top"><div id=message1 class="text"></div></td></tr> -->
</table>
 
</div>
<!--Header End-->
<div class="clear_fix"></div>
</div>
