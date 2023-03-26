<!-- import thư viện spring-form -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- import JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${Base }/css/registry.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" />
    <title>Create Account</title>
</head>
<body>
    <div id="wrapper">
        <sf:form modelAttribute="registryDTO" action="${base }/registry_post_using_spring_form" method="post" id="form-registry">
            <h1 class="form-heading">Create Account</h1>
            <div class="form-group">
                <i class="fa-solid fa-user"></i>
                <sf:input type="text" class="form-input" placeholder="Username" id="username" name="username" path="username"></sf:input>
                <small></small>
                <span></span>
            </div>
            <div class="form-group">
                <i class="fa-sharp fa-solid fa-envelope"></i>
                <sf:input type="text" class="form-input" placeholder="Email" id="email" name="email" path="email"></sf:input>
                <small></small>
                <span></span>
            </div>
            <div class="form-group">
                <i class="fas fa-key"></i>
                <sf:input type="password" class="form-input" placeholder="Password" id="password" path="password"
                    pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$"
                    title="Please include at least 1 uppercase character, 1 lowercase character, and 1 number."></sf:input>
                <small></small>
                <span></span>
            </div>
            <div class="form-group">
                <i class="fas fa-key"></i>
                <input type="password" class="form-input" placeholder="Confirm Password" id="confirm-password"
                    pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$">
                <small></small>
                <span></span>
            </div>
            <input type="submit" value="Registry" class="form-submit" id="mysubmit">
            <div class="login">
                <a href="${base }/login">Login</a>
            </div>
        </sf:form>
    </div>

</body>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="${Base }/js/registry.js"></script>
</html>