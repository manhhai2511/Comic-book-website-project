<%-- 
    Document   : ManagerProduct
    Created on : Dec 28, 2020, 5:19:02 PM
    Author     : trinh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap CRUD Data Table for Database with Modal Form</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            body{
                background-image: url("https://i.pinimg.com/originals/25/95/e1/2595e124451e10fda4a61fa300af6b61.jpg");
            }
            form{
                background-color: white;
            }
            .table-wrapper{
                margin-top: 10%;
                background-color: white;

            }
        </style>

    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Manage <b>Account</b></h2>
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>
                            </th>
                            <th>User Name</th>
                            <th>Name</th>
                            <th>DOB</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${list}" var="o">
                            <tr>
                                <td>
                                </td>
                                <td>${o.username}</td>
                                <td>
                                    ${o.name}
                                </td>
                                <td>${o.dbo}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

            </div>
            <a href="View"><button type="button" class="btn btn-primary">Back to home</button>

        </div>
    </body>
</html>
