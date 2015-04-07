
<%
     
Name_Cooky=Request.cookies("Name")
If Name_Cooky="" Then

   response.redirect ("admin.asp")

End If

%> 

<html dir=ltr>

<!--#include file="connection.txt" -->

<%
selecttechSQL="select * from topics"
set rs=ADO.execute(selecttechSQL)
%>

<p align="center"><b><font face="Simplified Arabic" color="#C11111" size="7">
Topics content control</font></b></p>
<p><b><font face="Simplified Arabic">List of Topics</font></b></p>

<%
'list of topics in DB 
do while not rs.eof
%>
<table align="center">
<tr align="left">
	<td width="20%" align="left"><font face="Times New Roman" color="#ff00ff" size="+2"><b><%=rs("topic")%>&nbsp;</b></td>
</tr>	
	<%
	 mTop=rs("topic")
		selectSQL="select * from topics_details where topic like '%"&mTop&"%'"
		set rs1=ADO.execute(selectSQL)
		do while not rs1.eof
	%>
<div align="center">
	<center>
		<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="90%">
			<tr>	
				<td width="20%" align="justify"><font face="Simplified Arabic"><b><%=rs1("subject")%>&nbsp;</b></td>
				
				<td width="20%" align="center"><font dir="ltr" face="Simplified Arabic"><a href="topic_del.asp?id=<%=rs1("id")%>"><b>Delete</b></font></td>
			</tr>
			<tr>
				<td width="100%" dir="ltr" bgcolor="#DFDFFF"><b>date : <font face="Bell MT" color="#ff0000"><%response.write rs1("add_dat")%></font></b></td>
			</tr>
			<tr>
				<td width="100%" dir="ltr" bgcolor="#DFDFFF"><b>Member: <font face="Bell MT" color="#ff0000"><%response.write rs1("customer")%></font></b></td>
			</tr>
			
			<tr>
				<td width="100%" dir="ltr"><b>comment : <font face="Bell MT" color="#ff0000"><%response.write rs1("body")%></font></b></td>
			</tr>
		</table>
	</center>
</div>
<hr color="#DFDFFF" width="90%">

<%
	rs1.movenext
loop
%>

<%
	rs.movenext
loop
%>
</table>


<p align="center"><font face="Simplified Arabic"><b><a href="admin_page.asp">Adminstration</a></b></font></p>

<%
ADO.close
Set ADO=Nothing
%>

</body>

</html>
