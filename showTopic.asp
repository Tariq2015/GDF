<%@ Language=VBScript CodePage = "1256"%>

<html dir=ltr>

<!--#include file="pageStyle.txt" -->

<p align="center"><font face="Simplified Arabic">well come in our topic</font></p>


<!--#include file="connection.txt" -->

<%

selectSQL="select * from topics order by add_dat desc"

set rs=ADO.execute(selectSQL)

do while not rs.eof

%>
<div align="center">
<center>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="90%">
<tr>
<td width="100%" dir="ltr" bgcolor="#DFDFFF"><b>date : <%response.write rs("add_dat")%></b></td>
</tr>
<tr>
<td width="100%" dir="ltr" bgcolor="#ECECFF"><b>topic name : <%response.write rs("topic")%></b></td>
</tr>
<tr>
<td width="100%" dir="ltr" bgcolor="#DFDFFF"><b>subject : <%response.write rs("subject")%></b></td>
</tr>
<tr>
<td width="100%" dir="ltr"><b>comment : <%response.write rs("body")%></b></td>
</tr>
</table>
</center>
</div>
<hr color="#DFDFFF" width="90%">
<%
	rs.movenext
loop

ADO.close
%>

<p align="center"><font face="Simplified Arabic"><a href="sign_book.asp">√÷› „·«ÕŸ« ﬂ</a></font></p>

<!--# include file "pageEnd.txt"-->

