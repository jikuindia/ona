<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:insertAttribute name="title" ignore="true" /></title>
</head>
<body>
<table cellpadding="2" cellspacing="2" align="center" border="0">
<tr>
<td height="150" width="1000"  valign="top">
<tiles:insertAttribute name="header" />
</td>
</tr>
<tr>
<td height="30" width="1000" valign="top">
<tiles:insertAttribute name="menu" />
</td>
</tr>
<tr>
<td height="400" width="1000" valign="top">
<tiles:insertAttribute name="body" />
</td>
</tr>
<tr>
<td height="80" width="1000" colspan="2" valign="top">
<tiles:insertAttribute name="footer" />
</td>
</tr>
</table>
</body>
</html>