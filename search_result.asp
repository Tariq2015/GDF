<html dir=ltr>
<!--#include file="pageStyle.txt" -->
<!--#include file="connection.txt" -->
<%
   function lookInTopic()
       	' search in The Table
   %>
	<div align="center">
		<center>
			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="90%">
				<tr>
					<td width="100%" dir="ltr"><b>looking for <% response.write(keyword) %> in TOPICS</b></td>
				</tr>
			</table>
		</center>
	</div>	<%
	SelectTechSQL="select * from topics_details where topic like '%"&keyword&"%' "
	set rsTop=ADO.execute(SelectTechSQL)

    do while not rsTop.eof
  %>
	     <p><b><a href="blocks.asp?field=topics_details&id=<%=rsTop("id")%>"><%response.write rsTop("topic")%></a></b></p>
  <% 
	rsTop.movenext
	loop
   end function

   function lookInSub()
   %>
   <div align="center">
	<center>
		<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="90%">
			<tr>
				<td width="100%" dir="ltr"><b>look for <% response.write(keyword) %> in SUBJECTS</b></td>
			</tr>
		</table>
	</center>
</div>
<%
	' search in The Table
	SelectsubSQL="select * from topics_details where subject like '%"&keyword&"%' "
	set rsSub=ADO.execute(SelectsubSQL)

    do while not rsSub.eof
%>
	     <p><b><a href="blocks.asp?field=topics_details&id=<%=rsSub("id")%>"><%response.write rsSub("subject")%></a></b></p>
<% 
	rsSub.movenext
	loop   
   end function
%>
<%
   function lookInBod()
   %>
   <div align="center">
	<center>
		<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="90%">
			<tr>
				<td width="100%" dir="ltr"><b>look for <% response.write(keyword) %> in the COMMENTS</b></td>
			</tr>
		</table>
	</center>
</div>
<%
	' search in The Table
	SelectbodSQL="select * from topics_details where body like '%"&keyword&"%' "
	set rsBod=ADO.execute(SelectbodSQL)

    do while not rsBod.eof
%>
	     <p><b><a href="blocks.asp?field=topics_details&id=<%=rsBod("id")%>"><%response.write rsBod("subject")%></a></b></p>
<% 
	rsBod.movenext
	loop
   end function
%>
<%
	keyword=request.form("keyword")
	top=request.form("topicS")
	subj=request.form("subS")
	bod=request.form("bodS")
%>
<%'================================================ FOR TOPICS ======================================================%>

<%
   if top <>"" then lookInTopic()
%>

<%'================================================ FOR SUBJECTS ======================================================%>
<%
   if subj <>"" then lookInSub()
%>
<%'================================================ FOR BODY ======================================================%>
<%
   if bod <>"" then lookInBod()

	ADO.close
	set ADO=nothing
%>
<!--#include file="pageEnd.txt" -->