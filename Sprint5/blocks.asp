
<!--#include file="pageStyle.txt" -->
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
				<td width="100%" dir="ltr" bgcolor="#DFDFFF"><b>date : <font face="Bell MT" color="#ff0000"><%response.write rs("add_dat")%></font></b></td>
			</tr>
			<tr>
				<td width="100%" dir="ltr" bgcolor="#DFDFFF"><b>Member: <font face="Bell MT" color="#ff0000"><%response.write rs("customer")%></font></b></td>
			</tr>
			<tr>
				<td width="100%" dir="ltr" bgcolor="#ECECFF"><b>topic name : <font face="Bell MT" color="#ff0000"><%response.write rs("topic")%></font></b></td>
			</tr>
			<tr>
				<td width="100%" dir="ltr" bgcolor="#DFDFFF"><b>subject : <font face="Bell MT" color="#ff0000"><%response.write rs("subject")%></font></b></td>
			</tr>
			<tr>
				<td width="100%" dir="ltr"><b>comment : <font face="Bell MT" color="#ff0000"><%response.write rs("body")%></font></b></td>
			</tr>
		</table>
	</center>
</div>
<hr color="#DFDFFF" width="90%">
<%
	ADO.close
%>
<!--#include file="pageEnd.txt" -->
