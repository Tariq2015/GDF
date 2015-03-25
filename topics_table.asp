
<%
     
Name_Cooky=Request.cookies("Name")
If Name_Cooky="" Then

   response.redirect ("admin.asp")

End If

%> 

<html dir=ltr>

<!--#include file="connection.txt" -->

<%
<<<<<<< HEAD
selecttechSQL="select * from topics"
set rs=ADO.execute(selecttechSQL)
=======



selecttechSQL="select * from topics_details order by add_dat desc"

set rs=ADO.execute(selecttechSQL)

>>>>>>> origin/master
%>

<p align="center"><b><font face="Simplified Arabic" color="#C11111" size="7">
Topic update or delete</font></b></p>
<p><b><font face="Simplified Arabic">List of Topics</font></b></p>
<<<<<<< HEAD

<%
'list of topics in DB 
do while not rs.eof
%>
<table align="center">
<tr align="left">
	<td width="20%" align="left"><font face="Times New Roman" color="#ff00ff" size="+2"><b><%=rs("topic")%>&nbsp;</b></td>
</tr>	
	<%
	 mTop=rs("topic")
		selectSQL="select * from topics_details where topic like '%"&mTop&"%'"
		set rs1=ADO.execute(selectSQL)
		do while not rs1.eof
	%>
<tr>	
	<td width="20%" align="justify"><font face="Simplified Arabic"><b><%=rs1("subject")%>&nbsp;</b></td>
	<td width="20%" align="center"><font dir="ltr" face="Simplified Arabic"><a href="const.asp"><b>Update</b></font><!-- topic_upd--></td>
	<td width="20%" align="center"><font dir="ltr" face="Simplified Arabic"><a href="topic_del.asp?id=<%=rs("id")%>"><b>Delete</b></font></td>
</tr>
<%
	rs1.movenext
loop
%>

=======
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
    
	<td width="20%">
    <p align="center"><font face="Simplified Arabic"><b><%=rs("topic")%>&nbsp;</b></font></td>
    <td width="10%" align="center"><font face="Simplified Arabic"><a href="topic_upd.asp.asp?id=<%=rs("id")%>"><b>Update</b></font></td><!--const -->
    <td width="10%" align="center"><font face="Simplified Arabic"><a href="topic_del.asp?id=<%=rs("id")%>"><b>Delete</b></font></td>
  </tr>
</table>
>>>>>>> origin/master
<%
	rs.movenext
loop
%>
<<<<<<< HEAD
</table>
=======

