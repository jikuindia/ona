 <%@page contentType="text/html;charset=windows-1252"%>
 <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<HTML >
<HEAD>
<meta http-equiv="Content-Language" content="en-us">
<TITLE>Welcome to Oman News Official Website</TITLE>
 <LINK REL="SHORTCUT ICON" HREF="http://www.omannews.gov.om/ona/favicon.ico"> 
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<link rel="stylesheet" href="../css/main.css" type="text/css" />

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


</HEAD>
<BODY BGCOLOR=#FFFFFF LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH=0 MARGINHEIGHT=0>

  
 
    
    

<!-- ImageReady Slices (0005_red.psd - Slices: 03, 04, 05) -->
<!-- <TABLE WIDTH=100% height="100%" BORDER=0 CELLPADDING=0 CELLSPACING=0 bgCOLOR="#F7F7F7">
	<TR>
		<TD width="50%" height="100%" valign="top">&nbsp;</TD>
		<TD width="780" valign="top">
<TABLE WIDTH=780 BORDER=0 CELLPADDING=0 CELLSPACING=0 height="100%">

	<TR>
		<TD WIDTH=780 HEIGHT=100% COLSPAN=11>
<TABLE WIDTH=780 BORDER=0 CELLPADDING=0 CELLSPACING=0 height="100%">
	<TR>
		<TD WIDTH=185 HEIGHT=100% valign="top">
<TABLE WIDTH=185 BORDER=0 CELLPADDING=0 CELLSPACING=0 height="100%" background="images/bg0001.gif" dir="rtl">
	<TR>
		<TD WIDTH=185 HEIGHT=100%><img src="images/spacer.gif" height="1" width="1"></TD>
</TR>
</TABLE>
		</TD>
		<TD WIDTH=595 valign="top" background="images/vg100.gif">
<TABLE WIDTH=595 BORDER=0 CELLPADDING=0 CELLSPACING=0 background="images/vg100.gif" dir="rtl">
	<TR dir="ltr" >
		<TD WIDTH=595  valign="top" >
		<form name="fm1" action="newsMore.jsp" method="post">
<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table11" background="images/bg.gif" dir="ltr">
	<tr>
		
	</tr>

</table>
		</TD>

	<TR>
		<TD>
		<p align="justify" style="margin:0 10px; " dir="ltr">
		<font face="Verdana" size="3"><br>
		<b><font color="#008080"><spring:message code="label.BasicInforamtion"/><br>
&nbsp;</font></b></font></p>

		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">&nbsp;</p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<span lang="AR-SA"><b><font color="#008080" face="Verdana" size="2"><spring:message code="label.Area"/>
	</font></b><font face="Verdana" size="2">&nbsp;<spring:message code="label.areaInSize"/></font></span></p>
	
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font face="Verdana" size="2">&nbsp;</font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<span lang="AR-SA"><b><font color="#008080" face="Verdana" size="2"><spring:message code="label.papulation"/>
		</font></b></span><font face="Verdana" size="2"><spring:message code="label.papulationSize"/></font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font face="Verdana" size="2">&nbsp;&nbsp;&nbsp;</font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<b><font color="#008080" face="Verdana" size="2"><spring:message code="label.DensityOfPapulation"/></font></b><font face="Verdana" size="2"><b>&nbsp;</b>&nbsp;<spring:message code="label.densityPapulationSize"/></font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">&nbsp;</p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font color="#008080" face="Verdana" size="2"><b><spring:message code="label.capital"/>&nbsp;</b></font><font face="Verdana" size="2"><spring:message code="label.capitalName"/></font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">&nbsp;</p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<b><font color="#008080" face="Verdana" size="2"><spring:message code="label.officeLang"/></font></b><font face="Verdana" size="2"><b>&nbsp;&nbsp;&nbsp;</b><spring:message code="label.officeLangName"/></font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font face="Verdana" size="2">&nbsp;</font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<b><font color="#008080" face="Verdana" size="2"><spring:message code="label.religion"/></font></b><font face="Verdana" size="2"><b>&nbsp;
		</b><spring:message code="label.religionName"/></font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font face="Verdana" size="2">&nbsp;</font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<b><font color="#008080" face="Verdana" size="2"><spring:message code="label.time"/></font></b><font face="Verdana" size="2">&nbsp;&nbsp;&nbsp;<spring:message code="label.timeField"/></font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font face="Verdana" size="2">&nbsp;</font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<b><font color="#008080" face="Verdana" size="2"><spring:message code="label.currency"/></font></b><font face="Verdana" size="2"><b>&nbsp;&nbsp;&nbsp;
		</b><spring:message code="label.currValue"/></font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font face="Verdana" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font face="Verdana" size="2"></font><b><font color="#008080" face="Verdana" size="2"><spring:message code="label.GDProduct"/></font></b><font face="Verdana" size="2"><b>&nbsp;</b>&nbsp;<spring:message code="label.GDPValue"/></font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font face="Verdana" size="2">&nbsp;</font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<b><font color="#0000ff" face="Verdana" size="2"></font><font face="Verdana" size="2" color="#008080"><spring:message code="label.weather"/></font></b><font face="Verdana" size="2"><b>&nbsp;&nbsp;</b><spring:message code="label.weatherValue"/></font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font face="Verdana" size="2">&nbsp;</font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<b><font color="#008080" face="Verdana" size="2"><spring:message code="label.measurements"/></font></b><font face="Verdana" size="2"><b>&nbsp;&nbsp;&nbsp;</b><spring:message code="label.mValue"/></font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font face="Verdana" size="2">&nbsp;</font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<b><font color="#008080" face="Verdana" size="2"><spring:message code="label.electricity"/></font></b><font face="Verdana" size="2"><b>&nbsp;&nbsp;
		</b><spring:message code="label.eValue"/></font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font face="Verdana" size="2">&nbsp;</font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<b><font color="#008080" face="Verdana" size="2"><spring:message code="label.PGA"/></font></b><span dir="ltr"><font face="Verdana" size="2"><b>&nbsp;&nbsp;</b><spring:message code="label.pgaValue"/></font></span></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font face="Verdana" size="2">&nbsp;</font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<span dir="ltr"><b><font color="#008080" face="Verdana" size="2"><spring:message code="label.lifeExpect"/> 
		</font></b><font face="Verdana" size="2"><b>&nbsp;</b><spring:message code="label.lifeExpectVal"/> 
		</font></span></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font face="Verdana" size="2">&nbsp;</font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<span dir="ltr"><b><font color="#008080" face="Verdana" size="2"><spring:message code="label.NationalDay"/>
		</font></b><font face="Verdana" size="2"><b>&nbsp;&nbsp;</b><spring:message code="label.NDay"/></font></span></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font face="Verdana" size="2">&nbsp;</font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<span dir="ltr"><b><font color="#008080" face="Verdana" size="2"></b><spring:message code="label.OfficeHoliday"/>
		 </font></b><font face="Verdana" size="2"><spring:message code="label.OHolidayDate"/></font></span></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font face="Verdana" size="2">&nbsp;</font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<span dir="ltr"><b><font color="#008080" face="Verdana" size="2">
		<spring:message code="label.officeWorkingHrs"/></font></b></span></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<span dir="ltr"><font face="Verdana" size="2"><spring:message code="label.OWH"/></font></span></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">&nbsp;</p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px"></TD>
	</TR>
	

	<TR>
		<TD>&nbsp;
			</TD>
	</TR>
	
