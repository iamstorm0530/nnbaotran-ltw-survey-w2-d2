<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="/includes/header.html" %>

<h1>Thanks for joining our email list!</h1>
<p>Here is the information that you entered:</p>
<ul class="user-info">
  <li><strong>Email:</strong> ${email}</li>
  <li><strong>First Name:</strong> ${firstName}</li>
  <li><strong>Last Name:</strong> ${lastName}</li>
</ul>
<p>To enter another email address, click on the Back button in your browser or the Return button shown below.</p>
<form action="emailList" method="post" style="margin-top:10px">
  <button id="submit" type="submit">Return</button>
</form>

<%@ include file="/includes/footer.jsp" %>
