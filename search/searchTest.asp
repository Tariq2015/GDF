<!--#include file="pageStyle.txt" -->


<%
keyword=request.form("keyword")
top=request.form("topicS")
subj=request.form("subS")
bod=request.form("bodS")

d1=request.form("sDate")
d2=request.form("eDate")
%>

<p>  <% response.write (keyword) %></p>

<p>  <% if top <>"" then response.write ("..search topics..") else response.write ("..not top..") %></p>
<p>  <% if subj <>"" then response.write ("..subjects.") else response.write ("..not sub..") %></p>
<p>  <% if bod <>"" then response.write ("..body..") else response.write ("..not bod..") %></p>
<%
if isdate(d1) and isdate(d2) then
response.write("<p> ok" & isdate(d2))
end if
response.write("</p>"& isDate(d1))

%>
<!--#include file="pageEnd.txt" -->
