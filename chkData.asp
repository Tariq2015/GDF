<%@ Language=VBScript CodePage = "1256"%>

<%   Name=Request.form("Name")
     Password=Request.form("Password")
         
     
     
      If Name = "" Then
             response.redirect ("logIn.asp?error=Name_Null")
   
          Else
              If Password = "" Then
                 response.redirect ("logIn.asp?error=Pass_Null")
              Else
            
                  
                   %><!--#include file="connection.txt" --><%
                   
        		  SelectSql="Select * from admin where name='"&Name&"'"
         		  set rs=ADO.execute (SelectSql)

         		  If rs.eof  then ' 
           		     response.Redirect ("logIn.asp?error=Name_Entry")
         
         		  Else       
                       If rs("pass") <> password Then
                          response.redirect ("logIn.asp?error=Pass_Entry")
          
                       Else
         
                           Name_Cooky= request.cookies("Name")
                                           
                           If Name_Cooky  <> Name then
                              response.cookies ("Name")=Name
                 
                           End IF
                           response.Redirect ("admin.asp")
     
                       End If
             
                   End If
     
                End If
            End If
     %>