<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Form Processing</title>
</head>
<body>
  <h3>Parameter values:</h3>
  <%
	// Get the value of the parameter 'userName'
    String userName = request.getParameter("userName");
    String password = request.getParameter("password");
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String gender = request.getParameter("gender");
    
 	// Get the list values of parameter 'address'
    String[] addresses = request.getParameterValues("address");      
  
  %>
  
  Pseudo: <%=userName %> <br>
  Mot de passe: <%=password %> <br>
  Prénom: <%=firstName %> <br>
  Nom: <%=lastName %> <br>
  
  Genre: <%=gender %> <br>
  
  <% if (addresses!= null)  {
       for(String address: addresses)  {
      %>
 
     Adresse: <%=address %> <br>
  
  <% } } %>
  
</body>
</html>