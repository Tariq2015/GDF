<html dir="ltr">
<head><title>Add topic page Under construction</title></head>
<!--#include file="connection.txt"-->
<body>


<%
selectSQL="select * from topics_suggest"
	set rs=ADO.execute(selectSQL)


	
%>
<b><p>Topics Suggested by Customers</p>
   <%   do while not rs.eof    %>
   <p> <%=rs("topic")%> </p>  
   <p> <%=rs("definition")%> </p>
 </b> 
   
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
