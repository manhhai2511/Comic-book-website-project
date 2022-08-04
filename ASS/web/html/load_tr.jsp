<%-- 
    Document   : load_tr
    Created on : Feb 24, 2022, 11:10:39 AM
    Author     : Admin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>

            <c:forEach items="${requestScope.connection.im}" var = "st">
                <a href="">${st.img}</a><br/><br>
            </c:forEach>

        </table>
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
    </body>
</html>
