<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="jquery.zweatherfeed.min.js" type="text/javascript"></script>

<script type="text/javascript">
$(document).ready(function () {
  $('#test').weatherfeed(['UKXX0085','EGXX0011','UKXX0061','CAXX0518','CHXX0049']);
});
</script>
</head>
<body>
<div id="test"></div>
</body>
</html>