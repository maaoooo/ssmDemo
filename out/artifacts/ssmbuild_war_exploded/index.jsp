<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/11
  Time: 9:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>图书管理DEMO</title>
  </head>
  <style>
      a{
          text-decoration: none;
          color: black;
          font-size: 18px;
      }
      h1{
          width: 180px;
          height: 38px;
          /*外边距*/
          margin: 100px auto;
          /*居中*/
          text-align: center;
          line-height: 38px;
          background: darksalmon;
          /*圆角边框*/
          border-radius: 5px;
      }
  </style>
  <body>
      <h1>
        <a href="${pageContext.request.contextPath}/book/allbook">进入书籍查询页面</a>
      </h1>
  </body>
</html>
