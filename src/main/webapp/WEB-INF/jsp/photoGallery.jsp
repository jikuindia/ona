<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/themes/base/jquery.ui.all.css" />
<link href="pirobox_extended/css_pirobox/style_2/style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" type="text/css" media="all" href="css/style.css"></link>

<script type="text/javascript" src="pirobox_extended/js/jquery.min.js"></script>
<script type="text/javascript">
var jQuery = $.noConflict(true);
</script>
<script type="text/javascript" src="pirobox_extended/js/jquery-ui-1.8.2.custom.min.js"></script>
<script type="text/javascript" src="pirobox_extended/js/pirobox_extended.js"></script>

<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script src="jquery/ui/jquery.ui.datepicker.js"></script>
<script src="jquery/ui/jquery.ui.core.js"></script>
<script src="jquery/ui/jquery.ui.widget.js"></script>
<script type="text/javascript">
var jQuery_1_9_1 = $.noConflict(true);
</script>


 
<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/util.js'></script>
<script type='text/javascript' src='dwr/interface/dwrService.js'></script>


<script type="text/javascript">

jQuery(document).ready(function() {
	
});
	function getPhotos() {
		
		var date1 = document.getElementById("fromdate").value;
		var date2 = document.getElementById("todate").value;
		     if(date1==""){
				  document.getElementById('message2').innerHTML="Please Enter From Date !!"; 
				  
		     }
		     
		    else if(date2==""){
		    	document.getElementById('message3').innerHTML="Please Enter To Date !!";
		    
		    }else{
		    	document.getElementById('message2').innerHTML="";
		    	document.getElementById('message3').innerHTML="";
		dwrService
				.getPhoto(
						date1,
						date2,
						function(data) {
							dwr.util.removeAllRows("photobody", {
								filter : function(tr) {
									return (tr.id != "photopattern");
								}
							});
							var j = 1;
							var id = 0;
							
                            if(data.length==0){
                            	parent.setDefaultIframe();
                            	document.getElementById('noImageDiv').style.display="";
                            }
                            else
                            	{
                            	parent.setIframeSize();
                            	document.getElementById('noImageDiv').style.display="none";
							for ( var i = 0; i < data.length; i++) {
								if (j > 1 && j < 9) {

									jQuery("#photopattern" + id)
											.append(
													"<td> <a href='pict/"
															+ data[i]
															+ "' rel='gallery'  class='pirobox_gall'><img src='pict/"+data[i]+"' width=100 height=100/></a></td");
									j = j + 1;
								} else {
									j = 1;
									id = id + 1;
									dwr.util.cloneNode("photopattern", {
										idSuffix : id
									});
									jQuery("#photopattern" + id)
											.append(
													"<td> <a href='pict/"
															+ data[i]
															+ "' rel='gallery'  class='pirobox_gall' ><img src='pict/"+data[i]+"' width=100 height=100/></a></td");
									j = j + 1;

								}
								//alert(document.getElementById("photopattern" + id).innerHTML);
								dwr.util.byId("photopattern" + id).style.display = ""; // officially we should use table-row, but IE prefers "" for some reason

							}
                            	}
							jQuery().piroBox_ext({
								piro_speed : 700,
									bg_alpha : 0.5,
									piro_scroll : true // pirobox always positioned at the center of the page
								});
						});
	}
	}
	
	jQuery_1_9_1(function() {
		jQuery_1_9_1( "#todate" ).datepicker({
			showOn: "button",
			buttonImage: "images/calendar.gif",
			buttonImageOnly: true,
			 dateFormat: "dd/mm/yy",
			 onClose: function( selectedDate ) {
				 jQuery_1_9_1( "#fromdate" ).datepicker( "option", "maxDate", selectedDate );
				}
		});
		jQuery_1_9_1( "#fromdate" ).datepicker({
			showOn: "button",
			buttonImage: "images/calendar.gif",
			buttonImageOnly: true,
			 dateFormat: "dd/mm/yy",
				onClose: function( selectedDate ) {
					jQuery_1_9_1( "#todate" ).datepicker( "option", "minDate", selectedDate );
				}
		});
	});
		
</script>
</head>
<body class="fontformodalcontrol">
	
	<br>
	<form id="loginform" name="loginform" method="post" action="#">

		<table width="100%"  align="center" border="0" >
		  <tr valign="middle"><td>&nbsp;</td>
       <td><div id=message2 class="text" align="left"></div></td><td></td><td><div id=message3 class="text" align="left"></div></td></tr>
			<tr valign="middle">			
				<td width="20%" align="right"><label for="fromdate"><spring:message
							code="label.fdate" />:&nbsp;</label></td><td width="20%"> <input type="text" name="fromdate"
					id="fromdate"  /></td>
				<td align="right" width="20%"><label for="todate"><spring:message
							code="label.tdate" />:&nbsp;</label> </td><td width="40%"><input type="text" name="todate"
					id="todate"  /></td>
			</tr>
			<tr><td colspan="4" align="center"><div class="center"><br>
			<input type="button" name="loginbtn" id="loginbtn"
				class="flatbtn-blu" value="<spring:message code="label.go"/>"
				onclick="getPhotos()" tabindex="3" />
		</div></td></tr>
		</table>
		
	</form>
	<br>
	<div class="demo">
	<div style="display:none;width:850px" id="noImageDiv" align="center" >Sorry,No photo found</div>
	<table border="0" class="rowed grey" align="center" width="100%">

		<tbody id="photobody">
			<tr id="photopattern" style="display: none;">

			</tr>
		</tbody>
	</table>
</div>



</body>
</html>