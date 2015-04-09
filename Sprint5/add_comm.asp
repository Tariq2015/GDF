
<!--#include file="pageStyle.txt" -->
  <body dir="ltr">
  
  <% field=Request.querystring("field")
     uid=request.querystring("uid")%>
  
  <%
  
 
 
  If uid <> "" then
       response.redirect("comment_inf.asp?field="&field&"&uid="&uid)
            else
             response.write("you should be registered customer to add comment  ... register or log in with your user namen and password")
  end if    
  %>
  

<!--#include file="pageEnd.txt" -->
