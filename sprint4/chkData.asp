



<%   Name=Request.form("Name")
     Password=Request.form("Password")
     field=request.querystring("field")    
     
     
      If Name = "" Then
             response.redirect ("logIn.asp?error=Name_Null")
   
          Else
              If Password = "" Then
                 response.redirect ("logIn.asp?error=Pass_Null")
              Else
            
                  
                   %><!--#include file="connection.txt" --><%
                   
        		  SelectSql="Select * from customers where nam='"&Name&"'"
         		  set rs=ADO.execute (SelectSql)

         		  If rs.eof  then 
           		     response.Redirect ("logIn.asp?error=Name_Entry")
         
         		  Else       
                       If rs("pass") <> password Then
                          response.redirect ("logIn.asp?error=Pass_Entry")
          
                       Else
         
                           
                           m=rs("id")
						   ADO.close
						   Set ADO=Nothing
						   response.Redirect ("default.asp?uid="&m)
						     
                       End If
             
                   End If
     
                End If
            End If
			
     %>
