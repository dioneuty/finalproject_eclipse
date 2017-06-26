<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

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
						h3. Lorem ipsum dolor sit amet.
					</h3>
					<hr>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3">
				<h3>
					h3. Lorem ipsum dolor sit amet.
				</h3>
			</div>
			<div class="col-md-8">
				<div class="row">
					<div class="col-md-6">
						<ul class="nav nav-tabs">
							<li class="active"><a data-toggle="tab" href="#home">기본 정보</a></li>
							<li><a data-toggle="tab" href="#menu1">매출현황</a>
								
							</li>
							<li><a data-toggle="tab" href="#menu2">재고현황</a></li>
						</ul>

						<div class="tab-content">
							<div id="home" class="tab-pane fade in active">
								<dl>
									<dt>이름</dt>
									<dd>한빛신촌점</dd>
									<dt>장소</dt>
									<dd>서울특별시 종로구 종로동</dd>
									<dt>일 평균 유동인구</dt>
									<dd>하루 20~30만 명</dd>
									<dt>가장 잘 나가는 주 메뉴</dt>
									<dd>
										<ol>
											<li>짜짜로니 핫도그</li>
											<li>치즈 핫도그</li>
											<li>불닭 핫도그</li>
										</ol>
									</dd>
									<dt>가장 잘 나가는 사이드 메뉴</dt>
									<dd>
										<ol>
											<li>흑맥주</li>
											<li>콜라</li>
											<li></li>
										</ol>
									</dd>
								</dl>
							</div>
							<div id="menu1" class="tab-pane fade">
								<p class="well">그래프</p>

							</div>
							<div id="menu2" class="tab-pane fade">
								<table class="table table-bordered">
									<thead>
										<tr class="info">
											<th>발주품목</th>
											<th>수량</th>
											<th>도착예정일</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>소시지</td>
											<td>20개</td>
											<td>2017년 6월 22일</td>
										</tr>
										<tr>
											<td>빵</td>
											<td>100개</td>
											<td>2017년 6월 17일</td>
										</tr>
										<tr>
											<td>핫소스</td>
											<td>10개</td>
											<td>2017년 6월 22일</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="page-header">
							<h3>본사공지</h3>
						</div>
						<table class="table text-center">
							<thead>
								<tr class="info">
									<th style="text-align: center">제목</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>안녕하십니까. ~~ 핫도그 관리 시스템입니다. </td>

								</tr>
								<tr>
									<td>이번 주 내로 ~~소스가 배달될 예정입니다. </td>

								</tr>
								<tr>
									<td>오늘 매출액은 ~~~원입니다. </td>

								</tr>
							</tbody>
						</table>
					</div>
					<div class="col-md-6">
						<div class="page-header">
							<h3>발주현황</h3>

						</div>
						<table class="table table-bordered">
							<thead>
								<tr class="info">
									<th>발주품목</th>
									<th>수량</th>
									<th>도착예정일</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>소시지</td>
									<td>20개</td>
									<td>2017년 6월 22일</td>
								</tr>
								<tr>
									<td>빵</td>
									<td>100개</td>
									<td>2017년 6월 17일</td>
								</tr>
								<tr>
									<td>핫소스</td>
									<td>10개</td>
									<td>2017년 6월 22일</td>
								</tr>
							</tbody>
						</table>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>