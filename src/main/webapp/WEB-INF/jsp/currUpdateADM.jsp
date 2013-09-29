<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <HTML>
<HEAD>
<script type="text/javascript">
function fileValidate(){
	  valid = true;
	  var pict=document.form1.picture.options[document.form1.picture.selectedIndex].value
alert("hi");
if ( document.form1.files.value == "" )
{
    alert ( "please select picture." );
    valid = false;
}
else if(pict=="0" )
{
	 alert ( "please select folder." );
	    valid = false;
}
alert("bye")
return valid; 	
}

</script>
    <SCRIPT language="javascript">
        function addRow(tableID) {
 
            var table = document.getElementById(tableID);
 
            var rowCount = table.rows.length;
            var row = table.insertRow(rowCount);
 
            var cell1 = row.insertCell(0);
            var element1 = document.createElement("input");
            element1.type = "checkbox";
            element1.name="chk";
            cell1.appendChild(element1);
 
            var cell2 = row.insertCell(1);
             var element2 = document.createElement("select");
             element2.setAttribute("id","country" );
             element2.setAttribute("name","country" );
             
             var first = document.getElementById('countryList');
             var options = first.innerHTML;
             var options = element2.innerHTML + options;
             element2.innerHTML = options;
          
                
            cell2.appendChild(element2);
            
            var cell3 = row.insertCell(2);
            var element3 = document.createElement("input");
           element3.type = "text";
           element3.name="currency";
           element3.id="currency";
           cell3.appendChild(element3);
 
 
        }
 
        function deleteRow(tableID) {
            try {
            var table = document.getElementById(tableID);
            var rowCount = table.rows.length;
 			alert(rowCount);
            for(var i=0; i<rowCount; i++) {
                var row = table.rows[i];
                var ckbox = document.form1.chk;
                alert(ckbox[i]);
                alert(rowCount);
                if(ckbox[i].checked) {
                    table.deleteRow(i);
                    rowCount--;
                    i--;
                }
            }
            }catch(e) {
                alert(e);
            }
        }
 
    </SCRIPT>
	<style>

    .myButton {
        
        background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #79bbff), color-stop(1, #378de5));
        background:-moz-linear-gradient(top, #79bbff 5%, #378de5 100%);
        background:-webkit-linear-gradient(top, #79bbff 5%, #378de5 100%);
        background:-o-linear-gradient(top, #79bbff 5%, #378de5 100%);
        background:-ms-linear-gradient(top, #79bbff 5%, #378de5 100%);
        background:linear-gradient(to bottom, #79bbff 5%, #378de5 100%);
        filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#79bbff', endColorstr='#378de5',GradientType=0);
        
        background-color:#79bbff;
        
        -moz-border-radius:5px;
        -webkit-border-radius:5px;
        border-radius:5px;
        
        border:1px solid #337bc4;
        
        display:inline-block;
        color:#ffffff;
        font-family:arial;
        font-size:10px;
        font-weight:bold;
        padding:3px 8px;
        text-decoration:none;
        
        text-shadow:0px 1px 0px #528ecc;
        
    }
    .myButton:hover {
        
        background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #378de5), color-stop(1, #79bbff));
        background:-moz-linear-gradient(top, #378de5 5%, #79bbff 100%);
        background:-webkit-linear-gradient(top, #378de5 5%, #79bbff 100%);
        background:-o-linear-gradient(top, #378de5 5%, #79bbff 100%);
        background:-ms-linear-gradient(top, #378de5 5%, #79bbff 100%);
        background:linear-gradient(to bottom, #378de5 5%, #79bbff 100%);
        filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#378de5', endColorstr='#79bbff',GradientType=0);
        
        background-color:#378de5;
    }
    .myButton:active {
        position:relative;
        top:1px;
    }
    </style>
</HEAD>
<center><h3>${addoil}</h3></center>
<BODY>
<table width="100%">
<tr>
<td height="37" bgcolor="#0066FF"><strong><font color="#FFFFFF">Add Country</font></strong></td>
</tr>
</table>
 <form action="addCountryPrice.html" method="post" enctype="multipart/form-data" name="form1" id="form1" commandName="oilPrice" >
 <table>
 <tr>
 <td width="100%"colspan="2">&nbsp;</td>
 </tr>
 <tr>
 <td><INPUT type="button" class='myButton'value="Add Row" onclick="addRow('dataTable')" />
 
    <INPUT type="button" class="myButton" value="Delete Row" onclick="javascript:deleteRow('dataTable');" />
    </td>
 <td></td>
 </tr>
 <tr><td>Country</td><td>Price</td></tr>
 </table>
    <!-- <INPUT type="button" value="Add Row" onclick="addRow('dataTable')" />
 
    <INPUT type="button" value="Delete Row" onclick="javascript:deleteRow('dataTable');" />
 -->    <TABLE id="dataTable" width="10%" border="1">
        <!-- <TR >
            <TD width="5%"><INPUT type="checkbox" name="chk"/></TD>
            <TD width="10%"> <input name="files" type="file" id="file"> </TD>
        </TR> -->
        <c:forEach items="${lists}" var="list" >
<tr>
<td width="5%"><input type="checkbox" name="chk"/></td>
<td><select size="1" name="country" id="country">
<option value="0">Choose...</option>
<%-- <option value="${list.countryName}">${list.countryName}</option> --%>
<option value="Saudi Arabia" <c:if test="${list.countryName eq 'Saudi Arabia'}">selected</c:if> >Saudi Arabia</option>
<option value="Iran" <c:if test="${list.countryName eq 'Iran'}">selected</c:if> >Iran</option>
<option value="Iraq" <c:if test="${list.countryName eq 'Iraq'}">selected</c:if> >Iraq</option>
<option value="Kuwait" <c:if test="${list.countryName eq 'Kuwait'}">selected</c:if> >Kuwait</option>
<option value="UAE" <c:if test="${list.countryName eq 'UAE'}">selected</c:if> >UAE</option>
<option value="Qatar" <c:if test="${list.countryName eq 'Qatar'}">selected</c:if> >Qatar</option>
<option value="Oman" <c:if test="${list.countryName eq'Oman'}">selected</c:if> >Oman</option>
<option value="Yemen" <c:if test="${list.countryName eq'Yemen'}">selected</c:if> >Yemen</option>
</select>
<td><input name="currency" type="text" id="currency" value="${list.oilPrice}"></td>
</tr>
</c:forEach>
</TABLE>
<br>
<input type="submit" class="myButton" name="Submit" value="Submit" />
<div style="display: none">
<select size="1" name="countryList" id="countryList">
<option value="0">Choose...</option>
<%-- <option value="${list.countryName}">${list.countryName}</option> --%>
<option value="Saudi Arabia">Saudi Arabia</option>
<option value="Iran">Iran</option>
<option value="Iraq">Iraq</option>
<option value="Kuwait">Kuwait</option>
<option value="UAE">UAE</option>
<option value="Qatar">Qatar</option>
<option value="Oman">Oman</option>
<option value="Yemen">Yemen</option>
</select>
</div>

   
 </form>
</BODY>
</HTML>
