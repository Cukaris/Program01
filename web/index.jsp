<%@ page import="entity.Person" %><%--
  Created by IntelliJ IDEA.
  User: 刘岩
  Date: 2018/11/13
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Insert title here</title>
  </head>
  <body>
  <%
    Person person=new Person(1,"小王");
    request.setAttribute("myPerson",person);
  %>
  ${myPerson}
  </body>
</html>
