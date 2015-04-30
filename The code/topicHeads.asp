<!--#include file="pageStyle.txt" -->
<p align="center"><font face="Simplified Arabic">This is our Topics ....</font></p>
<%
	selectSQL1="select * from topics order by id desc"
	set rs1=ADO.execute(selectSQL1)
	
	
	do while not rs1.eof
	field11=rs1("topic")
	i=0
	selectSQL="select * from topics_details where topic like '%"&field11&"%' "
	set rs=ADO.execute(selectSQL)
	do while not rs.eof
	   i=i+1
	   rs.movenext
	loop
%>
<div align="center">
	<center>
		<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="90%">
			<tr>
				<td width="100%" dir="ltr" bgcolor="#DFDFFF">
				   <b><a href="showTopic.asp?field=<%=rs1("topic")%>&uid=<%=uid%>"><%response.write rs1("topic")&"..("&i&")"%></a></b>
				  
				</td>
			</tr>
		
		</table>
	</center>
</div>
<hr color="#DFDFFF" width="90%">
<%
	rs1.movenext
loop

ADO.close
Set ADO=Nothing
%>

<p align="center"><font face="Simplified Arabic"><a href="suggest_topic.asp?uid=<%=uid%>">Suggest Or Vote Topics</a></font></p><!-- const -->

<!--#include file="pageEnd.txt" -->

