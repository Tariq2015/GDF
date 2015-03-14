<!--#include file="pageStyle.txt" -->
  <body dir="ltr">
  

  <form method="POST" action="chkData.asp" name="Login">
  <p dir="ltr">
  &nbsp;</p>
  <p >  Give your name and password to inter</p>
  <p >
 customer name :
  <input type="text" name="Name" size="20" value="admin"></p>
  <p>customer password :
  <input type="password" name="Password" size="20" value="12345678"></p>
  <p>

  <input type="submit" value="Suuuuuuuuuuubmit" name="submit"></p>
  
  </form>
  <%
  error=Request.querystring("error")
  If error <> "" then

     If error = "Name_Null" Then
        Response.write "<b><font color=#FF0000>áã ÊÏÎá ÇÓã ÇáãÓÊÎÏã</font></b>"
     Else
        If error = "Pass_Null" Then
           Response.write "<b><font color=#FF0000>áã ÊÏÎá ÇáÑÞã ÇáÓÑí</font></b>"
         Else
            If error = "Name_Entry" Then
               Response.write "<b><font color=#FF0000>áÞÏ ÇÏÎáÊ ÇÓã ãÓÊÎÏã ÎØÃ</font></b>"
            Else
               If error = "Pass_Entry" Then
                  Response.write "<b><font color=#FF0000>áÞÏ ÃÏÎáÊ ÑÞã ÓÑí ÎØÃ</font></b>"
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
