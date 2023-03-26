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
    <link rel="stylesheet" href="${base }css/login.css">
    <!-- <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"> -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" />
    <title>Form login</title>
</head>
<body>
    <div id="wrapper">
        <form method="POST" action="/login_processing_url" id="form-login">
        <!-- kiểm tra xem đã login thành công hay không, bằng cách kiểm tra request param login_error -->
				<c:if test="${not empty param.login_error}">
					<div class="alert alert-danger" role="alert" style="color:red">
							Login attempt was not successful, try again!!!
					</div>
				</c:if>
            <h1 class="form-heading">Form Login</h1>
            <div class="form-group">
                <i class="fa-solid fa-user"></i>
                <input type="text" class="form-input" placeholder="Username" name= "username" id="idUsername">
            </div>
            <div class="form-group">
                <i class="fas fa-key"></i>
                <input type="password" class="form-input" placeholder="Password" name="password" id="idPassword">
                <div id="eye">
                    <i class="far fa-eye"></i>
                </div>
            </div>
            <div class="form-group" style="border: none">
            	<input type="checkbox" name="remember-me"><a style="color: #ffffff;">Remember me</a>
            </div>
            <input type="submit" value="Login" class="form-submit">
            <!-- <button type="submit" class="submit"><a href="admin.html">ÄÄng nháº­p</a></button> -->
            <div class="registry">
                <a href="${base }/registry">Registry</a>
            </div>
        </form>
    </div>
    
</body>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="${base }js/login.js"></script>
</html>