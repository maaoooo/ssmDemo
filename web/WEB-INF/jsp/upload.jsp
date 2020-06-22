<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/22
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>上传书籍</title>
</head>
<body>
    <form action="${pageContext.request.contextPath}/book/upload" method="post" enctype="multipart/form-data">
        文件名:<input type="text" name="bookName">
        文件:<input type="file" name="file">
        <input type="submit" name="提交">
    </form>
</body>
</html>
