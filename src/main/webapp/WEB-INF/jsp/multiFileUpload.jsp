<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 <HTML>
<HEAD>
<script type="text/javascript">
function fileValidate(){
	  valid = true;
	  var pict=document.form1.picture.options[document.form1.picture.selectedIndex].value
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
             var element2 = document.createElement("input");
            element2.type = "file";
            element2.name="files";
            element2.id="file";
            cell2.appendChild(element2);
 
 
        }
 
        function deleteRow(tableID) {
            try {
            var table = document.getElementById(tableID);
            var rowCount = table.rows.length;
            for(var i=0; i<rowCount; i++) {
                var row = table.rows[i];
                var ckbox = document.form1.chk;
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
<center><h3>${messagePhoto}</h3></center>
<BODY>
<table width="100%">
<tr>
<td height="37" bgcolor="#0066FF"><strong><font color="#FFFFFF">Add Picture </font></strong></td>
</tr>
</table>
 <form action="save.html" method="post" enctype="multipart/form-data" name="form1" id="form1" commandName="uploadForm" onsubmit="return fileValidate()">
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
 </table>
    <!-- <INPUT type="button" value="Add Row" onclick="addRow('dataTable')" />
 
    <INPUT type="button" value="Delete Row" onclick="javascript:deleteRow('dataTable');" />
 -->    <TABLE id="dataTable" width="10%" border="1">
        <TR >
            <TD width="5%"><INPUT type="checkbox" name="chk"/></TD>
            <TD width="10%"> <input name="files" type="file" id="file"> </TD>
        </TR>
         <!-- <tr>
		<td width="11%"><font face="Verdana" size="1"><b>Select Folder</b></font></td>
		<td><select size="1" name="picture">
		<option selected value="0">Choose...</option>
		<option value="M">Main</option>
		<option value="S">Sub</option>
		</select></td>
    </tr> -->
	</TABLE>
	<br>
	
		<font face="Verdana" size="1"><b>Select Folder</b></font>
		<select size="1" name="picture">
		<option selected value="0">Choose...</option>
		<option value="M">Main</option>
		<option value="S">Sub</option>
		</select>
   
   <input type="submit" class="myButton" name="Submit" value="Submit files" />
 </form>
</BODY>
</HTML>