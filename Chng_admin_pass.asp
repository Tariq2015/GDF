





>>>>>>> origin/master
function updatef()

	'updateSQL= " update topics set subject = '"&subject&"' , body = '"&body&"' where id="&id 
	updateSQL= " update admin set Password = '"&pass1&"' where name='"&username&"'" 
	ADO.execute(updateSQL)
%><p><font face="Simplified Arabic" size="3">Thank You ... password changed successfully</font></p><%

end function

function checkf()

	selectSQL="select * from admin where name='"&username&"'"
	set usercheck=ADO.execute(selectSQL)
	
	if usercheck.EOF then
		response.write "No admin with this name"
	else
		if oldpass=usercheck("password") then
			updatef()
		else
			response.write "wroge old password"
		end if
	end if

end function

username=request.form("username")
oldpass=request.form("oldpass")
pass1=request.form("pass1")
pass2=request.form("pass2")
%>

<HTML dir=rtl>

<%

if username = "" or oldpass = "" or pass1 = ""	or pass2 = ""	then
	response.write "some fields are empty"
	
else
	if pass1 <> pass2 then
		response.write "wronge confirm password ... repeat"
		
	else

		checkf()

	end if
end if

%>


<p align="center"><font color="#C11111"><b>

<font face="Simplified Arabic" size="7">Change password</font></b></font></p>
    <form method="POST" action="const.asp"><!-- chng_admin_pass -->
  <p><font face="Simplified Arabic" size="3">admin name   : <input type="text" name="username" size="25"></font></p>
  <p><font face="Simplified Arabic" size="3">old password : <input type="password" name="oldpass" size="25"></font></p>
  <p><font face="Simplified Arabic" size="3">new password : <input type="password" name="pass1" size="25"></font></p>
  <p><font face="Simplified Arabic" size="3">confirm password: <input type="password" name="pass2" size="25"></font></p>
  <p><input type="submit" value="change" name="change"></p>
</form>

<p align="center"><font face="Simplified Arabic"><b><a href="admin_page.asp">Adminstration</a></b></font></p>

<%
ADO.Close 
Set ADO=Nothing
%>

</BODY>
<<<<<<< HEAD
</HTML>
=======
</HTML>
>>>>>>> origin/master
