<!--#include file="pageStyle.txt" -->

 <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
 <script>
$(function() {
$( "#datepicker" ).datepicker();
$( "#datepicker1" ).datepicker();
});
</script>

<form method="post" action="search_result.asp?uid=<%=uid%>">  <!-- searchTest.asp -->
	<p align="center"><font face="@MingLiU_HKSCS-ExtB" color="#00ff00" size="+4"> Write any keyword to search </font></p>
	<img border="0" align="right" src="srch1.jpg">
	<p align="left">KeyWord To Search For: <input type="text" name="keyword" size="20"></p>
	<p>Where Do You Want To Search: 
	<p align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                 <input type= "Checkbox" unchecked name="topicS"  value="1"</p> TOPICS
	                 <input type= "Checkbox" unchecked name="subS"  value="1"</p> SUBJECTS
					 <input type= "Checkbox" unchecked name="bodS"  value="1"</p> BODY
	</P>
	<p></p>				 
	<p></p>
	<p align="left"> Date Range  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    From:<input type="Text" id="datepicker" name="sDate" size="25"> mm/dd/yyyy </p>
	<p align="left">  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                  To:<input type="Text" id="datepicker1" name="eDate" size="25"> mm/dd/yyyy </p>
	<p align="center"><input type="submit" value="search" name="B1"></p>
</form>


<!--#include file="pageEnd.txt" -->