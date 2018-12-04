<%@ page import="entity.Person" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.AbstractList" %><%--
  Created by IntelliJ IDEA.
  User: 刘岩
  Date: 2018/11/26
  Time: 9:27
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
    List<Person> arr=new ArrayList<Person>();
    Person person1=new Person(2,"老王");
    Person person2=new Person(3,"校长");
    arr.add(person);
    arr.add(person1);
    arr.add(person2);
    pageContext.setAttribute("arr",arr);
    int num1=10;
    int num2=15;
    request.setAttribute("num1",num1);
    request.setAttribute("num2",num2);
    String userName1="abc";
    String userName2="abc";
    request.setAttribute("userName1",userName1);
    request.setAttribute("userName2",userName2);
    String string=(String)request.getAttribute("userName1");
%>
${cookie.values()}<br />
${header}<br />
${header["accept-language"]}<br />
${headerValues}<br />

=========使用EL进行预算===================
${num1+num2}<br /> <!---数值运算----->
${userName1.equals(userName2)}<br /> <%--变量运算--%>
${1>2}
<br />
${2>1?"吃黄焖鸡":"吃红烧狮子头"}<br />
<input type="text" value=${true?"济南吃":"北京吃"}><br />
<input type="text" value=${false?"哈哈哈":"呵呵呵"}><br />
=======================获取对象中的值===========================<br />
${myPerson}<br />
<%=person.getName()%><br />
${myPerson.name}<br />
<br />
${arr[0]}
${arr[1].id}
${arr[2].name}
<br />
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

</body>
</html>
