<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/12
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍</title>
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>

<form action="${pageContext.request.contextPath}/book/updatebook?" method="post">

    <input name="bookID" value="${book.bookID}">
    <div class="col-md-10 column">
        <div class="form-group">
            <label for="bkName">书籍名称：</label>
            <input type="text" class="form-control" id="bkName" name="bookName" required value="${book.bookName}">
        </div>
    </div>

    <div class="col-md-10 column">
        <div class="form-group">
            <label for="bkCount">书籍数量：</label>
            <input type="text" class="form-control" id="bkCount" name="bookCounts" required value="${book.bookCounts}">
        </div>
    </div>

    <div class="col-md-10 column">
        <div class="form-group">
            <label for="bkDetail">书籍介绍：</label>
            <input type="text" class="form-control" id="bkDetail" name="detail" required value="${book.detail}">
        </div>
    </div>

    <div class="col-md-10 column">
        <div class="form-group">
            <input type="submit" class="form-control" value="修改">
        </div>
    </div>





</body>
</html>