</TABLE>
		</TD>
	</TR>
</TABLE>
		</TD>
	</TR>
	<TR>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=125 HEIGHT=1 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=54 HEIGHT=1 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=50 HEIGHT=1 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=91 HEIGHT=1 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=83 HEIGHT=1 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=67 HEIGHT=1 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=82 HEIGHT=1 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=26 HEIGHT=1 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=37 HEIGHT=1 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=78 HEIGHT=1 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=87 HEIGHT=1 ALT=""></TD>
	</TR>
</TABLE>
		</TD>
		<TD width="50%" valign="top">&nbsp;</TD>
	</TR>
</TABLE> -->
<!-- End ImageReady Slices -->
<table width="999" border="0" bordercolor="#FFCC33">
  <!-- <tr bgcolor="#0066FF">
    <td colspan="2" height="20px"><p align="left" style="margin:0 10px; " dir="ltr">
		<font face="Verdana" size="3"><br>
		<b><font color="#FFFFFF"><spring:message code="label.BasicInforamtion"/><br>
&nbsp;</font></b></font></p>     </td>
  </tr> -->
  <TR>
		<TD width=100% bgcolor="#0066FF">
		<p align="justify" style="margin:0 10px; " dir="ltr">
		<font face="Verdana" size="2"><br>
		</font><b><font face="Verdana" size="3" color="#FFFFFF"><spring:message code="label.BasicInforamtion"/>
		</font><font face="Verdana" size="2"><br>&nbsp;</font></b></p>
		</TD>
	</TR>
  <tr>
    <td width="694">
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">&nbsp;</p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<span lang="AR-SA"><b><font color="#008080" face="Verdana" size="2"><spring:message code="label.Area"/>
	</font></b><font face="Verdana" size="2">&nbsp;<spring:message code="label.areaInSize"/></font></span></p>
	
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font face="Verdana" size="2">&nbsp;</font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<span lang="AR-SA"><b><font color="#008080" face="Verdana" size="2"><spring:message code="label.papulation"/>
		</font></b></span><font face="Verdana" size="2"><spring:message code="label.papulationSize"/></font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font face="Verdana" size="2">&nbsp;&nbsp;&nbsp;</font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<b><font color="#008080" face="Verdana" size="2"><spring:message code="label.DensityOfPapulation"/></font></b><font face="Verdana" size="2"><b>&nbsp;</b>&nbsp;<spring:message code="label.densityPapulationSize"/></font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">&nbsp;</p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font color="#008080" face="Verdana" size="2"><b><spring:message code="label.capital"/>&nbsp;</b></font><font face="Verdana" size="2"><spring:message code="label.capitalName"/></font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">&nbsp;</p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<b><font color="#008080" face="Verdana" size="2"><spring:message code="label.officeLang"/></font></b><font face="Verdana" size="2"><b>&nbsp;&nbsp;&nbsp;</b><spring:message code="label.officeLangName"/></font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font face="Verdana" size="2">&nbsp;</font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<b><font color="#008080" face="Verdana" size="2"><spring:message code="label.religion"/></font></b><font face="Verdana" size="2"><b>&nbsp;
		</b><spring:message code="label.religionName"/></font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font face="Verdana" size="2">&nbsp;</font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<b><font color="#008080" face="Verdana" size="2"><spring:message code="label.time"/></font></b><font face="Verdana" size="2">&nbsp;&nbsp;&nbsp;<spring:message code="label.timeField"/></font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font face="Verdana" size="2">&nbsp;</font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<b><font color="#008080" face="Verdana" size="2"><spring:message code="label.currency"/></font></b><font face="Verdana" size="2"><b>&nbsp;&nbsp;&nbsp;
		</b><spring:message code="label.currValue"/></font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font face="Verdana" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font face="Verdana" size="2"></font><b><font color="#008080" face="Verdana" size="2"><spring:message code="label.GDProduct"/></font></b><font face="Verdana" size="2"><b>&nbsp;</b>&nbsp;<spring:message code="label.GDPValue"/></font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font face="Verdana" size="2">&nbsp;</font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<b><font color="#0000ff" face="Verdana" size="2"></font><font face="Verdana" size="2" color="#008080"><spring:message code="label.weather"/></font></b><font face="Verdana" size="2"><b>&nbsp;&nbsp;</b><spring:message code="label.weatherValue"/></font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font face="Verdana" size="2">&nbsp;</font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<b><font color="#008080" face="Verdana" size="2"><spring:message code="label.measurements"/></font></b><font face="Verdana" size="2"><b>&nbsp;&nbsp;&nbsp;</b><spring:message code="label.mValue"/></font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font face="Verdana" size="2">&nbsp;</font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<b><font color="#008080" face="Verdana" size="2"><spring:message code="label.electricity"/></font></b><font face="Verdana" size="2"><b>&nbsp;&nbsp;
		</b><spring:message code="label.eValue"/></font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font face="Verdana" size="2">&nbsp;</font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<b><font color="#008080" face="Verdana" size="2"><spring:message code="label.PGA"/></font></b><span dir="ltr"><font face="Verdana" size="2"><b>&nbsp;&nbsp;</b><spring:message code="label.pgaValue"/></font></span></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font face="Verdana" size="2">&nbsp;</font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<span dir="ltr"><b><font color="#008080" face="Verdana" size="2"><spring:message code="label.lifeExpect"/> 
		</font></b><font face="Verdana" size="2"><b>&nbsp;</b><spring:message code="label.lifeExpectVal"/> 
		</font></span></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font face="Verdana" size="2">&nbsp;</font></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<span dir="ltr"><b><font color="#008080" face="Verdana" size="2"><spring:message code="label.NationalDay"/>
		</font></b><font face="Verdana" size="2"><b>&nbsp;&nbsp;</b><spring:message code="label.NDay"/></font></span></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font face="Verdana" size="2">&nbsp;</font></p>
		<!-- <p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<span dir="ltr"><b><font face="Verdana" size="2"></b><spring:message code="label.OfficeHoliday"/>
		 </b><font face="Verdana" size="2"><spring:message code="label.OHolidayDate"/></font></span></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font face="Verdana" size="2">&nbsp;</font></p> -->
		
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<span dir="ltr"><b><font color="#008080" face="Verdana" size="2">
		<spring:message code="label.OfficeHoliday"/></font></b></span></p>
		<font face="Verdana" size="2"><spring:message code="label.OHolidayDate"/></font></span></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<font face="Verdana" size="2">&nbsp;</font></p>
		
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<span dir="ltr"><b><font color="#008080" face="Verdana" size="2">
		<spring:message code="label.officeWorkingHrs"/></font></b></span></p>
		
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">
		<span dir="ltr"><font face="Verdana" size="2"><spring:message code="label.OWH"/></font></span></p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px">&nbsp;</p>
		<p class="MsoNormal" dir="ltr" align="justify" style="margin: 0 10px"></td>
    <td width="289">&nbsp;</td>
  </tr>
</table>

  
<!-- GoStats JavaScript Based Code -->
<script type="text/javascript" src="http://gostats.com/js/counter.js"></script>
<script type="text/javascript">_gos='monster.gostats.com';_goa=428523;
_got=5;_goi=1;_goz=0;_gol='counter create hit';_GoStatsRun();</script>
<noscript><a target="_blank" title="counter create hit"
href="http://gostats.com"><img alt="counter create hit"
src="http://monster.gostats.com/bin/count/a_428523/t_5/i_1/counter.png"
style="border-width:0" /></a></noscript>
<!-- End GoStats JavaScript Based Code -->

</BODY>
</HTML>