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
			<div class="panel panel-default">
				<div class="panel-heading">
					<h5>글 수정</h5>
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
					<br/>
					<dt>글쓴이</dt>
					<dd>홍길동</dd>
					<br/>
					<form>
						<label for="">제목</label><input class="form-control" type="text" name="" id="" />
						<br/>
						<div class="text-center">
							<textarea class="form-control detail_textarea" rows="5" name="cntnt" placeholder="fefefe" readonly style="background-color: white; color: black"></textarea>
							<br/>
							<br/>
							<button type="submit" class="btn btn-info" role="button">수정</button>
							<a href="#" class="btn btn-primary" role="button">목록</a>
							<a href="#" class="btn btn-warning" role="button">취소</a>
							<button type="submit" class="btn btn-danger" role="button">삭제</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../template/modal.jsp"></jsp:include>
</body>

</html>