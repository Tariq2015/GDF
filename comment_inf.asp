

<!--#include file="pageStyle.txt" -->

<p>  here to add customer comment </p>



<!--#include file="connection.txt"-->

<%
topic=request.form("topic")
subject=request.form("subject")
body=request.form("body")

%>

<%
Function AddF()

addSQL= " insert into topics_details (topic,subject,body) values ('"&topic&"','"&subject&"','"&body&"')"
'add1SQL= " insert into topics (topic) values ('"&topic&"')"
ADO.execute(addSQL)
'ADO.execute(add1SQL)
%><p><font face="Arial" size="4" color="#008000">Thank you for your comment .. comment added</font></p><%

End Function
%>
<body>
<%
   showTopic= " select * from topics "
   set rsTopic=ADO.execute(showTopic)
%>
<p align="center"><font color="#C11111" size="7" face="Simplified Arabic"><b>comment</b></font></p>
<form method="POST" action="comment_inf.asp">
	 <p><b>Topic: <select size="1" name="topic">
	    
			  <% do while not rsTopic.eof %>
			  <option><%response.write rsTopic("topic")%></option>
			  <% rsTopic.movenext
			     loop %>
			  </select></b></p>
     <p><b>Subject: <input type="text" name="subject" size="20"></b></p>
     <p><b>comment: </b></p> 
     <p><b>&nbsp;<textarea rows="11" name="body" cols="78"></textarea></b></p>
     <p><input type="submit" value="Add" name="add"></p>
</form>

<%
If subject="" or body="" then
     response.write "Not all fields are fulled .. use back button to return back "
Else
     AddF()
End If
%>

<%
ADO.close
Set ADO=Nothing
%>

<p align="center"><font face="Simplified Arabic"><b><a href="admin_page.asp">Administrator</a></b></font></p>

</body>

</html>


<!--# include file "pageEnd.txt"-->