
<!--#include file="pageStyle.txt" -->

<%
subject=request.form("subject")
body=request.form("body")
'dd1=Now()
'dd11="#"& dd1 &"#"
'response.write(dd1)
'response.write(<p>dd11</p>)

Function AddF()
addSQL= " insert into topics_details (customer,topic,subject,body,add_dat) values ('"&name&"','"&topic&"','"&subject&"','"&body&"',Now())"
'add1SQL= " insert into topics (topic) values ('"&topic&"')"
ADO.execute(addSQL)
'ADO.execute(add1SQL)
%><p><font face="Arial" size="4" color="#008000">Thank you for your comment .. comment added</font></p><%

End Function
topic=request.querystring("field")
uid=request.querystring("uid")
%>
<body>
<%
 selectUser="select * from customers where id="&uid 
  set rs=ADO.execute(selectUser)
  name=rs("nam")
  response.write(name) 
  response.write("this comment will be in:  ")
  response.write(topic)
  response.write("    by user   :")
  response.write(name)
%>
<p align="center"><font color="#C11111" size="4" face="Simplified Arabic"><b>comment</b></font></p>
<form method="POST" action="comment_inf.asp?field=<%=topic%>&uid=<%=uid%>">
	 
     <p><b>Subject:&nbsp; <input type="text" name="subject" size="20"></b></p>
     <p><b>comment:  </b></p>
     <p><b>&nbsp;<textarea rows="9" name="body" cols="85"></textarea></b></p>
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



</body>

</html>


<!--# include file "pageEnd.txt"-->
