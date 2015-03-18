

<html dir=ltr>

<!--#include file="pageStyle.txt" -->
<!--#include file="connection.txt" -->

<%

keyword=request.querystring("keyword")

' search in Topic Tabllle

SelectTechSQL="select * from topics_details where topic like '%"&keyword&"%' or subject like '%"&keyword&"%' or body like '%"&keyword&"%'  "
set rsTop=ADO.execute(SelectTechSQL)


%>

<<<<<<< HEAD
<p align="center"><font face="Simplified Arabic" size="3">search resaults</font></p>
=======
