<html dir=ltr>
<!--#include file="pageStyle.txt" -->
<<<<<<< HEAD

=======
<!--#include file="connection.txt" -->
>>>>>>> origin/master
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
	if isdate(d1) and isdate(d2) then
	     SelectTechSQL="select * from topics_details where (add_dat BETWEEN "&d11&" AND "&d22&" ) and topic like '%"&keyword&"%' "
		 set rsTop=ADO.execute(SelectTechSQL)
	else
	    if isDate(d1)and not isdate(d2) then
		    SelectTechSQL="select * from topics_details where (add_dat > "&d11&") and topic like '%"&keyword&"%' "
			set rsTop=ADO.execute(SelectTechSQL)

		else
			if not isDate(d1)and isdate(d2) then
			    SelectTechSQL="select * from topics_details where (add_dat < "&d22&") and topic like '%"&keyword&"%' "
				set rsTop=ADO.execute(SelectTechSQL)

		   else
				SelectTechSQL="select * from topics_details where topic like '%"&keyword&"%' "
				set rsTop=ADO.execute(SelectTechSQL)
			end if	
    	end if
	end if	
<<<<<<< HEAD
    if not rsTop.eof then 
		do while not rsTop.eof
	  %>
		     <p><b><a href="blocks.asp?field=topics_details&id=<%=rsTop("id")%>"><%response.write rsTop("topic")%></a></b></p>
	  <% 
		rsTop.movenext
		loop
    else response.write("<p> No resaults in Topics ....... </p>")
	end if
=======
    do while not rsTop.eof
  %>
	     <p><b><a href="blocks.asp?field=topics_details&id=<%=rsTop("id")%>"><%response.write rsTop("topic")%></a></b></p>
  <% 
	rsTop.movenext
	loop
  ' if rsTop.RecordCount=0 then response.write("<p align="center"> No resaults in Topics ....... </p>")
>>>>>>> origin/master
   end function

   function lookInSub()
   %>
   <div align="center">
	<center>
		<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="90%">
			<tr>
				<td width="100%" dir="ltr"><b>looking for <% response.write(keyword) %> in SUBJECTS</b></td>
			</tr>
		</table>
	</center>
</div>
<<<<<<< HEAD
<%
	if isdate(d1) and isdate(d2) then
	     SelectSubSQL="select * from topics_details where (add_dat BETWEEN "&d11&" AND "&d22&" ) and subject like '%"&keyword&"%' "
		 set rsSub=ADO.execute(SelectSubSQL)
	else
	    if isDate(d1)and not isdate(d2) then
		    SelectSubSQL="select * from topics_details where (add_dat > "&d11&") and subject like '%"&keyword&"%' "
			set rsSub=ADO.execute(SelectSubSQL)

		else
			if not isDate(d1)and isdate(d2) then
			    SelectSubSQL="select * from topics_details where (add_dat < "&d22&") and subject like '%"&keyword&"%' "
				set rsSub=ADO.execute(SelectSubSQL)

		   else
				SelectSubSQL="select * from topics_details where subject like '%"&keyword&"%' "
				set rsSub=ADO.execute(SelectSubSQL)
			end if	
    	end if
	end if	
    if not rsSub.eof then 
	
		do while not rsSub.eof
	%>
		     <p><b><a href="blocks.asp?field=topics_details&id=<%=rsSub("id")%>"><%response.write rsSub("subject")%></a></b></p>
	<% 
		rsSub.movenext
		loop   
    else response.write("<p> No resaults in Subjects ....... </p>")
	end if
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
if isdate(d1) and isdate(d2) then
	     SelectBodSQL="select * from topics_details where (add_dat BETWEEN "&d11&" AND "&d22&" ) and body like '%"&keyword&"%' "
		 set rsBod=ADO.execute(SelectBodSQL)
	else
	    if isDate(d1)and not isdate(d2) then
		    SelectBodSQL="select * from topics_details where (add_dat > "&d11&") and body like '%"&keyword&"%' "
			set rsBod=ADO.execute(SelectBodSQL)

		else
			if not isDate(d1)and isdate(d2) then
			    SelectBodSQL="select * from topics_details where (add_dat < "&d22&") and body like '%"&keyword&"%' "
				set rsBod=ADO.execute(SelectBodSQL)

		   else
				SelectBodSQL="select * from topics_details where body like '%"&keyword&"%' "
				set rsBod=ADO.execute(SelectBodSQL)
			end if	
    	end if
	end if	
    if not rsBod.eof then 
		do while not rsBod.eof
	%>
		     <p><b><a href="blocks.asp?field=topics_details&id=<%=rsBod("id")%>"><%response.write rsBod("subject")%></a></b></p>
	<% 
		rsBod.movenext
		loop
	else response.write("<p> No resaults in Comments ....... </p>")
	end if
