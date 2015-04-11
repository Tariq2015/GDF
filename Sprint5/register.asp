<<<<<<< HEAD
=======


>>>>>>> origin/master
<!--#include file="pageStyle.txt" -->
  <body dir="ltr">
  <form method="POST" action="chkRegister.asp" name="Login">
  <p dir="ltr">&nbsp;</p>
  <p > Give your name and password to inter</p>
  <p >
 customer name :
  <input type="text" name="Name" size="20" ></p>
  <p>customer password :
  <input type="password" name="Password" size="20" ></p>
  <p>confirm password :
  <input type="password" name="Passconf" size="20" ></p>
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
               Response.write "<b><font color=#FF0000>This user name is used</font></b>"
            Else
               If error = "Pass_Entry" Then
                  Response.write "<b><font color=#FF0000>wrong password comfirmation</font></b>"
               End If
            End If
         End If
      End If
    
  End If    
  %>
  
<!--#include file="pageEnd.txt" -->
