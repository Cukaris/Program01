<%@ page import="java.time.Period" %>
<%@ page import="entity.Person" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 刘岩
  Date: 2018/11/27
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
=======================out标签================================
<c:out value="123"></c:out>
<br />
<c:out value="${1+1}"></c:out>
<br />
<%
    Person person=new Person(1,"xiojhj");
    request.setAttribute("person",person);

%>
<c:out value="${person}"></c:out>
<br />
<c:out value="${abc}" default="abc不存在"></c:out>
<br />
<c:out value="<a href='http://www.baidu.com'>百度</a>" escapeXml="false"></c:out>
<br />
=======================set标签===============================<br />
<c:set var="num" value="100"></c:set>
${num}<br />
<c:set target="${person}" property="name" value="xiaowang"></c:set>
${person}<br />
========================forEach标签============================<br />
<c:forEach begin="1" end="10" step="1" var="i">
    <c:out value="${i}"></c:out>
</c:forEach>
<%
    List<String> heroList=new ArrayList<String>();
    heroList.add("美国队长");
    heroList.add("冬日战士");
    heroList.add("钢铁侠");
    heroList.add("蝙蝠侠");
    heroList.add("蜘蛛侠");
    heroList.add("绿箭侠");
    heroList.add("超胆侠");
    heroList.add("猪猪侠");
    request.setAttribute("heroList",heroList);
%>
<c:forEach items="${heroList}" var="hero" varStatus="status">
    英雄的名字：${hero};
    英雄的id：${status.index};
</c:forEach>
<%--表格的隔行变色--%>
<table border="1">
    <c:forEach items="${heroList}" var="hero" varStatus="status">
        <tr bgcolor="${status.index%2==0?'yellow':'green'}">
            <td>${hero}</td>
        </tr>
    </c:forEach>
</table>
    <br />
    <%--九九乘法表--%>
    <c:forEach var="i" begin="1" end="9">
        <c:forEach var="j" begin="1" end="${i}">
            ${i}*${j}=${i*j}&nbsp;&nbsp;&nbsp;
        </c:forEach>
        <br />
    </c:forEach>
=============================if标签===========================<br />










==============================choose标签=======================<br />
<c:set var="pm" value="101"></c:set>
<c:choose>
    <c:when test="${pm>100}">
        <c:out value="空气质量：差"></c:out>
    </c:when>
    <c:otherwise>
        <c:out value="空气质量：优"></c:out>
    </c:otherwise>
</c:choose>
==============================URL标签==========================<br />
<c:url value="http://www.baidu.com" var="baiduURL"></c:url>
<a href="${baiduURL}">kjshfakjhkdhfu</a>
<c:redirect url="${baiduURL}"></c:redirect>
==============================param标签=======================<br />
${param.name}

===============================import标签=====================<br />
<c:import url="http://www.baidu.com"></c:import>

</body>
</html>
