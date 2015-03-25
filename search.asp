
<!--#include file="pageStyle.txt" -->


<form method="post" action="search_result.asp">  <!-- searchTest.asp -->
	<p align="center"><font face="@MingLiU_HKSCS-ExtB" color="#00ff00" size="+4"> Write any keyword to search </font></p>
	<p align="left">KeyWord To Search For: <input type="text" name="keyword" size="20"></p>
	<p><b>Where Do You Want To Search: 
	<p align="left"> <input type= "Checkbox" checked name="topicS"  value="1"</p> TOPICS
	                 <input type= "Checkbox" checked name="subS"  value="1"</p> SUBJECTS
					 <input type= "Checkbox" checked name="bodS"  value="1"</p> BODY
	<p align="center"><input type="submit" value="search" name="B1"></p>
</form>
<% response.write (request.form) %>

<!--#include file="pageEnd.txt" -->