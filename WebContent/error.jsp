<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비트캠프 제주지점</title>
<%@ include file="template/head.jspf" %>
</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>

	<h2>올바른 접근이 아닙니다. 오류 종류: <%= request.getParameter("errtype") %></h2>

<%@ include file="template/footer.jspf" %>
</body>

</html>