<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="com.maaoooo.pojo.Books" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/11
  Time: 9:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍展示</title>
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<!-- 新 Bootstrap 核心 CSS 文件 -->

<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表:显示所有书籍</small>
                </h1>

            </div>
        </div>
    </div>
</div>

<div>
    <div class="col-md-4 column">
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/goAddPaper">增加书籍</a>
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allbook">显示所有书籍</a>
    </div>
</div>

<div class="col-md-4 column">

</div>

<div>
    <div class="col-md-4 column">
<%--        查询书籍--%>
        <form action="${pageContext.request.contextPath}/book/queryByName" method="post">
            <input type="text" name="queryBookName" class="form-inline" placeholder="请输入要查询的书籍名称">
            <input type="submit" value="查询" class="btn-navbar">
        </form>
    </div>
</div>

<div class="row clearfix">
    <div class="col-md-12 column">
        <table class="table table-hover table-striped">
            <thead>
            <tr>
                <th>书籍编号</th>
                <th>书籍名称</th>
                <th>书籍数量</th>
                <th>书籍详情</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <%--            书籍从数据库中获取 然后从list中遍历 用forEach标签--%>
            <c:forEach var="book" items="${allBooks}">
                <tr>
                    <td>${book.bookID}</td>
                    <td>${book.bookName}</td>
                    <td>${book.bookCounts}</td>
                    <td>${book.detail}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/book/toUpdatePager?id=${book.bookID}">修改</a> |
                        <a href="${pageContext.request.contextPath}/book/todeletePage?id=${book.bookID}">删除</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>




</body>
</html>
