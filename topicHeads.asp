<%@ Language=VBScript CodePage = "1256"%>

<html dir=ltr>

<!--#include file="pageStyle.txt" -->

<p align="center"><font face="Simplified Arabic">This is our Topics ....</font></p>


<!--#include file="connection.txt" -->

<%

	selectSQL="select * from topics order by id desc"
	
	set rs=ADO.execute(selectSQL)
	
	do while not rs.eof

%>
<div align="center">
	<center>
		<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="90%">
			<tr>
				<td width="100%" dir="ltr" bgcolor="#DFDFFF">
				   <b>TOPIC  : <%response.write rs("id")%> &nbsp;&nbsp;&nbsp;  <%response.write rs("topic")%></b>
				</td>
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

<p align="center"><font face="Simplified Arabic"><a href="sign_book.asp">Suggest Topic</a></font></p>

<!--# include file "pageEnd.txt"-->

