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
                            <h2>Edit <b>Infor</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editEmployeeModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="infor" method="post">
                            <div class="modal-header">						
                                <h4 class="modal-title">Edit Infor</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><a href="View">&times;</a></button>
                            </div>
                            <div class="modal-body">	
                                <div class="form-group">
                                    <label>UserName</label>
                                    <input value="${detail.username}" name="name" type="text" class="form-control" readonly required>
                                </div>				
                                <div class="form-group">
                                    <label>Name</label>
                                    <input value="${detail.name}" name="id" type="text" class="form-control"  required>
                                </div>


                                <div class="form-group">
                                    <label>DOB</label>
                                    <input value="${detail.dbo}" name="dbo" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Câu hỏi lấy lại mật khẩu</label>
                                    <!--<input value="${detail.qs}" type="text" class="form-control" readonly required>-->
                                    <select value="${detail.qs}" name="MTG"  class="form-control" >
                                        <!--<option>${detail.qs}</option>-->
                                        <option ${detail.qs=="Tên gọi khác của bạn?"?"selected":""}>Tên gọi khác của bạn?</option>
                                        <option ${detail.qs=="Món ăn yêu thích?"?"selected":""}>Món ăn yêu thích?</option>
                                        <option ${detail.qs=="Thú nuôi yêu thích?"?"selected":""}>Thú nuôi yêu thích?</option>
                                        <option ${detail.qs=="Màu sắc yêu thích?"?"selected":""}>Màu sắc yêu thích?</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Trả Lời</label>
                                    <input value="${detail.ans}" name="NXB" type="text" class="form-control" required>
                                </div>
                                <div class="modal-footer">
                                    <input type="submit" class="btn btn-success" value="Edit">
                                    <a class="btn btn-success" href="pass">change pass</a></br>
                                </div>
                        </form>

                    </div>
                </div>
            </div>

        </div>



        <!--        <script src="js/manager.js" type="text/javascript"></script>-->
    </body>
</html>

