${pageContext.request.contextPath }
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page import="com.poscodx.emaillist.vo.EmaillistVo"%>
<%@page import="com.poscodx.emaillist.dao.EmaillistDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<c:set var="firstName" value="${param.fn}" />
<c:set var="lastName" value="${param.ln}" />
<c:set var="email" value="${param.email}" />

<%
	request.setCharacterEncoding("utf-8");
	EmaillistVo vo = new EmaillistVo();
	vo.setFirstName((String) pageContext.getAttribute("firstName"));
	vo.setLastName((String) pageContext.getAttribute("lastName"));
	vo.setEmail((String) pageContext.getAttribute("email"));
	new EmaillistDao().insert(vo);
	response.sendRedirect(request.getContextPath() + "/emaillist01");
%>
