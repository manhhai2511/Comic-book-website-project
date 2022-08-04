<%-- 
    Document   : forgot
    Created on : Mar 11, 2022, 3:54:43 PM
    Author     : Admin
--%>

<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <style>
        @import url(https://fonts.googleapis.com/css?family=Dosis:300|Lato:300,400,600,700|Roboto+Condensed:300,700|Open+Sans+Condensed:300,600|Open+Sans:400,300,600,700|Maven+Pro:400,700);
        @import url("https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css");
        html{
            background-image: url("https://i.pinimg.com/originals/25/95/e1/2595e124451e10fda4a61fa300af6b61.jpg");
        }

        body {
            font-family: "Open Sans";
            font-size: 16px;
            color: White;
            font-smoothing: antialiased;
            font-weight: 600;
        }

        a {
            color: #BBB;
        }

        .content:before {
            left: 0;
            right: 0;
            top: 0;
            bottom: 0;
            z-index: -1;
            display: block;
            background-color: black;
            background-image: url("https://i.pinimg.com/originals/25/95/e1/2595e124451e10fda4a61fa300af6b61.jpg");
            width: 100%;
            height: 100%;
            background-size: 100% 100%;
            -webkit-filter: blur(2px);
            -moz-filter: blur(2px);
            -o-filter: blur(2px);
            -ms-filter: blur(2px);
            filter: blur(2px);
        }

        .content {
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            width: 540px;
            height: 540px;
            background-color: rgba(10, 10, 10, 0.5);
            margin: auto auto;
            padding: 40px;
            -moz-border-radius: 4px;
            -webkit-border-radius: 4px;
            border-radius: 4px;
            -moz-box-shadow: 0 0 10px black;
            -webkit-box-shadow: 0 0 10px black;
            box-shadow: 0 0 10px black;
        }
        .content .title {
            text-align: center;
            font-size: 2.0rem;
            font-weight: 600;
            margin-top: 10%;
        }
        form{
            margin-top: 10%;
        }
        .content input {
            width: 100%;
            margin-top: 5%;
            font-size: 1.2rem;
            font-family: "Open Sans";
            margin: 10px 0px;
            border: none;
            padding: 10px;
            -moz-border-radius: 4px;
            -webkit-border-radius: 4px;
            border-radius: 4px;
        }
        .content input[type=checkbox] {
            display: none;
        }
        .content label {
            margin-left: 5px;
            margin-right: 10px;
            top: 5px;
        }
        .content label:before {
            width: 20px;
            height: 20px;
            -moz-border-radius: 3px;
            -webkit-border-radius: 3px;
            border-radius: 3px;
            position: absolute;
            left: 0;
            bottom: 1px;
            background-color: #aaa;
            -moz-box-shadow: inset 0px 2px 3px 0px rgba(0, 0, 0, 0.3), 0px 1px 0px 0px rgba(255, 255, 255, 0.8);
            -webkit-box-shadow: inset 0px 2px 3px 0px rgba(0, 0, 0, 0.3), 0px 1px 0px 0px rgba(255, 255, 255, 0.8);
            box-shadow: inset 0px 2px 3px 0px rgba(0, 0, 0, 0.3), 0px 1px 0px 0px rgba(255, 255, 255, 0.8);
        }
        .content input[type=checkbox]:checked + label:before {
            text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.2);
            font-size: 20px;
            color: Black;
            text-align: center;
            line-height: 20px;
        }
        .content select[type=checkbox]:checked + label:before {
            text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.2);
            font-size: 20px;
            color: Black;
            text-align: center;
            line-height: 20px;
        }
        .content span {
            font-size: 0.9rem;
        }
        .content button {
            margin-left: 25%;
            margin-top: 5%;
            font-size: 1.1rem;
            padding: 10px;
            background-color: #66A756;
            color: White;
            border: none;
            -moz-border-radius: 4px;
            -webkit-border-radius: 4px;
            border-radius: 4px;
        }

        .content .social {
            width: 100%;
            position: relative;
            overflow: hidden;
            text-align: center;
        }
        .content .social span {
            display: inline-block;
            vertical-align: baseline;
            padding: 0 20px;
        }
        .content .social span:before, .content .social span:after {
            content: '';
            display: block;
            width: 500px;
            position: absolute;
            top: 0.9em;
            border-top: 1px solid White;
        }
        .content .social span:before {
            right: 75%;
        }
        .content .social span:after {
            left: 75%;
        }
        .content .already {
            text-align: center;
            font-size: 0.9rem;
        }
        .form-control {
            width: 100%;
            font-size: 1.2rem;
            font-family: "Open Sans";
            border: none;
            padding: 10px;
            -moz-border-radius: 4px;
            -webkit-border-radius: 4px;
            border-radius: 4px;
            border-radius: 2px;
            box-shadow: none;
            border-color: #dddddd;
        }
    </style>
    <body>
        <div class="content">
            <div class="title">Forgot Password</div>
            <form action ="forgot" method ="post">
                <label>Username </label>    
                <input type="text"  name="username"/></br>
                <label>Câu hỏi để đặt lại mật khẩu: </label></br>
                <select  name ="q" id ="q" class="form-control">
                    <option >Tên gọi khác của bạn?</option>
                    <option >Món ăn yêu thích?</option>
                    <option >Thú nuôi yêu thích?</option>
                    <option >Màu sắc yêu thích?</option>
                </select></br>
                <label>Câu trả lời: </label>
                <input type="text" name="tl"/></br>
                <div class="button">
                    <button>Accept</button>
                    <button><a href="View">Cancel</a></button>

                </div>
            </form>
            <div style="color: red">${requestScope.errorLogin}</div>

            <div class="already">Already have an account? <a href="http://localhost:8080/ASS/LoginControl">Sign In</a></div>
        </div>
    </body>
</html>
