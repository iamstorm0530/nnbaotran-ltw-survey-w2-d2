<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="/includes/header.html" %>

<h1>Join our email list</h1>
<p>To join our email list, enter your name and email address below.</p>

<% if (request.getAttribute("message") != null) { %>
  <p style="color:#c00;margin:10px 0 0"><%= request.getAttribute("message") %></p>
<% } %>

<form action="emailList" method="post">
  <input type="hidden" name="action" value="add">

  <label for="email">Email</label>
  <input id="email" name="email" type="email" value="${email}"><br>

  <label for="firstName">First name</label>
  <input id="firstName" name="firstName" type="text" value="${firstName}"><br>

  <label for="lastName">Last name</label>
  <input id="lastName" name="lastName" type="text" value="${lastName}"><br>

  <button id="submit" type="submit">Join Now</button>
</form>

<%@ include file="/includes/footer.jsp" %>
