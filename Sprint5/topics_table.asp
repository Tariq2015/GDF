
<%
     
Name_Cooky=Request.cookies("Name")
If Name_Cooky="" Then

   response.redirect ("admin.asp")

End If

%> 

<html dir=ltr>
<head>
<style type="text/css">
 .row { vertical-align: top; height:auto !important; }
 .list {display:none; }
 .show {display: none; }
 .hide:target + .show {display: inline; }
 .hide:target {display: none; }
 .hide:target ~ .list {display:inline; }
 @media print { .hide, .show { display: none; } }
 </style>
</head>

<!--#include file="connection.txt" -->

<%
function contentf()

	 
	%>
			
				<font face="Simplified Arabic" color="#0000ff"><b><%=rs1("subject")%>&nbsp;</b></font>
				
				<font dir="ltr" face="Simplified Arabic"><a href="const.asp?id=<%=rs1("id")%>"><b>Delete</b></font><!--topic_del-->
			<b>date : <font face="Bell MT" color="#ff0000"><%response.write rs1("add_dat")%></font></b>
			<b>Member: <font face="Bell MT" color="#ff0000"><%response.write rs1("customer")%></font></b>
			<b>comment : <font face="Bell MT" color="#ff0000"><%response.write rs1("body")%></font></b>
			
		<hr color="#DFDFFF" width="90%">
		
		<%
			
end function
%>
<body>
<%
selecttechSQL="select * from topics"
set rs=ADO.execute(selecttechSQL)
%>

<p align="center"><b><font face="Simplified Arabic" color="#C11111" size="7">
Topics content control</font></b></p>
<p><b><font face="Simplified Arabic">List of Topics</font></b></p>

<%
i=0
'list of topics in DB 
do while not rs.eof
i=i+1
%>

<div class="row">
 
	
		   <a href="#hide<%=i%>" class="hide" id="hide<%=i%>">+ <%=rs("topic")%></a>
           <a href="#show<%=i%>" class="show" id="show<%=i%>">- <%=rs("topic")%></a>
		
<div class="list">
<%
mTop=rs("topic")
		selectSQL="select * from topics_details where topic like '%"&mTop&"%'"
		set rs1=ADO.execute(selectSQL)
		do while not rs1.eof%>
 <ul>
 <li>
    <%contentf()%>
 </li>
 </ul>
 <%rs1.movenext
		loop
		%>
 
 </div>

<%
	rs.movenext
loop
%>
</div>



<p align="center"><font face="Simplified Arabic"><b><a href="admin_page.asp">Adminstration</a></b></font></p>

<%
ADO.close
Set ADO=Nothing
%>

</body>

</html>
