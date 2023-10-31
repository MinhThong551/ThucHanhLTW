<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--
  Created by IntelliJ IDEA.
  User: asus
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <link href=" https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.css" rel="stylesheet">

    <link rel="stylesheet" href="<c:url value="/static/css/main.css"/>">
    <meta charset="UTF-8">
    <title>Task3</title>
</head>
<body>

<div class="container">
    <form>
        <div class="main">


            <h1> Sign In</h1>
            <div class="inputOne">
                <div class="inputEmail">
                    <input type="text" id="fEmail" name="fEmail" placeholder="Username or Email">

                </div>
                <p class="error" id="fEmail_error"></p>
            </div>
            <div class="inputTwo">
                <div class="inputPassword">
                    <input type="password" id="fPassword" name="fPassword" placeholder="Password">

                </div>
                <p class="error" id="fPassword_error"></p>
            </div>


            <div class="inputThree">
                <div class="inputSubmit">
                    <input type="submit" id="fSubmit" name="fSubmit" value="SIGN IN" >
                </div>
            </div>
            <div class="paragraph">
                <p>Or login with</p>
            </div>
            <div class="icon">
                <div class="circleF"> <i class="fa-brands fa-facebook-f fa-2xl"></i></div>
                <div class="circleG"> <i class="fa-brands fa-google fa-2xl"></i></div>

            </div>
            <div class="signUp">
                <a id="sign" style="text-decoration: none" href="">Sign Up</a>
            </div>
        </div>
    </form>

</div>

</body>
<script>
    var username = document.getElementById("fEmail");
    var password = document.getElementById("fPassword");
    function validateUsername() {
        var text = username.value;
        var error = document.getElementById("fEmail_error");
        if(text == null || text.length == 0) {
            error.textContent = "Please sign in by username or email.";
            error.style.display = "block";
            return false;
        } else if(!text.includes("@gmail.com") && text.length < 6) {
            error.textContent = "Username must be > 6 characters.";
            error.style.display = "block";
            return false;
        } else if(text.includes("@gmail.com") && text.length < 10) {
            error.textContent = "Email must be valid (***@gmail.com)."
            error.style.display = "block";
            return false;
        } else {
            error.style.display = "none";
            alert(text.length);
            return true;
        }
    }

    function  validatePass() {
        var text = password.value;
        var error = document.getElementById("fPassword_error");
        if(text.length == 0 || text == null) {
            error.textContent = "Please fill in password";
            error.style.display = "block";
            return false;
        } else {
            error.style.display = "none";
            return true;
        }
    }
    username.addEventListener("blur", validateUsername);
    password.addEventListener("blur", validatePass);

    var signIn = document.getElementById("fSubmit");
    signIn.addEventListener("click",function (event) {
        if(validatePass() && validateUsername()) {
            alert("login success");
        } else {
            event.preventDefault();
            validateUsername();
            validatePass();
        }
    })
</script>
</html>
