<<<<<<< HEAD
<%@ Language=VBScript CodePage = "1256"%>
=======
>>>>>>> origin/master

<%
     
Name_Cooky=Request.cookies("Name")
If Name_Cooky="" Then

   response.redirect ("admin.asp")

End If

%> 

<<<<<<< HEAD
<html dir=rtl>
=======
<html dir=ltr>
>>>>>>> origin/master

<!--#include file="connection.txt" -->

<%



selecttechSQL="select * from topics_details order by add_dat desc"

set rs=ADO.execute(selecttechSQL)

%>

<p align="center"><b><font face="Simplified Arabic" color="#C11111" size="7">
Topic update or delete</font></b></p>
<p><b><font face="Simplified Arabic">List of Topics</font></b></p>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber1">
  <tr>
    <td width="80%">
    <p align="center"><font face="Simplified Arabic"><b>Topic Name</b></font></td>
    <td width="10%" align="center"><font face="Simplified Arabic"><b>Update</b></font></td>
    <td width="10%" align="center"><font face="Simplified Arabic"><b>Delete</b></font></td>
  </tr>
</table>

<%

'list of topics in DB 

do while not rs.eof

%>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber1">
  <tr>
<<<<<<< HEAD
    <td width="40%">
    <p align="center"><font face="Simplified Arabic"><b><%=rs("body")%>&nbsp;</b></font></td>
	<td width="20%">
    <p align="center"><font face="Simplified Arabic"><b><%=rs("subject")%>&nbsp;</b></font></td>
	<td width="20%">
    <p align="center"><font face="Simplified Arabic"><b><%=rs("topic")%>&nbsp;</b></font></td>
    <td width="10%" align="center"><font face="Simplified Arabic"><a href="topic_upd.asp?id=<%=rs("id")%>"><b>Update</b></font></td>
=======
    
	<td width="20%">
    <p align="center"><font face="Simplified Arabic"><b><%=rs("topic")%>&nbsp;</b></font></td>
    <td width="10%" align="center"><font face="Simplified Arabic"><a href="topic_upd.asp.asp?id=<%=rs("id")%>"><b>Update</b></font></td><!--const -->
>>>>>>> origin/master
    <td width="10%" align="center"><font face="Simplified Arabic"><a href="topic_del.asp?id=<%=rs("id")%>"><b>Delete</b></font></td>
  </tr>
</table>
<%
	rs.movenext
loop
%>



<p align="center"><font face="Simplified Arabic"><b><a href="admin_page.asp">Adminstration</a></b></font></p>

<%
ADO.close
Set ADO=Nothing
%>

</body>

</html>
