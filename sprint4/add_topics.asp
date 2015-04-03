<html dir="ltr">
<head><title>Add topic page Under construction</title></head>
<!--#include file="connection.txt"-->


<body>

<%
selectSQL="select * from topics_suggest"
	set rs=ADO.execute(selectSQL)

	
%>
<b><p>Topics Suggested by MEMBERS</p>
<table bgcolor="#00FF00" cellspacing="2" cellpadding="2" border="2" frame="above" rules="all">
 <tr>
    <td><p align="left" ><font color="#ff0000" face="Baskerville Old Face" size="+2">Member  </p></td>
	<td><p align="left" ><font color="#ff0000" face="Baskerville Old Face" size="+2">suggested topic</font>  </p></td>
	<td><p align="left"><font color="#ff0000" face="Simplified Arabic" size="+2">desicribtion</font>  </p></td>
	<td></td>
</tr>
 <%   do while not rs.eof    %>
<tr>
    <td><p align="left" ><font color="#808000" face="Baskerville Old Face" size="+1"><%=rs("customer")%></font>  </p></td>
	<td><p align="left" ><font color="#808000" face="Baskerville Old Face" size="+1"><%=rs("topic")%></font>  </p></td>
	<td><p align="left"><font color="#808000" face="Simplified Arabic" size="+1"><%=rs("definition")%></font>  </p></td>
	<td></td>
</tr>
<%
	rs.movenext
loop
%>
</table> </b>
<p align="center"><font face="Simplified Arabic"><b><a href="admin_page.asp">Adminstration</a></b></font></p>
<%
ADO.close
Set ADO=Nothing
%>
</body>
</html>
