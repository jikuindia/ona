
<%@page contentType="text/html;charset=windows-1252"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<HTML>
<HEAD>
<meta http-equiv="Content-Language" content="en-us">
<TITLE>Welcome to Oman News Official Website</TITLE>
<LINK REL="SHORTCUT ICON"
	HREF="http://www.omannews.gov.om/ona/favicon.ico">
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1252">
<style type="text/css">
.style1 {
	width: 100%;
	height: 200px;
	
}

.style2 {
	height: 30px;
	background-color: #0066FF;
	vertical-align: middle;
	font-family: verdana;
	color: #FFFFFF;
	font-size: 15px;
	font-weight: bold;
	text-decoration: none;
}
</style>

</HEAD>
<BODY BGCOLOR=#FFFFFF LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH=0
	MARGINHEIGHT=0>

	
	<table class="style1" border="0" cellspacing="0"  cellpadding="0">
		<tr>
			<td class="style2" valign="middle">&nbsp;<spring:message
					code="label.gLocation" /></td>

			<td align="right" class="style2"><a class="style2"
				href="/ona/map.html" target="_blank">Map &nbsp;</a></td>
		</tr>
		<tr>

			<td style="text-align: justify" colspan="2"><p dir="ltr"
					align="justify" style="margin: 0 20px; font-weight: bold;">&nbsp;</p>
				<p align="justify" style="margin: 0 20px" dir="ltr">&nbsp;</p>
				<p align="left" style="margin: 0 10px" dir="ltr">
					<span class="MsoBodyText"><font face="Verdana"
						style="font-size: 9pt"><spring:message
								code="label.description" /> </font></span>
				</p></td>

		</tr>


	</table>


</BODY>
</HTML>
