<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/11
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加书籍</title>
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<!-- 新 Bootstrap 核心 CSS 文件 -->

<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增书籍</small>
                </h1>

            </div>
        </div>
    </div>
</div>


<form action="${pageContext.request.contextPath}/book/addBook" method="post">
    <div class="col-md-10 column">
        <div class="form-group">
            <label for="bkName">书籍名称：</label>
            <input type="text" class="form-control" id="bkName" name="bookName" required>
        </div>
    </div>
    <div class="col-md-10 column">
        <div class="form-group">
            <label for="bkCount">书籍数量：</label>
            <input type="text" class="form-control" id="bkCount" name="bookCounts" required>
        </div>
    </div>
    <div class="col-md-10 column">
        <div class="form-group">
            <label for="bkDetail">书籍简介：</label>
            <input type="text" class="form-control" id="bkDetail" name="detail" required>
        </div>
    </div>
    <div class="col-md-10 column">
        <div class="form-group">
            <input type="submit" class="form-control" value="添加">
        </div>
    </div>
</form>
</body>
</html>