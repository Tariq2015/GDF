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
   <p align="left" ><font color="#808000" face="Baskerville Old Face" size="+2"><%=rs("topic")%></font>  </p>  
   <p align="left"><font color="#808080" face="Simplified Arabic" size="+1"><%=rs("definition")%></font>  </p>
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