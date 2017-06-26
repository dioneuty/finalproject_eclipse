<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Insert title here</title>
</head>

<body>
	<div class="row menu">
		<nav class="navbar navbar">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
	                    <span class="glyphicon glyphicon-triangle-bottom"></span>
	                </button>
				<a class="navbar-brand visible-xs" href="#">핫도그</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">기업소개 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">사이트 소개</a></li>
							<li><a href="#">찾아오시는 길</a></li>
							<li><a href="#">고객센터</a></li>
						</ul>
					</li>
					<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">음식 이야기 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">소시지의 유래</a></li>
							<li><a href="#">핫도그의 유래</a></li>
							<li><a href="#">콘도그의 유래</a></li>
							<li><a href="#">한국에서의 역사</a></li>
						</ul>
					</li>
					<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">경쟁력, 브랜드 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#strongpointOfHotdog">핫도그의 경쟁력</a></li>
							<li><a href="#">점포 안내</a></li>
							<li><a href="#">메인 메뉴</a></li>
							<li><a href="#">사이드 메뉴</a></li>
							<li><a href="#">창업 문의</a></li>
						</ul>
					</li>
					<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">게시판 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="board.html">문의사항</a></li>
							<li><a href="#">자유게시판</a></li>
							<li><a href="#">이달의 신메뉴</a></li>
							<li><a href="#">바라는 점</a></li>
							<li><a href="#">1:1 문의</a></li>
						</ul>
					</li>
				</ul>
				<form class="navbar-form navbar-right">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="찾고 싶은 것을 입력하세요">
					</div>
					<button type="submit" id="search" class="btn btn-default">검색</button>
				</form>
			</div>
		</nav>
	</div>
</body>

</html>