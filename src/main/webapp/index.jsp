<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Murach's Java Servlets and JSP</title>
  <link rel="stylesheet" href="styles/main.css" type="text/css">
</head>
<body class="brg">
  <div class="form-card">
    <h1>Join our email list</h1>
    <p>To join our email list, enter your name and email address below.</p>

    <form action="survey.jsp" method="post">
      <h2>Your Information:</h2>
      
      <label>Email:</label>
      <input type="email" name="email" required
             oninvalid="this.setCustomValidity('Please enter a valid Email.')"
             oninput="this.setCustomValidity('')"><br>

      <label>First Name:</label>
      <input type="text" name="firstName" required
             oninvalid="this.setCustomValidity('Please enter your First Name.')"
             oninput="this.setCustomValidity('')"><br>

      <label>Last Name:</label>
      <input type="text" name="lastName" required
             oninvalid="this.setCustomValidity('Please enter your Last Name.')"
             oninput="this.setCustomValidity('')"><br>


      <h2>How did you hear about us?</h2>
      <div class="options">
        <label><input type="radio" name="ref" value="Search Engine" onclick="toggleOther(false)" required> Search engine</label>
        <label><input type="radio" name="ref" value="Word of mouth" onclick="toggleOther(false)"> Word of mouth</label>
        <label><input type="radio" name="ref" value="Social Media" onclick="toggleOther(false)"> Social Media</label>
        <label><input type="radio" name="ref" value="Other" onclick="toggleOther(true)"> Other</label>
      </div>

      <div id="otherInput" style="display:none; margin-top: 8px;">
        <label>Please specify:</label>
        <input type="text" name="otherText" placeholder="Please specify...">
      </div>

      <h2>Want Updates?</h2>
      <div class="options">
        <label><input type="checkbox" name="updates" value="yes"> YES, I'd like that.</label><br>
      </div>

      <label for="contact" class="label-wide">Please contact me by:</label>
      <select id="contact" name="contact">
        <option value="Email">Email</option>
        <option value="Postal Mail">Postal mail</option>
        <option value="Email or Postal Mail">Email or postal mail</option>
      </select><br>

      <input type="submit" value="Submit" id="submit">
    </form>
  </div>

  <script>
    function toggleOther(show) {
      var otherInput = document.querySelector('input[name="otherText"]');
      document.getElementById("otherInput").style.display = show ? "block" : "none";
      if (otherInput) otherInput.required = show;
    }
  </script>
</body>
</html>
