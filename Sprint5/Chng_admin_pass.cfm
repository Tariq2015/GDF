

>>>>>>> origin/master
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

	'updateSQL= " update general_news set subject = '"&subject&"' , body = '"&body&"' where id="&id 
	updateSQL= " update admin set Password = '"&pass1&"' where name='"&username&"'" 
	ADO.execute(updateSQL)
%><p><font face="Simplified Arabic" size="3">���� ��.. ��� �� ����� ���� ������ �����</font></p><%

end function

function checkf()

	selectSQL="select * from admin where name='"&username&"'"
	set usercheck=ADO.execute(selectSQL)
	
	if usercheck.EOF then
		response.write "�� ���� ���� ���� �����"
	else
		if oldpass=usercheck("password") then
			updatef()
		else
			response.write "�� ���� ���� ������ ������� ���� ����"
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
	response.write "�� ��� ������ ��� ������"
	
else
	if pass1 <> pass2 then
		response.write "��� ������ ���� ������ �� ���� ����� ���� ������ �������.. ������ ����� �������� ��� ����"
		
	else

		checkf()

	end if
end if

%>


<p align="center"><font color="#C11111"><b>

<font face="Simplified Arabic" size="7">����� ���� ������</font></b></font></p>
    <form method="POST" action="change_admin_password.asp">
  <p><font face="Simplified Arabic" size="3">��� �������� <input type="text" name="username" size="25"></font></p>
  <p><font face="Simplified Arabic" size="3">���� ������
  ������� <input type="password" name="oldpass" size="25"></font></p>
  <p><font face="Simplified Arabic" size="3">���� ������
  ������� <input type="password" name="pass1" size="25"></font></p>
  <p><font face="Simplified Arabic" size="3">����� ���� ������
  ������� <input type="password" name="pass2" size="25"></font></p>
  <p><input type="submit" value="�����" name="change"></p>
</form>

<p align="center"><font face="Simplified Arabic"><b><a href="adminsection.asp">����� ������</a></b></font></p>

<%
ADO.Close 
Set ADO=Nothing
%>

</BODY>
</HTML>
