<%@page import="com.poscodx.guestbook.vo.GuestBookVo"%>
<%@page import="com.poscodx.guestbook.dao.GuestBookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>

<%--</body>--%>
<%--</html>--%>


<%
    request.setCharacterEncoding("utf-8");

    String name = request.getParameter("name");
    String password = request.getParameter("password");
    String contents = request.getParameter("message");

    GuestBookVo vo = new GuestBookVo();
    vo.setName(name);
    vo.setName(password);
    vo.setName(contents);

    new GuestBookDao().insert(vo);
    response.sendRedirect("/guestbook01");

    %>