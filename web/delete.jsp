<%@ page import="com.service.imp.CompanyServiceImpl" %>
<%@ page import="com.service.ICompanyService" %><%--
  Created by IntelliJ IDEA.
  User: 刘岩
  Date: 2018/11/14
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //获取参数
    String cid = request.getParameter("cid");
    int id = Integer.parseInt(cid);
    ICompanyService companyService = new CompanyServiceImpl();
    companyService.deleteByCid(id);
    response.sendRedirect("CompanyList.jsp");

%>
