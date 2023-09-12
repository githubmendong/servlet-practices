<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String row = request.getParameter("r");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<table border="1" cellspacing="0" cellpadding="10">
    <c:forEach begin="0" end="${param.r - 1}" step ="1">
<%--        자주사용함!!--%>
    <tr>
        <td>Cell(${i }, 0)</td>
        <td>Cell(${i }, 1)</td>
        <td>Cell(${i }, 2)</td>
    </tr>
    </c:forEach>
</table>
</body>
</html>