=======
<%
	if isdate(d1) and isdate(d2) then
	     SelectSubSQL="select * from topics_details where (add_dat BETWEEN "&d11&" AND "&d22&" ) and subject like '%"&keyword&"%' "
		 set rsSub=ADO.execute(SelectSubSQL)
	else
	    if isDate(d1)and not isdate(d2) then
		    SelectSubSQL="select * from topics_details where (add_dat > "&d11&") and subject like '%"&keyword&"%' "
			set rsSub=ADO.execute(SelectSubSQL)

		else
			if not isDate(d1)and isdate(d2) then
			    SelectSubSQL="select * from topics_details where (add_dat < "&d22&") and subject like '%"&keyword&"%' "
				set rsSub=ADO.execute(SelectSubSQL)

		   else
				SelectSubSQL="select * from topics_details where subject like '%"&keyword&"%' "
				set rsSub=ADO.execute(SelectSubSQL)
			end if	
    	end if
	end if	
    do while not rsSub.eof
%>
	     <p><b><a href="blocks.asp?field=topics_details&id=<%=rsSub("id")%>"><%response.write rsSub("subject")%></a></b></p>
<% 
	rsSub.movenext
	loop   
  ' if not rsSub.recordcount>0 then response.write("<p> No resaults in Subjects ....... </p>")
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
if isdate(d1) and isdate(d2) then
	     SelectBodSQL="select * from topics_details where (add_dat BETWEEN "&d11&" AND "&d22&" ) and body like '%"&keyword&"%' "
		 set rsBod=ADO.execute(SelectBodSQL)
	else
	    if isDate(d1)and not isdate(d2) then
		    SelectBodSQL="select * from topics_details where (add_dat > "&d11&") and body like '%"&keyword&"%' "
			set rsBod=ADO.execute(SelectBodSQL)

		else
			if not isDate(d1)and isdate(d2) then
			    SelectBodSQL="select * from topics_details where (add_dat < "&d22&") and body like '%"&keyword&"%' "
				set rsBod=ADO.execute(SelectBodSQL)

		   else
				SelectBodSQL="select * from topics_details where body like '%"&keyword&"%' "
				set rsBod=ADO.execute(SelectBodSQL)
			end if	
    	end if
	end if	
    do while not rsBod.eof
%>
	     <p><b><a href="blocks.asp?field=topics_details&id=<%=rsBod("id")%>"><%response.write rsBod("subject")%></a></b></p>
<% 
	rsBod.movenext
	loop
	'if not rsBod.recordcount>0 then response.write("<p> No resaults in Comments ....... </p>")
>>>>>>> origin/master
   end function
%>
<%
	keyword=request.form("keyword")
	top=request.form("topicS")
	subj=request.form("subS")
	bod=request.form("bodS")
	d1= request.form("sDate") 
	d2= request.form("eDate") 
	d11="#"& d1 &"#"
	d22="#"& d2 &"#"

<<<<<<< HEAD
if keyword="" then 
    response.write("Empty KeyWord .. there must be key word")
	%>
	<p><a href="search.asp">BACK TO SEARCH PAGE  </a></p>
    <%
else
    if top="" and subj="" and bod="" then
	   response.write("At least you need to choos one field to search in")
	   %>
	     <p><a href="search.asp">BACK TO SEARCH PAGE  </a></p>
       <%
	else %>
		<!--#include file="connection.txt" -->
		
		<%'================================================ FOR TOPICS ====================================================
		   if top <>"" then lookInTopic()
		  '================================================ FOR SUBJECTS ==================================================
		   if subj <>"" then lookInSub()
		  '================================================ FOR BODY ======================================================
		   if bod <>"" then lookInBod()
		
			ADO.close
			set ADO=nothing
	end if
end if
%>
=======
'if keyword="" then 
'    response.write("Empty KeyWord .. there must be key word")
'	response.redirect("search.asp")
'else
'    if top="" and subj="" and bod="" then
'	   response.write("At least you need to choos one field to search in")
'	   response.redirect("search.asp")

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
