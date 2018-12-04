<%@ page import="com.dao.ICompanyDao" %>
<%@ page import="com.dao.imp.CompanyDaoImpl" %>
<%@ page import="com.model.Company" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jstl/core"  prefix="c"%><%--
  Created by IntelliJ IDEA.
  User: 刘岩
  Date: 2018/11/14
  Time: 17:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>数据展示</title>
    <%
        ICompanyDao companyDao = new CompanyDaoImpl();
        List<Company> list = companyDao.getCompanys();

    %>
    <style>
        .top{
            text-align: center;
            font-weight: 900;
        }
    </style>
</head>
<center><h1>公司信息表</h1></center>
<body>
<table border="1px" width="100%" >
    <tr class="top">
        <td >公司编号</td>
        <td>职位名</td>
        <td>公司名</td>
        <td>工作地点</td>
        <td>其他功能</td>

    </tr>
    <%--<%--%>
        <%--for(int i =0;i<list.size();i++){--%>
    <%--%>--%>
    <%--<tr>--%>
        <%--<td><%=list.get(i).getCid()%></td>--%>
        <%--<td><%=list.get(i).getZwName()%></td>--%>
        <%--<td><%=list.get(i).getcName()%></td>--%>
        <%--<td><%=list.get(i).getCplace()%></td>--%>
        <%--<td>增加  |  删除 | <a href="delete.jsp?cid=<%=list.get(i).getCid()%>">删除</a>  |--%>
            <%--<a href="CompanyDetail.jsp?cid=<%=list.get(i).getCid()%>">详细信息</a> </td>--%>
    <%--</tr>--%>

    <%--<%  }--%>
    <%--%>--%>
    <c:forEach items="${list}" var="list">
    <tr>
        <td>${list.Cid}</td>
        <td>${list.ZwName}</td>
        <td>${list.cName}</td>
        <td>${list.Cplace}</td>
        <td>增加 | 删除 | <a href="delete.jsp?cid=${list.Cid}">删除</a>  |
            <a href="CompanyDetail.jsp?cid=${list.Cid}">详细信息</a> </td>
    </tr>
</c:forEach>
</table>
<form>

</form>



</body>
</html>
