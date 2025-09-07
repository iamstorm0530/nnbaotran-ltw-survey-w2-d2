<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Thanks</title>
  <link rel="stylesheet" href="styles/main.css" type="text/css">
  <!-- CSS nhỏ cho phần bảng, không sửa main.css -->
  <style>
    .result-wrap { text-align: left; }
    .result-table { border-collapse: separate; border-spacing: 0 8px; margin: 12px 0 24px; margin-right: auto; }
    .result-table td { text-align: left; vertical-align: top; }
    .result-table .key { font-weight: 700; white-space: nowrap; width: 200px; padding-right: 24px; }
    .result-table .val { padding-left: 8px; }
    .center { text-align: center; }
  </style>
</head>
<body class="brg">
  <div class="form-card">
    <h1>Thanks for taking our survey!</h1>
    <p class="center">Here is the information that you entered:</p>

    <div class="result-wrap">
      <table class="result-table">
        <tr><td class="key">Email:</td>       <td class="val">${requestScope.user.email}</td></tr>
        <tr><td class="key">First Name:</td>  <td class="val">${requestScope.user.firstName}</td></tr>
        <tr><td class="key">Last Name:</td>   <td class="val">${requestScope.user.lastName}</td></tr>
      </table>

      
      <p>
        This email address was added to our list on
        ${not empty requestScope.currentDateText ? requestScope.currentDateText : requestScope.currentDate}
      </p>

      <p>
        The first address on our list is 23162105@student.hcmute.edu.vn<br>
        The second address on our list is iamstorm0530@gmail.com<br>
      </p>

      <p>For customer service, contact ${initParam.custServEmail}</p>

      <p>To enter another email address, click on the Return
        button in your browser or the Return button shown below.</p>
    </div>

    <form action="index.jsp" method="get" class="center">
      <input type="submit" value="Return" id="submit">
    </form>
  </div>
</body>
</html>
