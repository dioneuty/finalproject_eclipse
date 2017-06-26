<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<title>Insert title here</title>
	<link rel="stylesheet" href="resources/css/css1/bootstrap.min.css"/>
	<link rel="stylesheet" href="resources/css/css1/frame.css"/>
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
</head>

<body>
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include>
	<div class="row content container-fluid">
		<h1 class="text-center "><strong>문의사항</strong></h1>
		<br/>
		<div class="container">
			<div class="panel panel-info">
				<div class="panel-heading">
					<h5>글 읽기</h5>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-sm-2">
							<dt>글번호</dt>
							<dd>3</dd>
						</div>
						<div class="col-sm-2">
							<dt>조회 수</dt>
							<dd>3</dd>
						</div>
						<div class="col-sm-3 col-sm-offset-5">
							<dt>날짜</dt>
							<dd>2017년 6월</dd>
						</div>
					</div>
					<dt>글쓴이</dt>
					<dd>운영자</dd>
					<dt>제목</dt>
					<dd>글번호 4에 대한 답변입니다</dd>
					<div class="text-center">
						<textarea class="form-control detail_textarea" rows="5" name="cntnt" placeholder="fefefe" readonly style="background-color: white; color: black"></textarea>
						<br/>
						<br/>
						<a href="#" class="btn btn-info" role="button">수정</a>
						<a href="#" class="btn btn-primary" role="button">목록</a>
						<a href="#" class="btn btn-danger" role="button">삭제</a>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="../template/modal.jsp"></jsp:include>
	</div>	
</body>

</html>