<%@ Language=VBScript CodePage = "1256"%>

<%
     
Name_Cooky=Request.cookies("Name")
If Name_Cooky="" Then

   response.redirect ("admin.asp")

End If

%> 
<!--#include file="connection.txt" -->
<html dir=rtl>
<head></head>
<body>


<%

function updatef()

	updateSQL= " update topics_details set topic = '"&topic&"' ,subject = '"&subject&"' , body = '"&body&"' where id="&id 
	ADO.execute(updateSQL)
	%><p><font face="Simplified Arabic" size="3">This subject updated .....</font></p><%

end function

id=request.querystring("id")
topic=request.form("topic");
subject=request.form("subject")
body=request.form("body")

selectSQL="select * from topics_details where id="&id
set rs=ADO.execute(selectSQL)

%>

<p align="center"><b><font face="Simplified Arabic" color="#C11111" size="7">
Update</font></b></p>

<%
if subject = "" then
	response.write "Press Update"
else
	updatef()
end if
%>

<form method="POST" action="topic_upd.asp?id=<%=id%>">
  <p><font face="Simplified Arabic" size="3">The Topic  :<textarea rows="1" name="topic" cols="53"><%response.write rs("topic")%></textarea></font></p>
  <p><font face="Simplified Arabic" size="3">The Subject: <textarea rows="1" name="subject" cols="53"><%response.write rs("subject")%></textarea></font></p>
  <p><font face="Simplified Arabic" size="3">The Comment :</font></p>
  <p><font face="Simplified Arabic" size="3"><textarea rows="12" name="body" cols="58"><%response.write rs("body")%></textarea></font></p>
  <p><font face="Simplified Arabic" size="3"><input type="submit" value="Update" name="start"></font></p>
</form>

<%
ADO.Close 
Set ADO=Nothing
%>

<p align="center"><font face="Simplified Arabic"><b><a href="admin_page.asp">Adminstration</a></b></font></p>

</body>

</html>
