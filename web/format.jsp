<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: 刘岩
  Date: 2018/11/28
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<fmt:formatDate value="<%=new Date()%>"></fmt:formatDate><br />
<fmt:formatDate value="<%= new Date()%>" dateStyle="short"></fmt:formatDate><br />
<fmt:formatDate value="<%= new Date()%>" dateStyle="long"></fmt:formatDate><br />
<fmt:formatDate value="<%= new Date()%>" pattern="yyyy年MM月dd日 HH:mm:ss"></fmt:formatDate><br />


=================================formatNumber===========================<br />
<fmt:formatNumber value="50000" ></fmt:formatNumber><br />
<fmt:formatNumber value="50000" type="currency"></fmt:formatNumber><br />
<fmt:formatNumber value="50000" type="percent"></fmt:formatNumber><br />

</body>
</html>
