
<%   Name=Request.form("Name")
     Password=Request.form("Password")
	 Passconf=Request.form("Passconf")
     'field=request.querystring("field")    
     
     
      If Name = "" Then
             response.redirect ("register.asp?error=Name_Null")
   
          Else
              If Password = "" Then
                 response.redirect ("register.asp?error=Pass_Null")
              Else
            
                  
                   %><!--#include file="connection.txt" --><%
                   
        		  SelectSql="Select * from customers where nam='"&Name&"'"
         		  set rs=ADO.execute (SelectSql)

         		  If not rs.eof  then 
           		     response.Redirect ("register.asp?error=Name_Entry")
         
         		  Else       
                       If passconf <> password Then
                          response.redirect ("register.asp?error=Pass_Entry")
          
                       Else
						   
						   response.redirect ("add_reg_inf.asp?Name="&Name&"&Password="&Password)
						   ADO.close
						   Set ADO=Nothing
						   
                       End If
             
                   End If
     
                End If
            End If
			
     %>
