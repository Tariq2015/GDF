
<%@ Language=VBScript CodePage = "1256"%>

<%
     
Name_Cooky=Request.cookies("Name")
If Name_Cooky="" Then

   response.redirect ("admin.asp")

End If

%> 

<!--#include file="connection.txt" -->



<%

function updatef()

	updateSQL= " update admin set pass = '"&pass1&"' , name='"&username&"' where name='"&username&"' " 
	ADO.execute(updateSQL)
%><p><font face="Simplified Arabic" size="3">Thank you .. pasword changed</font></p><%

end function



function checkf()

	selectSQL="select * from admin where name='"&username&"'"
	set usercheck=ADO.execute(selectSQL)
	
	if usercheck.EOF then
		response.write "No Admin with this name"
	else
		if oldpass=usercheck("pass") then
			updatef()
		else
			response.write "Old password not correct"
		end if
	end if

end function

username=request.form("username")
oldpass=request.form("oldpass")
pass1=request.form("pass1")
pass2=request.form("pass2")
%>

<HTML dir="ltr">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
  <meta name="ProgId" content="FrontPage.Editor.Document">
  <meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<%

if username = "" or oldpass = "" or pass1 = ""	or pass2 = ""	then
	response.write "some fields are empty"
	
else
	if pass1 <> pass2 then
		response.write "Wrong password confirmation .. please try again"
		
	else

		checkf()

	end if
end if

%>


<p align="center"><font color="#C11111"><b>

<font face="Simplified Arabic" size="7">Changing Password</font></b></font></p>
    <form method="POST" action="chng_admin_pass.asp">
  <p><font face="Simplified Arabic" size="3">User Name <input type="text" name="username" size="25"></font></p>
  <p><font face="Simplified Arabic" size="3">Old Password
  <input type="password" name="oldpass" size="25"></font></p>
  <p><font face="Simplified Arabic" size="3">New Password
  <input type="password" name="pass1" size="25"></font></p>
  <p><font face="Simplified Arabic" size="3">Confirm Pasword
  <input type="password" name="pass2" size="25"></font></p>
  <p><input type="submit" value="change" name="change"></p>
</form>

<p align="center"><font face="Simplified Arabic"><b><a href="admin_page.asp">Adminstration</a></b></font></p>

<%
ADO.Close 
Set ADO=Nothing
%>

</BODY>
</HTML>
