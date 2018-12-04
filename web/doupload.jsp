<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import="org.apache.commons.fileupload.FileItemFactory" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory" %>
<%@ page import="java.util.List" %>
<%@ page import="org.apache.commons.fileupload.FileItem" %>
<%@ page import="java.io.File" %><%--
  Created by IntelliJ IDEA.
  User: 刘岩
  Date: 2018/11/21
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>页面</title>
</head>
<body>

<%
    boolean multipartContent=ServletFileUpload.isMultipartContent(request);
    if(multipartContent){
        FileItemFactory fileItemFactory=new DiskFileItemFactory();

        ServletFileUpload Upload=new ServletFileUpload(fileItemFactory);
        List<FileItem>fileItems=Upload.parseRequest(request);
        try {
            for (FileItem fileItem:fileItems){
                fileItem.write(new File("D:/"+fileItem.getName()));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }else{
        request.getParameter("");
    }

%>
</body>
</html>
