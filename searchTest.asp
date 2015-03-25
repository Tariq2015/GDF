<!--#include file="pageStyle.txt" -->


<%
keyword=request.form("keyword")
top=request.form("topicS")
subj=request.form("subS")
bod=request.form("bodS")
%>

<p>  <% response.write (keyword) %></p>

<p>  <% if top <>"" then response.write ("..search topics..") else response.write ("..not top..") %></p>
<p>  <% if subj <>"" then response.write ("..subjects.") else response.write ("..not sub..") %></p>
<p>  <% if bod <>"" then response.write ("..body..") else response.write ("..not bod..") %></p>
<%

response.write("<p>" & date())
response.write("</p>")

%>
<!--#include file="pageEnd.txt" -->