<%@page import="com.poscodx.guestbook.vo.GuestBookVo" %>
<%@page import="com.poscodx.guestbook.dao.GuestBookDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>

<%--</body>--%>
<%--</html>--%>


<%
    request.setCharacterEncoding("utf-8");

    Long no = Long.parseLong(request.getParameter("no"));
    String password = request.getParameter("password");

    new GuestBookDao().delete(no, password);
    response.sendRedirect("/guestbook01");
%>