<%@ page import="com.dao.imp.CompanyDaoImpl" %>
<%@ page import="com.dao.ICompanyDao" %><%--
  Created by IntelliJ IDEA.
  User: 刘岩
  Date: 2018/11/13
  Time: 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>数据展示</title>
    <%
        ICompanyDao companyDao = new CompanyDaoImpl();

    %>
</head>
<body><table border="1px" width="100%">
    <tr>
        <td>公司编号</td>
        <td>公司名称</td>
        <td>工作地点</td>
        <td>职位名</td>
        <td>公司性质</td>
        <td></td>
    </tr>
</table>
<%--<jsp:include page="web.xml"></jsp:include>--%>
<iframe src="www.baidu.com"></iframe>
<%@include file="delete.jsp"%>
</body>
</html>
