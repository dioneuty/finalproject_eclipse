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
					<h5>1:1 문의</h5>
				</div>
				<div class="panel-body">

					<form>
						<div class="form-group">
							<label for="author">작성자</label>
							<input type="text" name="author" class="form-control" id="author" placeholder="이름을 입력해주세요">
						</div>
						<div class="form-group">
							<label for="qtype">분류</label>
							<select name="qtype" class="form-control" id="qtype">
								<option value="question">질문</option>
								<option value="suggest">제안</option>
								<option value="urgent">긴급</option>
							</select>
						</div>
						<div class="form-group">
							<label for="email">이메일</label>
							<input type="email" name="email" class="form-control" id="email" placeholder="E-mail주소를 입력해주세요">
						</div>
						<div class="form-group">
							<label for="sub">제목</label>
							<input type="text" name="sub" class="form-control" id="sub" placeholder="제목을 입력해주세요">
						</div>
						<div class="form-group">
							<label for="content">내용</label>
							<textarea name="content" class="form-control" id="content" cols="30" rows="10" placeholder="내용을 입력해주세요">
							</textarea>
						</div>
						<div class="text-center">
							<button class="btn btn-primary">작성</button>
							<button class="btn btn-warning">초기화</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>	
	<jsp:include page="../template/modal.jsp"></jsp:include>
</body>

</html>