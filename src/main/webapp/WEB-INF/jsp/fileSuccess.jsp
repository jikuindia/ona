<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 <HTML>
<HEAD>
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
</HEAD>
<BODY>
<center><h6>Successfully Photo Uploaded</h6></center>
 <form action="save.html" method="post" enctype="multipart/form-data" name="form1" id="form1" commandName="uploadForm" >
    <INPUT type="button" value="Add Row" onclick="addRow('dataTable')" />
 
    <INPUT type="button" value="Delete Row" onclick="javascript:deleteRow('dataTable');" />
 
    <TABLE id="dataTable" width="10%" border="1">
        <TR >
            <TD width="5%"><INPUT type="checkbox" name="chk"/></TD>
            <TD width="10%"> <input name="files" type="file" id="file"> </TD>
        </TR>
	</TABLE>
   <input type="submit" name="Submit" value="Submit files"/>
 </form>
</BODY>
</HTML>