
<jsp:useBean id="counter" class="bean.Counter" scope="page" />   
<%
	String countURL = request.getSession().getServletContext().getRealPath("count.txt");
	
	System.out.println("The real URL of count.txt on server is: " + countURL);
	
	String vCount = counter.readRecord(countURL);
	counter.writeRecord(countURL, vCount);
	
	//Integer visitorCount = (Integer) application.getAttribute("visitorCount");	
	/* if (visitorCount == null) {
		//visitorCount = 1;
	} else {
		//visitorCount++;
	} */
	//application.setAttribute("visitorCount", vCount);
%>
<div class="footer-text-line">
	<h5>You are the No. 
		<span class="vcounter"><%=vCount %></span> 
		visitor
	</h5>
</div>	