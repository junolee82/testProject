<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
<style type="text/css">
#container {width: 80%; border: 5px solid blue;	margin: 0 auto;	margin-top: 60px;}
#title {text-align: center;}
form {border: 1px solid gray; margin: 20px;	padding-top: 20px;}
label {text-align: center; width: 150px; float: left; padding-left: 28%;}
#button {text-align: center; padding-top: 30px;	padding-bottom: 30px;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#cancel").click(function(){
			history.go(-1);
		});
	});
</script>
</head>
<body>
	<div id="container">
		<div id="title">
			<h1>SPMS(Simple Project Management System)</h1>
		</div>
		<form action="modify?pNo=${read.pNo }" method="post">
			<p>
				<label for="">프로젝트 이름 </label>
				<input type="text" name="pName" value="${read.pName }"/>
			</p>
			<p>
				<label for="">프로젝트 내용 </label>
				<textarea name="pContent" id="" cols="30" rows="5">${read.pContent }</textarea>
			</p>
			<p>
				<label for="">시작 날짜 </label>
				<input type="date" name="startDateVal" value="${read.startDate }"/>
			</p>
			<p>
				<label for="">마감 날짜 </label>
				<input type="date" name="endDateVal" value="${read.endDate }"/>
			</p>
			<p>
				<label for="">상태 </label>
				<select name="pState">
					<option value="준비">준비</option>
					<option value="진행중">진행중</option>
					<option value="종료">종료</option>
					<option value="보류">보류</option>
				</select>
			</p>
			<p id="button">
				<input type="submit" value="수정"/>
				<input type="button" value="취소" id="cancel"/>
			</p>
		</form>
	</div>
</body>
</html>