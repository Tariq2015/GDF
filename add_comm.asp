<!--#include file="pageStyle.txt" -->
  <body dir="ltr">
  

  <form method="POST" action="chkData.asp" name="Login">
  <p dir="ltr">  &nbsp;</p>
  <p >  You should be a registered customer to be able to comment </p>
  <p >  please LogIn here  </p>
  
  <p >
 customer name :
  <input type="text" name="Name" size="20" ></p>
  <p>customer password :
  <input type="password" name="Password" size="20" ></p>
  
  <p><input type="Text" value=""</p>
  <p></p><input type="submit" value="Submit" name="submit"></p>
  
 
  </form>
  <%
  error=Request.querystring("error")
  If error <> "" then

     If error = "Name_Null" Then
        Response.write "<b><font color=#FF0000>please inter user name</font></b>"
     Else
        If error = "Pass_Null" Then
           Response.write "<b><font color=#FF0000>please give password</font></b>"
         Else
            If error = "Name_Entry" Then
               Response.write "<b><font color=#FF0000>wrong user name</font></b>"
            Else
               If error = "Pass_Entry" Then
                  Response.write "<b><font color=#FF0000>wrong password</font></b>"
               End If
            End If
            
         End If
      End If
    
  End If    
  %>
  

<!--#include file="pageEnd.txt" -->
