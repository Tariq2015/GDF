


<html dir="ltr">
<head><title>Add topic page Under construction</title></head>
<!--#include file="connection.txt"-->
<body>

<%
selectSQL="select * from topics_suggest"
	set rs=ADO.execute(selectSQL)

	
%>
<b><p>Topics Suggested by MEMBERS</p>
<table bgcolor="#c0c0c0" cellspacing="2" cellpadding="2" border="2" frame="border" rules="all">
 <tr>
    <td><p align="center" ><font color="#ff0000" face="Baskerville Old Face" size="+2">Member  </p></td>
	<td><p align="center" ><font color="#ff0000" face="Baskerville Old Face" size="+2">suggested topic</font>  </p></td>
	<td><p align="center"><font color="#ff0000" face="Simplified Arabic" size="+2">desicribtion</font></p></td>
	<td><p align="center"><font color="#ff0000" face="Simplified Arabic" size="+2">Votes No.</font></p></td>
	<td><p align="center"><font color="#ff0000" face="Simplified Arabic" size="+2">Disapprove suggestion</font></p></td>
	<td><p align="center"><font color="#ff0000" face="Simplified Arabic" size="+2">Approve suggestion</font></p></td>
</tr>
 <%   do while not rs.eof    %>
<tr>
    <td><p align="left" ><font color="#808080" face="Baskerville Old Face" size="+1"><%=rs("customer")%></font>  </p></td>
	<td><p align="left" ><font color="#808080" face="Baskerville Old Face" size="+1"><%=rs("topic")%></font>  </p></td>
	<td><p align="left"><font color="#808080" face="Simplified Arabic" size="+1"><%=rs("definition")%></font>  </p></td>
	<td><p align="center"><font color="#808080" face="Simplified Arabic" size="+1"><%=rs("voteNo")%></font>  </p></td>
	<td><p align="center"><a href="sug_del.asp?id=<%=rs("ID")%>">DELETE</a></p></td><!-- -->
	<td><p align="center">
	<a href="sug_approv.asp?id=<%=rs("id")%>&topic=<%=rs("topic")%>">APPROVE</a></p></td><!--  -->
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
