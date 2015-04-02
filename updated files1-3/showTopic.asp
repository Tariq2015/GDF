<!--#include file="pageStyle.txt" -->
<% field=request.querystring("field")
   uid=request.querystring("uid") %>
<p align="center"><font face="Simplified Arabic">well come in our topic: <%response.write (field)%></font></p>
<%
selectSQL="select * from topics_details where topic like '%"&field&"%' order by add_dat desc"
set rs=ADO.execute(selectSQL)
do while not rs.eof
%>
<div align="center">
<center>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="90%">
<tr>
<td width="100%" dir="ltr" bgcolor="#DFDFFF"><b>date : <font face="Bell MT" color="#ff0000"> <%response.write rs("add_dat")%> </font></b></td>
</tr>
<tr>
<td width="100%" dir="ltr" bgcolor="#DFDFFF"><b>Member Name:<font face="Bell MT" color="#ff0000"> <%response.write rs("customer")%></font></b></td>
</tr>
<tr>
<td width="100%" dir="ltr" bgcolor="#ECECFF"><b>Topic:<font face="Bell MT" color="#ff0000"> <%response.write rs("topic")%></font></b></td>
</tr>
<tr>
<td width="100%" dir="ltr" bgcolor="#DFDFFF"><b>subject:<font face="Bell MT" color="#ff0000"> <%response.write rs("subject")%></font></b></td>
</tr>
<tr>
<td width="100%" dir="ltr"><b>comment :<font face="Bell MT" color="#ff0000"> <%response.write rs("body")%></font></b></td>
</tr>
</table>
</center>
</div>
<hr color="#DFDFFF" width="90%">
<%
	rs.movenext
loop
ADO.close
set ADO=Nothing
%>
<p align="center"><font face="Simplified Arabic"><a href="add_comm.asp?field=<%=field%>&uid=<%=uid%>">Add Comment</a></font></p>
<!--# include file "pageEnd.txt"-->

