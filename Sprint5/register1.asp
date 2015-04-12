

<!--#include file="pageStyle.txt" -->


<%
  uid = Request.querystring("uid")
  name=request.form("name")
  pass=request.form("pass")
  pass1=request.form("pass1")
 
  
%>

<form method="POST" action="register1.asp?uid=<%=uid%>">
	<p align="center"><font face="@MingLiU_HKSCS-ExtB" color="#800080" size="+2"> 
	                  THIS PAGE FOR MEMBERS REGISTERATION </font></p>
	<p align="left">
	User Name: <input type="text" name="name" size="20"></p>
	
	<p>User Password:<input type="password" name="pass" size="20"></p>
	<p>confirm Password:<input type="password" name="pass1" size="20"></p>  
	<p align="center"><input type="submit" value="Add Suggest" name="B1"></p>
</form>
<%
if name="" or  pass=""  then
     response.write " name or password should not be left empty "
else
  selectUser="select * from customers where nam='"&name&"' " 
  set rs=ADO.execute(selectUser)
  if not rs.eof then
     response.write " this user name is reserved .. choose another one please "
  else
      if pass1 <> pass then
	      response.write "password and confirm password not matched .. full again"
	  else		   
	    addSQL = " insert into customers (nam,pass) values ('"&name&"','"&pass&"')"
		ADO.execute(addSQL)
		%><p><font face="Arial" size="4" color="#008000">Thank you for your suggestion .. suggest added</font></p><%
	 end If
	end if 
end if
%>
<%
ADO.close
Set ADO=Nothing

%>

<!--#include file="pageEnd.txt" -->
