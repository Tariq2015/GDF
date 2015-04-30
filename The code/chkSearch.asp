<%
	key=request.form("keyword")
	chkT=request.form("topicS")
	chkS=request.form("subS")
	chkB=request.form("bodS")
	d1=request.form("sDate")
	d1=request.form("eDate")
	
	
	if key = "" then response.redirect("search.asp?error=emptyKey")
	else
	    if chkT="" and chkS="" and chkB="" then response.redirect("search.asp?error=must1")
		else
			if isDate(d1) and isDate(d2) then 
			     response.redirect("search_result.asp") 
			else 
			     response.redirect("search.asp?error=wrongDate")
			end if
		end if	
	end if
%>
