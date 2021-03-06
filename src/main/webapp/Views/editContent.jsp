
<body>
	<%@ page import="model.ContentModel" %>
	<%@ page import="dao.ContentDAO" %>
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.print(id);
		ContentModel content = ContentDAO.getContentById(id);
		System.out.println("from jsp: " + content.getTitle());
		
		
	%>
	<div class = "test">
		<div class = "p-4 myAddForm myFrame">
	        <h1>Edit Content</h1>
	        <hr />
	        <div class="border rounded">
		    	<h5 class = "bg-light p-2 mb-0 px-4 border-0 border-bottom">Profile Form Element</h5>
		        <form class="px-4 py-2" action = "EditContentController" method = "post">
		            <input type="hidden" readonly name = "id" aria-describedby="basic-addon1" value ="<%=content.getId()%>">
		            <div class = "formInput">
		                <label class = "mb-2">Title</label>
		                <input name = "title" type="text" pattern=".{10,200}" title="10 to 200 characters" maxlength="50" required class="form-control myInput" placeholder="Enter the title" aria-describedby="basic-addon1" value="<%=content.getTitle()%>">
		            </div>
		
		            <div class = "formInput">
		                <label class = "mb-2">Brief</label>
		                <textarea name = "brief" minlength="30" maxlength="150" required class="form-control myInput" id="exampleFormControlTextarea1" rows="2"><%=content.getBrief() %></textarea>
		            </div>
		
		            <div class = "formInput">
		                <label class = "mb-2">Content</label>
		                <textarea name = "content" minlength="50" maxlength="1000" required class="form-control myInput" id="exampleFormControlTextarea1" rows="4"><%=content.getContent() %></textarea>
		            </div>
		
		            <div class = "mt-2 myFrame">
		                <input class = "myBtn" type = "submit" value = "Submit Button"/>
		                <a class = "myBtn text-decoration-none" href="editContent.tiles?id=<%=id%>"> Reset Button</a>
		            </div>
	        	</form>
	        </div>
    	</div>
	</div>
</body>
