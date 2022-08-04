<%-- 
    Document   : uptr
    Created on : Mar 9, 2022, 9:54:05 PM
    Author     : Admin
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
                background-image: url(https://i.pinimg.com/originals/25/95/e1/2595e124451e10fda4a61fa300af6b61.jpg);
            }
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6" style="color: white">
                            <h2>Edit <b>Truyện</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editEmployeeModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="insert" method="post">
                            <div class="modal-header">						
                                <h4 class="modal-title">Edit Truyện</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><a href="View">&times;</a></button>
                            </div>
                            <div class="modal-body">					
                                <div class="form-group">
                                    <label>ID</label>
                                    <input value="${detail.getMaTruyen()}" name="id" type="text" class="form-control" readonly required>
                                </div>
                                <div class="form-group">
                                    <label>detail</label>
                                    <c:forEach var="t" items="${load}">
                                        <input name="loadim" type="text" value="${t.img}" class="form-control" required>
                                    </c:forEach>
                                    
                                </div>
                                <div class="form-group">
                                    <label>img insert</label>
                                    <input  name="myfile1" type="text" class="form-control" >
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><a href="insert?type=1&tid=${detail.getMaTruyen()}">update</a></button>
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><a href="insert?type=0&tid=${detail.getMaTruyen()}">insert</a></button>

                                </div>
                                
                            </div>
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-success" value="Edit">
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>


        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>
