
<!--#include file="pageStyle.txt" -->

<%
Name=request.querystring("Name")
Password=request.querystring("Password")
'mail="non"

            addSQL = " insert into customers (nam,pass) values ('"&Name&"','"&Password&"')"
            ADO.execute(addSQL)%>
		    <p><font face="Arial" size="4" color="#008000">Thank you for register ... you are now registered member</font></p>
            <p><font face="Arial" size="4" color="#008000">click on <a href="logIn.asp">LogIn</a> .. to go to logIn page</font></p>

<%  ADO.close
   Set ADO=Nothing
%>
<!--#include file="pageEnd.txt" -->
