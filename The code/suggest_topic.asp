
<!--#include file="pageStyle.txt" -->


<%
  uid = Request.querystring("uid")
  topic=request.form("topic")
  def=request.form("def")
  u_vote=request.form("u_vote")
  if uid <>"" then 
  selectUser="select * from customers where id="&uid 
  set rs=ADO.execute(selectUser)
  name=rs("nam")
  response.write(name) 
  response.write(u_vote)
%>

<form method="POST" action="suggest_topic.asp?uid=<%=uid%>">
	<p align="center"><font face="@MingLiU_HKSCS-ExtB" color="#800080" size="+2"> 
	                  Here customers can suggest any topic, and this topic will be in the website after adminstratior comfirmation 
					  </font></p>
	<p align="left">
	Topic You Like To Add: <input type="text" name="topic" size="20"></p>
	
	<p>Give Small Definition for this topic:</p>
	<p><textarea rows="5" name="def" cols="25"></textarea></p>  
	<p align="center"><input type="submit" value="Add Suggest" name="B1"></p>
</form>
<div  style="top: 310; right: 50; position: absolute; z-index: 1;  visibility: show;  ">
	 <p>
<form method="POST" action="suggest_topic.asp?uid=<%=uid%>"><!--const-->
	<p align="center"><font face="@MingLiU_HKSCS-ExtB" color="#ff0000" size="+2"> 
	                  Customers can vote on any suggested topic once </font></p>
	
	<p><b>Topics You Like To Vote: </p></b>
	<p align="center"><b><select size="5" name="u_vote">
	<%selectTopSug= " select * from topics_suggest"
		set rsSu=ADO.execute(selectTopSug)
		do while not rsSu.eof%>
  <option><%=rsSu("topic")%></option>
  <%rsSu.movenext
	   loop %>
  </select></b></p>
	 
	<p align="center"><input type="submit" value="Vote" name="B2"></p>
</form>
</p>
</div>
<%
If topic="" or  def=""  then
     response.write "Not all fields are fulled .. use back button to return back "
Else
	    selectTop= " select * from topics where topic='"&topic&"'"
		set rsT=ADO.execute(selectTop)
		if rsT.eof then 
			selectTop= " select * from topics_suggest where topic='"&topic&"'"
			set rsT=ADO.execute(selectTop)
			a=0
			if rsT.eof then 
				addSQL= " insert into topics_suggest (topic,definition,customer,voteNo) values ('"&topic&"','"&def&"','"&name&"',"&a&")"
				ADO.execute(addSQL)
				selectTop1= " select * from topics_suggest where topic='"&topic&"'"
			    set rsT1=ADO.execute(selectTop1)
			    addVot1= " insert into vote (user_id,sug_top_id) values ("&uid&","&rsT1("id")&")"
	            ADO.execute(addVot1)
				%><p><font face="Arial" size="4" color="#008000">Thank you for your suggestion .. suggest added</font></p><%
		    else 
				response.write("This suggestion already in suggested topics ...wait for admin approval")
			end if
		else
		    response.write("This suggestion already in topics")
		end if
		
End If
%>
<%
if u_vote<>"" then
  selectSS="select * from topics_suggest where topic='"&u_vote&"'"
  set rsSS=ADO.execute(selectSS)
  stId=rsSS("id")
  selectVot="select * from vote where user_id="&uid&" and sug_top_id="&stId  
  set rsV=ADO.execute(selectVot)
  if rsV.eof then
	 addVot= " insert into vote (user_id,sug_top_id) values ("&uid&","&rsSS("id")&")"
	 ADO.execute(addVot)
			    %><p><font face="Arial" size="4" color="#008000">your vote have been countered .... </font></p><%
     newV=rsSS("voteNo")+1
	 updateSug= " update topics_suggest set voteNo = "&newV&"  where topic='"&u_vote&"'" 
	 ADO.execute(updateSug)
  else 
  response.write("||.....................................Sorry you vote on this topic .. you can try another")
  end if
  

end if
ADO.close
Set ADO=Nothing
else 
   response.write("you should be registered user to be able to suggest topic")
end if
%>

<!--#include file="pageEnd.txt" -->