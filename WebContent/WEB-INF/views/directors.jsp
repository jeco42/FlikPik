<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method="GET" action="/FlikPik/directors/search">
		<input name="name" />
		<input type="submit" value="search" />
	</form>
	<p>page number: ${pageNum}</p>
	<ul>
		<c:forEach var="director" items="${directors}">
		<li><a href="<c:url value="/directors/director/${director.id}" />">${director.name}</a></li>
		</c:forEach>
	</ul>
	
	<p>pagination:</p>
	<ul>
		<c:if test="${pageNum > 0}">
		<li><a href="<c:url value="/directors/page/${pageNum - 1}" />">previous</a></li>
		</c:if>
		<li><a href="<c:url value="/directors/page/${pageNum + 1}" />">next</a></li>
	</ul>
</body>
</html>