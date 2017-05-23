<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
<style type="text/css">
#container {width: 80%;	border: 5px solid blue;	margin: 0 auto;	margin-top: 60px;}
#title {text-align: center;}
form {border: 1px solid gray; margin: 20px;	padding-top: 20px;}
label {text-align: center; width: 150px; float: left; padding-left: 28%;}
#button {text-align: center; padding-top: 30px; padding-bottom: 30px;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("form[name='f1']").submit(function() {
			if($("input[name='pName']").val() == "") {
				alert("프로젝트 이름을 입력하세요.");
				return false;
			}
			if($("textarea[name='pContent']").val() == "") {
				alert("프로젝트 내용을 입력하세요.");
				return false;
			}
			if($("input[name='startDate']").val() == "") {
				alert("시작날짜를 입력하세요.");
				return false;
			}
			if($("input[name='endDate']").val() == "") {
				alert("마감날짜를 입력하세요.");
				return false;
			}
			if($("input[name='pState']").val() == "") {
				alert("프로젝트 진행상태를 입력하세요.");
				return false;
			}
		});
		
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
		<div>
		<form action="register" method="post" name="f1">
			<p>
				<label for="pName">프로젝트 이름 </label>
				<input type="text" name="pName" id="pName"/>
			</p>
			<p>
				<label for="pContent">프로젝트 내용 </label>
				<textarea name="pContent" id="pContent" cols="30" rows="5"></textarea>
			</p>
			<p>
				<label for="startDate">시작 날짜 </label>
				<input type="date" name="startDateVal" id="startDate"/>
			</p>
			<p>
				<label for="endDate">마감 날짜 </label>
				<input type="date" name="endDateVal" id="endDate"/>
			</p>
			<p>
				<label>상태 </label>
				<select name="pState">
					<option value="">---</option>
					<option value="준비">준비</option>
					<option value="진행중">진행중</option>
					<option value="종료">종료</option>
					<option value="보류">보류</option>
				</select>
			</p>
			<p id="button">
				<input type="submit" value="저장"/>
				<input type="button" value="취소" id="cancel"/>
			</p>
		</form>
		</div>
		
	</div>
</body>
</html>