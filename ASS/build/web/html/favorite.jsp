<%-- 
    Document   : favorite
    Created on : Mar 7, 2022, 7:47:41 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Favorite</title>
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
        <link href="CSS/style.css" rel="stylesheet" type="text/css"/>
        <style>
            .dog {
                background-image: url(https://i.pinimg.com/originals/25/95/e1/2595e124451e10fda4a61fa300af6b61.jpg);
            }
        </style>
    </head>
    <body>
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
                            <c:if test="${sessionScope.acc.roleid==1 }">
                                <li class="nav-item">
                                    <a class="nav-link" href="updateacc">Info</a>
                                </li>
                            </c:if>
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

                            <li class="breadcrumb-item"><a href="viewfavorite">Favorite &#128151;</a></li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <div class="container">
            <!--begin of menu-->
            <%--<jsp:include page="viewer.jsp"/>--%>
            <!--end of menu-->
            <h2>My favorite</h2>
            <c:forEach items="${listF}" var="o">
                <div class="row">
                    <div class="col-sm-4">
                        <a href="detail?mid=${o.getMaTruyen()}" class="">
                            <img class="col-sm-12" src="img/${o.img}" ></br>
                        </a>
                    </div>
                    <div class="col-sm-8">
                        <h3 class="title">${o.getTenTruyen()}</h3>
                        <p>${o.getMota()}</p>
                        <a href="dislike1?diid=${o.getMaTruyen()}" style="text-decoration: none; margin-right: 10px">
                            <span style="font-size:30px">&#128077; Liked</span>
                        </a>
                    </div>
                </div>
            </c:forEach>
        </div>
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
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

    </body>
</html>

