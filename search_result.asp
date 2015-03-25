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

<<<<<<< HEAD
    do while not rsSub.eof
%>
	     <p><b><a href="blocks.asp?field=topics_details&id=<%=rsSub("id")%>"><%response.write rsSub("subject")%></a></b></p>
<% 
	rsSub.movenext
	loop   
   end function
%>
=======
keyword=request.querystring("keyword")

' search in Topic Table

SelectTechSQL="select * from topics_details where topic like '%"&keyword&"%' or subject like '%"&keyword&"%' or body like '%"&keyword&"%'  "
set rsTop=ADO.execute(SelectTechSQL)


%>

<p align="center"><font face="Simplified Arabic" size="3">search resaults</font></p>

>>>>>>> origin/master
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
<<<<<<< HEAD
	     <p><b><a href="blocks.asp?field=topics_details&id=<%=rsBod("id")%>"><%response.write rsBod("subject")%></a></b></p>
=======
	<p><b><a href="blocks.asp?field=topics_details&id=<%=rsTop("id")%>"><%response.write rsTop("subject")%></a></b></p>
>>>>>>> origin/master
<% 
	rsBod.movenext
	loop
   end function
%>
<%
<<<<<<< HEAD
	keyword=request.form("keyword")
	top=request.form("topicS")
	subj=request.form("subS")
	bod=request.form("bodS")
%>
<%'================================================ FOR TOPICS ======================================================%>

<%
   if top <>"" then lookInTopic()
=======
	ADO.close
	set ADO=nothing
>>>>>>> origin/master
%>

<%'================================================ FOR SUBJECTS ======================================================%>
<%
   if subj <>"" then lookInSub()
%>
<%'================================================ FOR BODY ======================================================%>
