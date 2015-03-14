

<html dir=ltr>

<!--#include file="pageStyle.txt" -->
<!--#include file="connection.txt" -->

<%

keyword=request.querystring("keyword")

' search in Topic Table

SelectTechSQL="select * from topics where subject like '%"&keyword&"%' or body like '%"&keyword&"%'  "
set rsTop=ADO.execute(SelectTechSQL)


%>

<p align="center"><font face="Simplified Arabic" size="3">‰ «∆Ã «·»ÕÀ</font></p>

<%

' Display search result 

do while not rsTop.eof

%>
	<p><b><a href="blocks.asp?field=topics&id=<%=rsTop("id")%>"><%response.write rsTop("subject")%></a></b></p>
<% 
	rsTop.movenext
	loop
%>
 
<%
	ADO.close
%>
<!--#include file="pageEnd.txt" -->


