<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" type="text/css" href="css/styles.css" media="screen,projection"/>
<script type="text/javascript" src="js/jquery-1.4.3.min.js"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>  
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<link href="themes/4/slider.css" rel="stylesheet" type="text/css" />
<!-- ---subscriber -->
<script type="text/javascript" charset="utf-8" src="js/jquery.leanModal.min.js"></script>
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/util.js'></script>
<script type='text/javascript' src='dwr/interface/dwrService.js'></script>

 <script class="code" type="text/javascript">
 $(function(){
	   
	   $('#subscribemodaltrigger').leanModal({ top: 110, overlay: 0.45, closeButton: ".hidemodal" });
	 });
 
 function subscribeMail(sub) {

	 if(sub==""){
	 alert("Please Enter Email Id.." );
	 }else{

	 dwrService.getSubscribe(sub,function(){
	 document.getElementById('message1').innerHTML=" you have subscribed news sucessfully";

	 });

	 /* alert("dD"); */

	 }}
 </script>
 
<!-- --end -->

<div class="header">
<div class="logo float_left"></div>
<div class="Search float_right">
<input name="" type="text" class="searchInput" value='search here...' onFocus="if(this.value=='search here...'){this.value='';}" onBlur="if(this.value==''){this.value='search here...';}" />
<input type="submit" id="search_input_submit" value="" />
<table><tr>
<td>
<a href="#subscribemodal" class="flatbtn" id="subscribemodaltrigger">Subscribe News</a>
<div id="subscribemodal" style="display:none;">

<form id="subform" name="subform" method="post" action="#">

<table class="fontformodalcontrol" width="100%" align="center" border="0">
<tr>
<td align="left" valign="bottom">
<label for="email"><spring:message code="label.email"/></label></td><td>
<input type="text" name="email" id="email" size="40"/>&nbsp;</td>
</tr>
<tr>
<td colspan="2" align="center">
<input type="button" name="loginbtn" id="loginbtn" class="flatbtn-blu hidemodal" value="<spring:message code="label.submit"/>" onclick="subscribeMail(email.value)" tabindex="3" />
</td>
</tr>
</table>
</form>
</div>
</td>
</tr><tr>
<td valign="top"><div id=message1 class="text"></div></td></tr></table>
 
</div>
<!--Header End-->
<div class="clear_fix"></div>
</div>
