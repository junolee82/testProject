<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#container {width: 80%;	border: 5px solid blue;	margin: 0 auto;	margin-top: 60px; text-align: center;}
table {width: 80%; margin: 5% auto;}
table, tr, td {border: 1px solid black;	border-collapse: collapse;}
.bold {font-weight: bold;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#delete").click(function() {
			var del = confirm("삭제하시겠습니까?");
			if(del == true) {
				location.href = "remove?pNo=" + ${read.pNo };
			} else {
				return;
			}
		});
	});
</script>
</head>
<body>
	<div id="container">
		<h1>SPMS(Simple Project Management System)</h1>
		
			<table>
				<tr>
					<td><span class="bold">프로젝트 이름</span></td>
					<td>${read.pName }</td>
				</tr>
				<tr>
					<td><span class="bold">프로젝트 내용</span></td>
					<td>${read.pContent }</td>
				</tr>
				<tr>
					<td><span class="bold">시작 날짜</span></td>
					<td>
						<fmt:formatDate value="${read.startDate }" pattern="yyyy-MM-dd"/> 
					</td>
				</tr>
				<tr>
					<td><span class="bold">종료 날짜</span></td>
					<td>
						<fmt:formatDate value="${read.endDate }" pattern="yyyy-MM-dd"/>
					</td>
				</tr>
				<tr>
					<td><span class="bold">상태</span></td>
					<td>${read.pState }</td>
				</tr>	
			</table>
		
		<p>
			<a href="modify?pNo=${read.pNo }">[수정]</a>
			<a href="#" id="delete">[삭제]</a>
			<a href="/listAll">[돌아가기]</a>
		</p>
		
	</div>
</body>
</html>