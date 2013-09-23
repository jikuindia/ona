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
<table cellpadding="2" cellspacing="2" align="center">
<tr>
<td height="90" width="150" colspan="2" valign="top">
<tiles:insertAttribute name="adminHeader" />
</td>
</tr>
<tr>
<td height="30" width="150" valign="top">
<tiles:insertAttribute name="adminMenu" />
</td>
</tr>
<tr>
<td height="140" width="140">
<tiles:insertAttribute name="adminBody" />
</td>
</tr>
<tr>
<td height="40" width="150" colspan="2">
<tiles:insertAttribute name="adminFooter" />
</td>
</tr>
</table>
</body>
</html>


