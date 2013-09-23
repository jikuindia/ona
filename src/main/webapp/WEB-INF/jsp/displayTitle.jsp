 <%@page contentType="text/html;charset=cp1256"%>
<html>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=cp1256">
<title>Welcome to ONA - News</title>
 
 
 <script src="/js/jquery-1.8.0.min.js"></script>
        <script type="text/javascript">
	        function sendLanguage() {
	        	alert("inside fun");
	        // get the form values
	        var name = $('#lang').val();
	        alert(name);
	 
	        $.ajax({
	        type: "GET",
	        url: "/ona/displayNews.htm",
	        data: "name=" + name,
	        success: function(response){
	        // we have the response
	        $('#info').html(response);
	        $('#lang').val('');
	        },
	        error: function(e){
	        alert('Error: ' + e);
	        }
	        });
	        }
	        </script>
 

<script language="javascript">
function validate(type)
{

if(document.login1.name.options[document.login1.name.selectedIndex].value=="0")
{
alert("Please select a news..")

document.login1.name.focus();
}


if(type=="archive")
{

var action= confirm("Are you sure, you want to archive news?");
}
if(type=="edit")
{
var action= confirm("Are you sure, you want to edit news?");
}

if (action==true)
{

if(type=="archive")
{
document.login1.action="newsARCHIVEADM.jsp";
document.login1.target="frm1";
document.login1.submit();
}


else if(type=="edit")
{
document.login1.action="newsEDITADM1.jsp";
document.login1.target="_new";
document.login1.submit();

}
}

return false;
}


function remove(space)
{
	var plus = 0;
	for(var i=0;i<space.length;i++)
	{
		if (space.charAt(i) != ' ')
		{
			plus =plus + 1;
		}
	}
	return(plus);
}
</script>


</head>

<body topmargin="0" leftmargin="0" bgcolor="#FFFFFF" >

<table border="0" width="100%" id="table1">
	
	<tr   >
		<td width="182" bgcolor="#EFF3FF" valign="top">
		<table width="182"  border="0" width="100%" cellspacing="0" cellpadding="0" id="table2">
			
		
			</table>
		</td>
		<td width="95%" bgcolor="#FFFFFF" valign="top" align="center">
	
	
		<div align="center"><form name="login1" action="javascript:void(0)" method="post" target="frm1">
		   
   <br>
   
		<table border="1" width="60%" id="table6" cellspacing="0" cellpadding="0" bordercolor="#E5EEF9">
			<tr>
				<td>
				
				<table border="0" width="100%" id="table7" cellspacing="3" cellpadding="3">
					<tr>
						<td colspan="3" bgcolor="#1C837C">
						<p style="margin-left: 10px"><b>
						<font face="Verdana" size="2" color="#FFFFFF">Update 
						News</font></b></td>
					</tr>
					
					<tr>
						<td width="14%">
						<b><font face="Verdana" size="1">Select a Language</font></b></td>
						</td>
						<td width="20%">
						<select name="lang" onChange="sendLanguage()">
 							 <option value="E">English</option>
 							 <option value="A">Arabi</option>
						</select>
						</td>
					</tr>
					
					<tr>
						<td width="14%">
					<b><font face="Verdana" size="1">Select a News</font></b></td>
						<td width="20%">
						<select>
 							 <option value="N2">${list.NewsTitle.newsTitle}</option>
						</select>
						</td>
						<td width="74%">
						<input type="submit" value="Edit" onclick="return validate('edit')">
					<div class="addNews"><a href="/ona/addNewsDisplay.html">Add</a></div></div>
						<input type="button" value="Add to Archive" name="B4" onclick="return validate('archive')"></td>
					</tr>
					<tr>
						
					</tr>
					</table>
				</td>
			</tr>
			</table></form>
			&nbsp;</div>
		<p>&nbsp;<p>&nbsp;</td>
	</tr>
	
</table>

</body>

</html>