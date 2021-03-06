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
		<h1 class="text-center"><strong>문의사항</strong></h1>
		<div class="col-sm-12">
			<div class="panel panel-default container">
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table table-hover">
							<thead>
								<tr class="info">
									<th>글번호</th>
									<th>글쓴이</th>
									<th>제목</th>
									<th>날짜</th>
									<th>조회수</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>6</td>
									<td>홍길동</td>
									<td>테스트</td>
									<td>2017년6월1일</td>
									<td>1</td>
								</tr>
								<tr>
									<td>5</td>
									<td>홍길동</td>
									<td>테스트</td>
									<td>2017년6월2일</td>
									<td>1</td>
								</tr>
								<tr>
									<td>4</td>
									<td>홍길동</td>
									<td>테스트</td>
									<td>2017년6월3일</td>
									<td>1</td>
								</tr>
								<tr>
									<td>3</td>
									<td>홍길동</td>
									<td>테스트</td>
									<td>2017년6월4일</td>
									<td>1</td>
								</tr>
								<tr>
									<td>2</td>
									<td>홍길동</td>
									<td>테스트</td>
									<td>2017년6월5일</td>
									<td>1</td>
								</tr>
								<tr>
									<td>1</td>
									<td>홍길동</td>
									<td>테스트</td>
									<td>2017년6월6일</td>
									<td>1</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="row">

				<div class="text-center col-sm-offset-4 col-sm-4">
					<nav>
						<ul class="pagination">
							<li>
								<a href="#" aria-label="Previous">
									<span aria-hidden="true">이전</span>
								</a>
							</li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li>
								<a href="#" aria-label="Next">
									<span aria-hidden="true">다음</span>
								</a>
							</li>
							<div class="">
								
							</div>
						</ul>
					</nav>
					<br>
				</div>
				<div class="col-sm-4 text-right">
					<br>
					<button class="btn btn-primary">쓰기</button>
				</div>
			</div>
			<div class="text-center">
				<br>
				<form class="form-inline">
					<div class="form-group">
						<label for="search_text">검색할 단어</label>
						<input type="text" class="form-control" name="search_text">
					</div>
					<div class="form-group">
						<select name="search_param" class="form-control">
                    <option value="sub">제목</option>
                    <option value="cntnt">내용</option>
                    <option value="author">글쓴이</option>
                    <option value="date">날짜</option>
                </select>
					</div>
					<button class="btn btn-primary" type="submit">검색</button>
				</form>
			</div>
		</div>
	</div>	
	<jsp:include page="../template/modal.jsp"></jsp:include>
</body>

</html>