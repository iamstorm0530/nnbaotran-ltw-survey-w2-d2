<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");

String email = nvl(request.getParameter("email"));
String firstName = nvl(request.getParameter("firstName"));
String lastName = nvl(request.getParameter("lastName"));
String ref = nvl(request.getParameter("ref"));
String otherText = nvl(request.getParameter("otherText"));
if ("Other".equalsIgnoreCase(ref) && otherText.length() > 0)
	ref = otherText;

String updates = (request.getParameter("updates") != null) ? "Yes" : "No";
String contact = nvl(request.getParameter("contact"));

// helper
%>
<%!private String nvl(String s) {
		return (s == null) ? "" : s.trim();
	}%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Survey Result</title>
<link rel="stylesheet" href="styles/main.css" type="text/css">

<!-- CSS nhỏ để canh hàng, không ảnh hưởng main.css -->
<style>
.result-table {
	margin: 12px 0 24px 0;
	border-collapse: separate;
	border-spacing: 0 10px;
}

.result-table .key {
	font-weight: 700; /* in đậm */
	text-align: right; /* canh phải cột nhãn */
	white-space: nowrap; /* không xuống dòng nhãn */
	padding-right: 24px;
	min-width: 180px; /* cố định chiều rộng để các dấu ":" thẳng hàng */
}

.result-table .val {
	padding-left: 8px;
}

.center {
	text-align: center;
}
</style>
</head>
<body class="brg">
	<div class="form-card">
		<h1>Thanks for taking our survey!</h1>
		<p>Here is the information that you entered:</p>

<table class="result-table">
  <tr><td class="key">Email:</td>       <td class="val"><%= email %></td></tr>
  <tr><td class="key">First Name:</td>  <td class="val"><%= firstName %></td></tr>
  <tr><td class="key">Last Name:</td>   <td class="val"><%= lastName %></td></tr>
  <tr><td class="key">Heard From:</td>  <td class="val"><%= ref %></td></tr>
  <tr><td class="key">Updates:</td>     <td class="val"><%= updates %></td></tr>
  <tr><td class="key">Contact Via:</td> <td class="val"><%= contact %></td></tr>
</table>
		


		<div class="center">
			<form action="index.jsp" method="get">
				<input type="submit" value="Return" id="submit">
			</form>
		</div>
	</div>
</body>
</html>
