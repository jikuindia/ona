 <%@page contentType="text/html;charset=windows-1252"%>
 <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<HTML >
<HEAD>
<meta http-equiv="Content-Language" content="en-us">
<TITLE>Welcome to Oman News Official Website</TITLE>
 <LINK REL="SHORTCUT ICON" HREF="http://www.omannews.gov.om/ona/favicon.ico"> 
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">

</HEAD>
<BODY BGCOLOR=#FFFFFF LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH=0 MARGINHEIGHT=0>

<TABLE WIDTH=100% height="100%" BORDER=0 CELLPADDING=0 CELLSPACING=0 bgCOLOR="#FFFFFF">
	<TR>
		<!-- <TD width="50%" height="100%" valign="top">&nbsp;</TD> -->
		<TD width="100%" valign="top">
<TABLE WIDTH=100% BORDER=0 CELLPADDING=0 CELLSPACING=0 height="100%">

	<TR>
		<TD WIDTH=100% HEIGHT=100% COLSPAN=11>
<TABLE WIDTH=100% BORDER=0 CELLPADDING=0 CELLSPACING=0 height="100%">
	<TR>
		<TD WIDTH=100% valign="top" >
<TABLE WIDTH=100% BORDER=0 CELLPADDING=0 CELLSPACING=0 >
	<TR dir="ltr" >
	<TR>
		<TD width=100% bgcolor="#0066FF">
		<p align="justify" style="margin:0 10px; " dir="ltr">
		<font face="Verdana" size="2"><br>
		</font><b><font face="Verdana" size="3" color="#FFFFFF"><spring:message code="label.NationalFlag"/>
		</font><font face="Verdana" size="2"><br>&nbsp;</font></b></p>
		</TD>
	</TR>
	<%-- <TR width=100% hight=20%>
	<TD width="10" hight="20"><img src="omanImage/flag.gif" width="180" height="125" /></TD>
	<TD width="10" hight="20">
		<p class="MsoBodyText" align="justify" style="margin: 0 10px" dir="ltr">
		<font face="Verdana" style="font-size: 11pt"><spring:message code="label.NFDescription"/>
		</font></p></TD></TR>
		<TR><TD>
		<p class="MsoBodyText" align="justify" style="margin: 0 10px" dir="ltr">
		<font face="Verdana" style="font-size: 11pt"><spring:message code="label.NFDes"/>
		</font></p>
		</TD>
	</TR>	 --%>
	<TR>
                            <td width="100%" height="16" dir="rtl"> 
                      

                            <p class="MsoNormal" dir="LTR" style="text-align: justify; text-justify: kashida; text-kashida: 0%; direction: ltr; unicode-bidi: embed">
                            <span lang="en-us"><spring:message code="label.omanFlag"/></span></p>
                            <p class="MsoNormal" dir="LTR" style="text-align: justify; text-justify: kashida; text-kashida: 0%; direction: ltr; unicode-bidi: embed">
                            <img border="0" src="images/flag.gif" width="133" height="71" align="left"><spring:message code="label.NFDescription"/></p></td>
	</TR>
	
</TABLE>
		</TD>
	</TR>
</TABLE>
		</TD>
	</TR>
</TABLE>
		</TD>
		 <TD width="50%" valign="top">&nbsp;</TD>
	</TR>
</TABLE>

</BODY>
</HTML>