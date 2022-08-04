<%-- 
    Document   : DB
    Created on : Feb 15, 2022, 1:28:13 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="CSS/style.css" rel="stylesheet" type="text/css"/>
        <style>
            .dog {
                background-image: url(https://i.pinimg.com/originals/25/95/e1/2595e124451e10fda4a61fa300af6b61.jpg);
            }
        </style>
    </head>
    <body>
        <!--begin of menu-->
        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="View"><img src="img/biatruyen.thumb_500x.jpg" height="50px">Truyện Sân Si</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">

                    <c:if test="${sessionScope.acc == null}">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link" href="LoginControl">Sign in</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="dang_ky">Sign up</a>
                            </li>
                        </ul>
                    </c:if>
                    <c:if test="${sessionScope.acc != null}">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link" href="#">Chào, ${sessionScope.acc.name}</a>
                            </li>
                            <c:if test="${sessionScope.acc.roleid==0 }">
                                <li class="nav-item">
                                    <a class="nav-link" href="manager">Manager account</a>
                                </li>
                            </c:if>
                            <%--<c:if test="${sessionScope.acc.roleid==1 }">--%>
                                <li class="nav-item">
                                    <a class="nav-link" href="updateacc">Info</a>
                                </li>
                            <%--</c:if>--%>

                            <li class="nav-item">
                                <a class="nav-link" href="logout">Logout</a>
                            </li>
                        </ul>
                    </c:if>
                    <form action="search" method="post" class="form-inline my-2 my-lg-0">
                        <div class="input-group input-group-sm">
                            <input value="${txtS}" name="txt" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search...">
                            <div class="input-group-append">
                                <button type="submit" class="btn btn-secondary btn-number">
                                    <i class="fa fa-search"></i>
                                </button>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </nav>
        <section class="jumbotron text-center dog">
            <div class="container">
                <h1 class="jumbotron-heading" style="color: white">TRUYỆN SÂN SI</h1>
                <p class="lead text-muted mb-0">Truyện tranh giành cho trẻ vị thành niên 18+</p>
            </div>
        </section>
        <!--end of menu-->
        <div class="container">
            <div class="row">
                <div class="col">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="View">Trang chủ</a></li>
                            <li class="breadcrumb-item"><a href="flike">Favorite Like</a></li>
                                <c:if test="${sessionScope.acc.roleid==1 }"> 

                                <li class="breadcrumb-item"><a href="viewfavorite">Favorite &#128151;</a></li>
                                </c:if>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <div class="card bg-light mb-3">

                        <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-list"></i> Thể Loại</div>
                        <ul class="list-group category_block">
                            <c:forEach items="${requestScope.connection.type}" var="st">
                                <li class="list-group-item text-white"><a href="type?mtl=${st.mtl}">${st.tl}</a></li>
                                </c:forEach>

                        </ul>
                        <!--                        <a href="#" style="border: none;outline: none;background-color: blue;color: white; text-decoration: none;">Hài Hước</a>
                                                <a href="#" style="border: none;outline: none;background-color: blue;color: white; text-decoration: none;">Kinh Dị</a>
                                                <a href="#" style="border: none;outline: none;background-color: blue;color: white; text-decoration: none;">Trinh Thám</a>
                                                <a href="#" style="border: none;outline: none;background-color: blue;color: white; text-decoration: none;">Kiếm hiệp</a>-->
                        <c:if test="${sessionScope.acc.roleid==0}">
                            <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-list"></i> Insert/Update</div>
                            <div>
                                <form action="add" id='form' method ="post" >
                                    <input type='submit' value='insert/Update'>
                                    <table>
                                        <tr><td>ID Truyện</td><td><input type="text" name ='id' value=""></td></tr>
                                        <tr><td>Name</td><td><input type="text" name ='name' value=""></td></tr>
                                        <tr><td>MaTG</td><td><input type="text" name ='MTG' value=""></td></tr>
                                        <tr><td>NamXB</td><td><input type="text" name ='NXB' value=""></td></tr>
                                        <tr><td>MaNXB</td><td><input type="text" name ='MNXB' value=""></td></tr>
                                        <tr><td>Tình Trạng</td><td><input type="text" name ='TT' value=""></td></tr>
                                        <tr><td>Thể Loại</td><td><input type="text" name ='Type' value=""></td></tr>
                                        <tr><td>Mô tả</td><td><input type="text" name ='Mta' value=""></td></tr>
                                        <tr><td>img</td><td><input type="img" name ='img' value=""></td></tr>
                                        <tr><td>detail</td><td><input type="text" id="myfile" name="myfile"></td></tr>

                                    </table>
                                </form>


                            </div>
                        </c:if>
                    </div>
                </div>

                <div class="col-sm-9">
                    <div class="row">
                        <c:forEach items="${listP}" var = "st"
                                   begin="${pageStart}" end="${pageEnd}">
                            <div class="col-12 col-md-6 col-lg-4">
                                <div class="card">
                                    <img class="card-img-top" src="img/${st.img}" alt="Card image cap" style="height: 350px;">
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="detail?mid=${st.getMaTruyen()}" title="View Product">${st.getTenTruyen()}</a></h4>
                                        <p class="card-text show_txt">${st.getMota()}</p>
                                        <c:if test="${sessionScope.acc.roleid==1 }">
                                            <c:if test="${requestScope.likeDAO.checkLike(sessionScope.acc.username, st.getMaTruyen()) == false}">
                                                <a href="like?aid=${st.getMaTruyen()}" style="text-decoration: none; margin-right: 10px">
                                                <span style="font-size:30px">&#128077; Like</span>
                                                </a>
                                            </c:if>
                                            <c:if test="${requestScope.likeDAO.checkLike(sessionScope.acc.username, st.getMaTruyen()) == true}">
                                                <a href="dislike?did=${st.getMaTruyen()}" style="text-decoration: none; margin-right: 10px">
                                                <span style="font-size:30px">&#128077; Liked</span>
                                                </a>
                                            </c:if>
                                        </c:if>

                                        <c:if test="${sessionScope.acc.roleid ==0}">
                                            <div class="row">
                                                <div class="col">
                                                    <a href="Modify?type=0&id=${st.getMaTruyen()}" class="btn btn-danger btn-block">Delete</a>
                                                </div>
                                                <div class="col">
                                                    <a href="edit?id=${st.getMaTruyen()}" class="btn btn-success btn-block">Update</a>
                                                </div>
                                            </div>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
        <table>
            <div style="text-align: right; margin: 50px;">
                <c:if test="${pre eq true}">
                    <span><a href="View?page=${1}&nrip=${nrip}" title="trang dau" class="previous round">&#8249; home</a></span>
                    <span><a href="View?page=${requestScope.p-1}&nrip=${nrip}" title="truoc" class="previous">&laquo; pre</a></span>
                </c:if>
                <c:forEach var = "i" begin ="${btnStart}" end ="${btnEnd}">
                    <span> <a
                            <c:if test="${requestScope.p eq i}">
                                style ='color: red' 
                            </c:if>
                            href="View?page=${i}&nrip=${nrip}">${i}</a></span>
                    </c:forEach>
                    <c:if test="${next eq true}">
                    <span><a href="View?page=${requestScope.p+1}&nrip=${nrip}" title="tiep" class="next">next &raquo;</a></span>
                    <span><a href="View?page=${totalPage}&nrip=${nrip}" title="trang cuoi" class="next round">&#8250; End</a></span>

                </c:if>
            </div>
        </table>

        <!-- Footer -->
        <footer class="text-light">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-lg-4 col-xl-3">
                        <h5>About</h5>
                        <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                        <p class="mb-0">
                            Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression.
                        </p>
                    </div>

                    <div class="col-md-2 col-lg-2 col-xl-2 mx-auto">
                        <h5>Informations</h5>
                        <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                        <ul class="list-unstyled">
                            <li>Email : haimh0978@gmail.com</li>
                            <li>Phone: 0972223571</li>
                            <li>Address: 259 Phú Diễn Bắc Từ Liêm Hà Nội</li>
                        </ul>
                    </div>

                    <div class="col-md-4 col-lg-3 col-xl-3">
                        <h5>Contact</h5>
                        <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                        <ul class="list-unstyled">
                            <li><i class="fa fa-home mr-2"></i> My company</li>
                            <li><i class="fa fa-envelope mr-2"></i> haimh0978@gmail.com</li>
                            <li><i class="fa fa-phone mr-2"></i> 0972223571</li>
                            <li><i class="fa fa-print mr-2"></i> 0972223571</li>
                        </ul>
                    </div>
                    <div class="col-12 copyright mt-3">
                        <p class="float-left">
                            <a href="#">Back to top</a>
                        </p>
                    </div>
                </div>
            </div>
        </footer>
    </body>
</html>
