<!-- import thư viện spring-form -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
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
    <title>Form Contact</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <style>
       body {
            display: flex;
            flex-direction: column;
            height: 600px;
            justify-content: center;
        }

        .container {
            background-color: rgb(141, 214, 169);
            height: 500px;
            display: flex;
            justify-content: center;
        }

        .box {
            width: 80%;
        }

        .input2 input {
            width: 90%;
            word-wrap: break-word;
            line-height: 500%;
        }


        .title {
            font-size: 40px;
            height: 70px;
            display: flex;
            align-items: center;
            border-bottom: 3px solid black;
        }

        .main {
            padding-top: 30px;
        }

        .name {
            font-size: 15px;
        }

        .form {
            padding-top: 10px;
        }

        .btn {
            margin: 0px;
            padding: 0px;

        }

        button {
            background-color: rgba(37, 35, 35, 0.794);
            color: aliceblue;
            width: 80px;
            height: 40px;
        }
    </style>
</head>

<body>
    <div class="row">
        <div class="col-xl-4 col-lg-5 col-md-5 container">
            <div class="box">
                <header>
                    <div class="title">
                        <a>Contact us</a>
                    </div>
                </header>
                <div class="main">
                    <div class="name">
                        <a>Simple contact form</a>
                    </div>
                    <!-- cách 1: đơn giản  -->
                  <%--   <div class="form">
                        <form action="${base }/contact-post" method="post">
                            <div class="item">
                                <label for="">Name</label>
                            </div>
                            <div class="input1">
                                <input type="text" class ="form-control" name="name" id="idName">
                            </div>
                            <div class="item">
                                <label for="">Email</label>
                            </div>
                            <div class="input1">
                                <input type="text">
                            </div>
                            <div class="item">
                                <label for="">Subject</label>
                            </div>
                            <div class="input1">
                                <input type="text">
                            </div>
                            <div class="item">
                                <label for="">Message</label>
                            </div>
                            <div class="input2">
                                <textarea name="" id="" cols="35" rows="4"></textarea>
                            </div>
                            <div class="btn">
                                <button type="submit">Submit</button>
                            </div>
                        </form> --%>
						<!--  cách 2: sử dụng taglib spring-form -->
						 <div class="form">
                        <sf:form modelAttribute="contactDTO" action="${base }/contact_post_using_spring_form" method="post">
                            <div class="item">
                                <label for="">Name</label>
                            </div>
                            <div class="input1">
                                <sf:input path="name" type="text" class ="form-control" name="name" id="idName"></sf:input>
                            </div>
                            <div class="item">
                                <label for="">Email</label>
                            </div>
                            <div class="input1">
                                <sf:input path="email" class ="form-control" type="text" name="email" id="idEmail"></sf:input>
                            </div>
                            <div class="item">
                                <label for="">Subject</label>
                            </div>
                            <div class="input1">
                                <sf:input path="subject" class ="form-control" type="text" name="subject" id="idSubject"></sf:input>
                            </div>
                            <div class="item">
                                <label for="">Message</label>
                            </div>
                            <div class="input2">
                                <sf:textarea path="message" class ="form-control" name="message" id="idMessage" cols="35" rows="4"></sf:textarea>
                            </div>
                            <div class="btn">
                                <button type="submit">Submit</button>
                            </div>
                        </sf:form>
                        <!-- Cách 3: sử dụng Ajax -->
                        <%-- <div class="form">
                        <form action="${base }/contact-post" method="post">
                            <div class="item">
                                <label for="">Name</label>
                            </div>
                            <div class="input1">
                                <input type="text" class ="form-control" name="name" id="idName">
                            </div>
                            <div class="item">
                                <label for="">Email</label>
                            </div>
                            <div class="input1">
                                <input class ="form-control" type="text" name="email" id="idEmail">
                            </div>
                            <div class="item">
                                <label for="">Subject</label>
                            </div>
                            <div class="input1">
                                <input class ="form-control" type="text" name="subject" id="idSubject">
                            </div>
                            <div class="item">
                                <label for="">Message</label>
                            </div>
                            <div class="input2">
                                <textarea class ="form-control" name="message" id="idMessage" cols="35" rows="4"></textarea>
                            </div>
                            <div class="btn">
                                <button type="button" onclick="PostContactUsingAjax('${Base}')">Button</button>
                            </div>
                        </form>
                    </div> --%>
                </div>
            </div>
        </div>
    </div>
	<!-- JS -->
	<jsp:include page="/WEB-INF/views/customer/layout/js.jsp"></jsp:include>
</body>

</html>