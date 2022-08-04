<%-- 
    Document   : Detail
    Created on : Dec 29, 2020, 5:43:04 PM
    Author     : trinh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <style>
            .socials-share {
                text-align: center;
                margin-bottom: 30px;
            }

            .socials-share a {
                padding: 4px 30px;
                color: #fff;
                line-height: 2em;
                text-decoration: none;
                border-radius: 2px;
                white-space: nowrap;
                display: inline-block;
                margin-bottom: 4px;
            }

            .socials-share span.fa {
                margin-right: 3px;
            }

            .bg-facebook {
                background: #3a5899;
            }

            .bg-facebook:hover, .bg-facebook:focus {
                background: #1d418d;
            }

            .bg-twitter {
                background: #00acee;
            }

            .bg-twitter:hover, .bg-twitter:focus {
                background: #0b93c7;
            }

            .bg-google-plus {
                background: #db4437;
            }

            .bg-google-plus:hover, .bg-google-plus:focus {
                background: #bb2a1d;
            }

            .bg-pinterest {
                background: #cb1e26;
            }

            .bg-pinterest:hover, .bg-pinterest:focus {
                background: #ae0e15;
            }

            .bg-email {
                background: #dd5348;
            }

            .bg-email:hover, .bg-email:focus {
                background: #ce3f34;
            }
            .gallery-wrap .img-big-wrap img {
                height: 450px;
                width: auto;
                display: inline-block;
                cursor: zoom-in;
            }


            .gallery-wrap .img-small-wrap .item-gallery {
                width: 60px;
                height: 60px;
                border: 1px solid #ddd;
                margin: 7px 2px;
                display: inline-block;
                overflow: hidden;
            }

            .gallery-wrap .img-small-wrap {
                text-align: center;
            }
            .gallery-wrap .img-small-wrap img {
                max-width: 100%;
                max-height: 100%;
                object-fit: cover;
                border-radius: 4px;
                cursor: zoom-in;
            }
            .img-big-wrap img{
                width: 100% !important;
                height: auto !important;
            }

            .dog {
                background-image: url(https://i.pinimg.com/originals/25/95/e1/2595e124451e10fda4a61fa300af6b61.jpg);
            }

            footer {
                background: #343a40;
                padding: 40px;
                margin-top: 20px;
            }
            footer a {
                color: #f8f9fa!important
            }
            .be-comment-block {
                margin-bottom: 50px !important;
                border: 1px solid #edeff2;
                border-radius: 2px;
                padding: 50px 70px;
                border:1px solid #ffffff;
            }

            .comments-title {
                font-size: 16px;
                color: #262626;
                margin-bottom: 15px;
                font-family: 'Conv_helveticaneuecyr-bold';
            }

            .be-img-comment {
                width: 60px;
                height: 60px;
                float: left;
                margin-bottom: 15px;
            }

            .be-ava-comment {
                width: 60px;
                height: 60px;
                border-radius: 50%;
            }

            .be-comment-content {
                margin-left: 80px;
            }

            .be-comment-content span {
                display: inline-block;
                width: 49%;
                margin-bottom: 15px;
            }

            .be-comment-name {
                font-size: 13px;
                font-family: 'Conv_helveticaneuecyr-bold';
            }

            .be-comment-content a {
                color: #383b43;
            }

            .be-comment-content span {
                display: inline-block;
                width: 49%;
                margin-bottom: 15px;
            }

            .be-comment-time {
                text-align: right;
            }

            .be-comment-time {
                font-size: 11px;
                color: #b4b7c1;
            }

            .be-comment-text {
                font-size: 13px;
                line-height: 18px;
                color: #7a8192;
                display: block;
                background: #f6f6f7;
                border: 1px solid #edeff2;
                padding: 15px 20px 20px 20px;
            }

            .form-group.fl_icon .icon {
                position: absolute;
                top: 1px;
                left: 16px;
                width: 48px;
                height: 48px;
                background: #f6f6f7;
                color: #b5b8c2;
                text-align: center;
                line-height: 50px;
                -webkit-border-top-left-radius: 2px;
                -webkit-border-bottom-left-radius: 2px;
                -moz-border-radius-topleft: 2px;
                -moz-border-radius-bottomleft: 2px;
                border-top-left-radius: 2px;
                border-bottom-left-radius: 2px;
            }

            .form-group .form-input {
                font-size: 13px;
                line-height: 50px;
                font-weight: 400;
                color: #b4b7c1;
                width: 100%;
                height: 50px;
                padding-left: 20px;
                padding-right: 20px;
                border: 1px solid #edeff2;
                border-radius: 3px;
            }

            .form-group.fl_icon .form-input {
                padding-left: 70px;
            }

            .form-group textarea.form-input {
                height: 150px;
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
                            <c:if test="${sessionScope.acc.roleid==0 }">
                                <li class="nav-item">
                                    <a class="nav-link" href="manager">Manager account</a>
                                </li>
                            </c:if>
                                <li class="nav-item">
                                    <a class="nav-link" href="updateacc">Info</a>
                                </li>
                            <li class="nav-item">
                                <a class="nav-link" href="logout">Logout</a>
                            </li>
                        </ul>
                    </c:if>
                    <form action="search" method="post" class="form-inline my-2 my-lg-0">
                        <div class="input-group input-group-sm">
                            <input name="txt" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search...">
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
        <section class="jumbotron text-center dog" >
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
                    </div>
                </div>
                <div class="col-sm-9">
                    <div class="container">
                        <div class="card">
                            <c:forEach items="${listP}" var = "st">
                                <img class="card-img-top" src="img/${st.img}" alt="Card image cap"></br>
                            </c:forEach>

                        </div> <!-- row.// -->
                    </div> <!-- row.// -->
                </div> <!-- card.// -->


            </div>
        </div>


        <div class="container">
            <div class="be-comment-block">
                <h1 class="comments-title">Comments </h1>
                <c:forEach items="${listf}" var = "st">
                    <div class="be-comment">
                        <div class="be-img-comment">	

                        </div>
                        <div class="be-comment-content">

                            <span class="be-comment-name">
                                <a href="blog-detail-2.html">${st.user}</a>
                            </span>
                            <p class="be-comment-text">
                                ${st.cmt}
                                <c:if test="${sessionScope.acc.roleid==0 }"> 

                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><a href="deletecmt?u=${st.user}&cmt=${st.cmt}">&times;</a></button>

                                </c:if>
                            </p>
                        </div>
                    </div>
                </c:forEach>
                <form action ="cmt" method ="post">
                    <div class="input-field">
                        <input type="text" name="username" required>
                    </div>

                    <div class="button">
                        <div class="inner">
                        </div>
                        <button>Comment</button>
                    </div>
                </form>
            </div>
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
    </body>
</html>