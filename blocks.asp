

<!--#include file="pageStyle.txt" -->

<!--#include file="connection.txt" -->

<%
	field=request.querystring("field")
	id=request.querystring("id")
	
	selectSQL="select * from "&field&" where id="&id
	set rs=ADO.execute(selectSQL)
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
	ADO.close
%>
<!--#include file="pageEnd.txt" -->

