<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Thank You</title>
<link rel="stylesheet" href="styles/main.css" type="text/css">
</head>
<body class="brg">
	<div class="form-card">
		<img class="logo" src="images/murach_logo.jpg" alt="Murach Books"
			width="100" height="100">
		<h1>Thank You!</h1>
		<p>We’ve received your information successfully. Here’s what you
			submitted:</p>

		<h2>Your Details:</h2>
		<ul class="user-info">
			<li><strong>Name:</strong> ${user.firstName} ${user.lastName}</li>
			<li><strong>Email:</strong> ${user.email}</li>
			<c:if test="${not empty user.dateOfBirth}">
				<li><strong>Date of Birth:</strong> ${user.dateOfBirth}</li>
			</c:if>
		</ul>

		<h2>How did you hear about us?</h2>
		<p>
			<c:choose>
				<c:otherwise>
          ${param.ref}
        </c:otherwise>
				<c:when test="${param.ref eq 'Other'}">
          ${param.otherText}
        </c:when>
			</c:choose>
		</p>

		<h2>Announcements:</h2>
		<ul class="user-info">
			<li><c:if test="${param.wantOffers eq 'yes'}">✔ Receive special offers</c:if></li>
			<li><c:if test="${param.wantEmail eq 'yes'}">✔ Receive email announcements</c:if></li>
			<li><strong>Preferred Contact:</strong> ${param.contact}</li>
		</ul>

		<a href="index.html" class="back-link">← Back to Form</a>
	</div>
</body>
</html>
