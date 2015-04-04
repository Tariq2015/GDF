

<%   Name=Request.form("Name")
     Password=Request.form("Password")
     field=request.querystring("field")    
     
     
      If Name = "" Then
             response.redirect ("add_comm.asp?error=Name_Null")
   
          Else
              If Password = "" Then
                 response.redirect ("add_comm.asp?error=Pass_Null")
              Else
            
                  
                   %><!--#include file="connection.txt" --><%
                   
        		  SelectSql="Select * from customers where nam='"&Name&"'"
         		  set rs=ADO.execute (SelectSql)

         		  If rs.eof  then 
           		     response.Redirect ("add_comm.asp?error=Name_Entry")
         
         		  Else       
                       If rs("password") <> password Then
                          response.redirect ("add_comm.asp?error=Pass_Entry")
          
                       Else
         
                           Name_Cooky= request.cookies("Name")
                                        
                           If Name_Cooky  <> Name then
                              response.cookies ("Name")=Name
                 
                           End IF
                           response.Redirect ("comment_inf.asp?field="&field)
     
                       End If
             
                   End If
     
                End If
            End If
    
     %>
