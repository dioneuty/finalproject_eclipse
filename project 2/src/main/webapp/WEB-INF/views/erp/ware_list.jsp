<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<title>Insert title here</title>
	<link rel="stylesheet" href="../../resources/css/css1/bootstrap.min.css"/>
	<link rel="stylesheet" href="../../resources/css/css1/erp1.css"/>
	<script src="../../resources/js/jquery.min.js"></script>
	<script src="../../resources/js/bootstrap.min.js"></script>
	
</head>

<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12 panel panel-defaul">
				<div class="page-header">
					<h3 class="text-center">
						상단 메뉴
						
					</h3>
					<a href="../../erp/alarm/1">알림 목록</a>
					<hr>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3">
				<h3>
					사이드 바
				</h3>
			</div>
			<div class="col-md-8">
				<div class="page-header text-center">

					<h3>점포 목록</h3>
					<a href="../../erp/store/list">테스트</a>
				</div>
				<div class="well">
					<div class="row">
						<form method="post" class="form-inline">
							<div class="form-group col-sm-offset-1 col-sm-5">
								<label for="wtype">제품 종류</label>
								<select name="wtype" class="form-control" id="goods_type">
									<option value="1">식기류</option>
									<option value="2">요리기구</option>
									<option value="3">의류</option>
									<option value="4">식재료</option>
								</select>
								<button class="btn btn-default" type="submit">제품 이름 검색</button>
							</div>
						</form>
						<form method="post" class="form-inline">
							<div class="form-group text-left col-sm-5col-sm-offset-1">
								<label for="wname">점포</label>
									<input type="text" class="form-control" name="wname" id="wname" placeholder="">
								<button class="btn btn-default" type="submit">점포검색</button>
							</div>
						</form>
					</div>
				</div>
				
				<table class="table table-bordered">
					<tr class="info">
						<!-- <th>지역</th>
						<th>점포코드</th>
						<th>점포명</th>
						<th>점주</th>
						<th>상세주소</th>
						<th>연락처</th> -->
						<th>글 항목</th>
						<th>가맹점이름</th>
						<th>가맹점전화번호</th>
						<th>가맹점주소</th>
					</tr>
					<c:forEach items="${ list}" var="store">
					<tr>
						<td><a href="./detail/${list.WNUM}">${list.WNUM }</a></td>
						<td><a href="./detail/${list.WNUM}">${list.WNAME }</a></td>
						<c:if test="${list.WTYPE.equals(1) }"><td><a href="./detail/${list.WNUM}">식기류</a></td></c:if>
						<c:if test="${list.WTYPE.equals(2) }"><td><a href="./detail/${list.WNUM}">요리기구</a></td></c:if>
						<c:if test="${list.WTYPE.equals(3) }"><td><a href="./detail/${list.WNUM}">의류</a></td></c:if>
						<c:if test="${list.WTYPE.equals(4) }"><td><a href="./detail/${list.WNUM}">식재료</a></td></c:if>
						<a href="./edit/${list.WNUM}" class="btn btn-default" role="button">수정</a>
						<a href="./delete/${list.WNUM}" class="btn btn-default" role="button">삭제</a>
					</tr>
					</c:forEach>
					
				</table>
				<div class="row">
					<div class="col-sm-4 col-sm-offset-8">
						<div class="well text-center">
							<a href="#" class="btn btn-default" role="button">추가</a>
						</div>
					</div>
				</div>


			</div>
		</div>
	</div>
</body>

</html>