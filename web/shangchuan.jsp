<%--
  Created by IntelliJ IDEA.
  User: 刘岩
  Date: 2018/11/21
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>上传</title>
</head>
<body>
<form action="doupload.jsp" method="post"  enctype="multipart/form-data">
    <input type="file" name="fil" value="上传">
    <textarea id="newscontent" name="newscontent" class="ckeditor" ></textarea>

</form>
</body>
<script type="text/javascript" src="ckeditor/ckeditor.js"></script>

</html>
