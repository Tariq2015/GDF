<!--#include file="pageStyle.txt" -->
  <body dir="ltr">
  
  <% field=Request.querystring("field")%>
 
 
  <form method="POST" action="chkData.asp?field=<%=field%>" name="Login">
		  <p dir="ltr">  &nbsp;</p>
		  <p >  You should be a registered customer to be able to comment </p>
		  <p >  please LogIn here  </p>
		  <p > customer name :
		  <input type="text" name="Name" size="20" ></p>
	      <p>customer password :
		  <input type="password" name="Password" size="20" ></p>
	  
		  <p></p><input type="submit" value="Submit" name="submit"></p>
  </form>
  <%
  error=Request.querystring("error")
  If error <> "" then

     if error = "Name_Null" then
        Response.write "<b><font color=#FF0000>please inter user name</font></b>"
     else
        if error = "Pass_Null" then
           Response.write "<b><font color=#FF0000>please give password</font></b>"
         else
            if error = "Name_Entry" then
               Response.write "<b><font color=#FF0000>wrong user name</font></b>"
            else
               if error = "Pass_Entry" then
                  Response.write "<b><font color=#FF0000>wrong password</font></b>"
               end if
            end if
         end if
      end if
    
  end if    
  %>
  

<!--#include file="pageEnd.txt" -->
