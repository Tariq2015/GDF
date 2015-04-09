

<!--#include file="pageStyle.txt" -->
  <body dir="ltr">
  

  <form method="POST" action="chkAdmin.asp" name="Login">
  <p dir="ltr">  &nbsp;</p>
    <p >  please LogIn here  </p>
  <p >
 Admin name :
  <input type="text" name="Name" size="20" ></p>
  <p>Admin password :
  <input type="password" name="Password" size="20" ></p>
  <p>

  <input type="submit" value="Submit" name="submit"></p>
  
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
  

  </td>
  
</table>

</body>
</html>
