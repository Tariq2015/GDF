<%@ Language=VBScript CodePage = "1256"%>

<%
     
Name_Cooky=Request.cookies("Name")
If Name_Cooky="" Then

   response.redirect ("admin.asp")

End If

username=request.form("username")
pass1=request.form("pass1")
pass2=request.form("pass2")

%>

<!--#include file="connection.txt"�-->

<%

function addf()

	addSQL= " insert into customers (nam,password) values ('"&username&"','"&pass1&"') " 
	ADO.execute(addSQL)
%><p><font face="Simplified Arabic" size="3">���� ��.. ��� �� ����� ������ �����</font></p><%
end function

function checkf()

	selectSQL="select * from customers where nam='"&username&"'"
	set usercheck=ADO.execute(selectSQL)
	
	if usercheck.EOF then
		addf()
	else
		response.write "��� �������� ����� �����.. ������ ������ ����� ���"
	end if

end function


%>

<HTML dir=rtl>

<HEAD>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
  <meta name="ProgId" content="FrontPage.Editor.Document">
  <meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<TITLE>����� ����</TITLE>

</HEAD>

<p align="center">

<strong><font face="Simplified Arabic" color="#C11111" size="7">����� ������</font></strong>
<p></P>

<%

if username = "" or pass1 = ""	or pass2 = "" then
	response.write "�� ��� ������ ��� ������"
	
else
	if pass1 <> pass2 then
		response.write "��� ������ ���� ������ �� ���� ����� ���� ������.. ������ ����� �������� ��� ����"
		
	else

		checkf()

	end if
end if

%>

<table border="0" width="100%" style="border-collapse: collapse" bordercolor="#111111" cellpadding="0" cellspacing="0">
  <tr>
    <td width="79%" valign="top">
    <form method="POST" action="register2.asp">
  <p><font face="Simplified Arabic" size="3">��� �������� <input type="text" name="username" size="25"></font></p>
  <p><font face="Simplified Arabic" size="3">���� ������ <input type="password" name="pass1" size="25"></font></p>
  <p><font face="Simplified Arabic" size="3">����� ���� ������ <input type="password" name="pass2" size="25"></font></p>
  <p><input type="submit" value="�����" name="add"></p>
</form>
</td>
  </tr>
</table>

<P>&nbsp;</P>

<%
ADO.Close 
Set ADO=Nothing
%>
<p align="center"><font face="Simplified Arabic"><b><a href="admin_page.asp">����� ������</a></b></font></p>

</font><font size="7" color="#C11111">

</BODY>

</HTML>