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

<link rel="stylesheet" type="text/css" media="all" href="css/style.css"></link>
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="js/jquery.ui.core.js"></script>
<script type="text/javascript" src="js/jquery.ui.datepicker.js"></script>
 
<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/util.js'></script>
<script type='text/javascript' src='dwr/interface/dwrService.js'></script>
<script type="text/javascript" src="js/indexpage.js"></script>
<script type="text/javascript" src="highslide/highslide-with-html.js"></script>

<style>
.highslide {
	cursor: url(highslide/graphics/zoomin.cur), pointer;
	outline: none;
}
</style>
<script type="text/javascript">
	function getPhotos() {
		var date1 = document.getElementById("fromdate").value;
		var date2 = document.getElementById("todate").value;

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

							for ( var i = 0; i < data.length; i++) {
								if (j > 1 && j < 9) {

									$("#photopattern" + id)
											.append(
													"<td> <a href='pict/"
															+ data[i]
															+ "' class='highslide' onclick='return hs.expand(this)'><img src='pict/"+data[i]+"' width=100 height=100/></a></td");
									j = j + 1;
								} else {
									j = 1;
									id = id + 1;
									dwr.util.cloneNode("photopattern", {
										idSuffix : id
									});
									$("#photopattern" + id)
											.append(
													"<td> <a href='pict/"
															+ data[i]
															+ "' class='highslide' onclick='return hs.expand(this)'><img src='pict/"+data[i]+"' width=100 height=100/></a></td");
									j = j + 1;

								}
								//alert(document.getElementById("photopattern" + id).innerHTML);
								dwr.util.byId("photopattern" + id).style.display = ""; // officially we should use table-row, but IE prefers "" for some reason

							}

						});
	}
	
	
		$(function() {
			$( "#todate" ).datepicker({
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
<body class="fontformodalcontrol">
	
	<br>
	<form id="loginform" name="loginform" method="post" action="#">

		<table width="60%"  align="center" border="0" >
			<tr valign="middle">
				<td ><label for="fromdate"><spring:message
							code="label.fdate" /></label></td><td > <input type="text" name="fromdate"
					id="fromdate"  /></td>
				<td align="left"><label for="todate"><spring:message
							code="label.tdate" /></label> </td><td ><input type="text" name="todate"
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
	<table border="0" class="rowed grey">

		<tbody id="photobody">
			<tr id="photopattern" style="display: none;">

			</tr>
		</tbody>
	</table>


</body>
</html>