<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <title>Subscribe</title>
    <style>
        .email .item a{
            padding-left: 350px;
        }
        .email .input-item input{
            width: 500px;
            line-height: 30px;
            
        }
        .email .input-item{
            position: relative;
            width: 500px;
            margin: auto;

        }
        .email .input-item button{
            position: absolute;
            right: -5px;
            bottom: 5px;
            line-height: 20px;
        }
    </style>
</head>
<body>
	<%-- <jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include> --%>
    <div class="title">
        <h2 style="text-align: center;">Subscribe to get exclusive updates</h2>
    </div>
    <form action="${base }/subscribe-post" method="post">
        <div class="email">
            <div class="item">
                <label for=""><a>Email*</a></label>
            </div>
            <div class="input-item">
                <input type="email" name="email" id="idEmail" value="e.g., emaill@example.com" maxlength="40">
                <button type="button" onclick="PostSubscribeUsingAjax('${Base}')"><a>Join Our Mailing List</a></button>
            </div>
        </div>
    </form>
    <div class="sub" style="text-align: center; font-size: 15px;"><a>Thanks for subscribing!</a></div>
    <jsp:include page="/WEB-INF/views/customer/layout/subscribeJs.jsp"></jsp:include>
</body>
</html>