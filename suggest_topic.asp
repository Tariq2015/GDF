
<!--#include file="pageStyle.txt" -->
<!--#include file="connection.txt" -->

<%
  topic=request.form("topic")
  def=request.form("def")
%>

<form method="POST" action="suggest_topic.asp">
	<p align="center"><font face="@MingLiU_HKSCS-ExtB" color="#800080" size="+2"> 
	                  Here customers can suggest any topic, and this topic will be in the website after adminstratior comfirmation </font></p>
	<p align="left">
	Topic You Like To Add: <input type="text" name="topic" size="20"></p>
	
	<p>Give Small Definition for this topic:</p>
	<p><textarea rows="5" name="def" cols="25"></textarea></p>  
	<p align="center"><input type="submit" value="Add Suggest" name="B1"></p>
</form>
<%
If topic="" or  def=""  then
     response.write "Not all fields are fulled .. use back button to return back "
Else
	    addSQL= " insert into topics_suggest (topic,definition) values ('"&topic&"','"&def&"')"
		ADO.execute(addSQL)
		%><p><font face="Arial" size="4" color="#008000">Thank you for your suggestion .. suggest added</font></p><%
End If
%>
<%
ADO.close
Set ADO=Nothing
%>

<!--#include file="pageEnd.txt" -->