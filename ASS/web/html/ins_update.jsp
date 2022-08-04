<%-- 
    Document   : ins_update
    Created on : Feb 22, 2022, 2:21:15 PM
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
        <h1>Hello World!</h1>
        <div>
            <form id='form' method ="post" action="Modify">
            <input type='submit' value='insert/Update'>
            <table>
                <c:if test="${requestScope.updateTr eq null}">
                <tr><td>ID Truyện</td><td><input type="text" name ='id' value=""></td></tr>
                <tr><td>Name</td><td><input type="text" name ='name' value=""></td></tr>
                <tr><td>MaTG</td><td><input type="text" name ='MTG' value=""></td></tr>
                <tr><td>NamXB</td><td><input type="text" name ='NXB' value=""></td></tr>
                <tr><td>MaNXB</td><td><input type="text" name ='MNXB' value=""></td></tr>
                <tr><td>Tình Trạng</td><td><input type="text" name ='TT' value=""></td></tr>
                <tr><td>Thể Loại</td><td><input type="text" name ='Type' value=""></td></tr>
                <tr><td>Mô tả</td><td><input type="text" name ='Mta' value=""></td></tr>
                <tr><td>img</td><td><input type="text" name ='img' value=""></td></tr>
                </c:if>
                <c:if test="${requestScope.updateTr ne null}">
                <tr><td>ID Truyện</td><td><input type="text" name ='id' value="${connection.updateTr.getMaTruyen()}"></td></tr>
                <tr><td>Name</td><td><input type="text" name ='name' value="${connection.updateTr.getTenTruyen()}"></td></tr>
                <tr><td>MaTG</td><td><input type="text" name ='MTG' value="${connection.updateTr.getMaTG()}"></td></tr>
                <tr><td>NamXB</td><td><input type="text" name ='NXB' value="${connection.updateTr.getNamXB()}"></td></tr>
                <tr><td>MaNXB</td><td><input type="text" name ='MNXB' value="${connection.updateTr.getMaNXB()}"></td></tr>
                <tr><td>Tình Trạng</td><td><input type="text" name ='TT' value="${connection.updateTr.getTinhTrang()}"></td></tr>
                <tr><td>Thể Loại</td><td><input type="text" name ='Type' value="${connection.updateTr.getTheLoai()}"></td></tr>
                <tr><td>Mô tả</td><td><input type="text" name ='Mta' value="${connection.updateTr.getMota()}"></td></tr>
                <tr><td>img</td><td><input type="text" name ='img' value="${connection.updateTr.getImg()}"></td></tr>
                </c:if>
            </table>
            </form>
        </div>
    </body>
</html>
