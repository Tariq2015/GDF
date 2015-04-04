<%@ Language=VBScript CodePage = "1256"%>

<%
     
Name_Cooky=Request.cookies("Name")
If Name_Cooky="" Then

   response.redirect ("admin.asp")

End If

%> 

<!--#include file="connection.txt" -->

<%

id=request.querystring("id")
topic=request.querystring("topic")
addSQL = " insert into topics (topic) values ('"&topic&"')"
ADO.execute(addSQL)

deleteSQL = "delete * from topics_suggest where id="&id
ADO.execute(deleteSQl)

response.redirect "add_topics.asp"

ADO.Close 
Set ADO=Nothing

%>