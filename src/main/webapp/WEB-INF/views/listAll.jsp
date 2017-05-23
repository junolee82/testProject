<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ListPage</title>
<style type="text/css">
#container {width: 80%;	border: 5px solid blue;	margin: 0 auto;	margin-top: 60px; text-align: center;}
table {width: 80%; margin: 5% auto;}
table, tr, td {border: 1px solid black;	border-collapse: collapse;}
</style>
</head>
<body>
	<div id="container">
		<h1>SPMS(Simple Project Management System)</h1>
		<p><a href="register">[새 프로젝트 등록]</a></p>
		<c:if test="${listAll.size() > 0 }">
			<table>
				<tr>
					<td>프로젝트 이름</td>
					<td>시작 날짜</td>
					<td>종료 날짜</td>
					<td>상태</td>
				</tr>
			<c:forEach var="listAll" items="${listAll }">
				<tr>
					<td><a href="/read?pNo=${listAll.pNo }">${listAll.pName }</a></td>
					<td>
						<fmt:formatDate value="${listAll.startDate }" pattern="yyyy-MM-dd"/>
					</td>
					<td>
						<fmt:formatDate value="${listAll.endDate }" pattern="yyyy-MM-dd"/>
					</td>
					<td>${listAll.pState }</td>
				</tr>
			</c:forEach>	
			</table>
		</c:if>		
	</div>
</body>
</html>