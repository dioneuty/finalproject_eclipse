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
	<!-- Modal -->
	<div class="modalList">
		<div class="modal fade" id="signupModal" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="panel panel-default">
					<div class="panel-body">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h2>회원가입</h2>
						<hr/>
						<form action="/action_page.php">
							<h4 class="text-center well well-sm">필수 정보</h4>
							<div class="form-group">
								<label for="id">ID:</label>
								<input type="id" class="form-control" id="id" placeholder="영문자, 숫자 혼합" name="id">
							</div>
							<div class="alert alert-success">
								<strong>아이디 생성 가능</strong> 중복되지 않은 아이디입니다.
							</div>
							<div class="form-group">
								<label for="pwd">Password:</label>
								<input type="password" class="form-control" id="pwd" placeholder="8자 이상, 영문자 숫자 혼합" name="pwd">
							</div>
							<div class="alert alert-success">
								<strong>비밀번호 생성 가능</strong> 입력가능한 비밀번호
							</div>
							<h4 class="text-center well well-sm">선택 정보</h4>
							<div class="form-group">
								<label for="phone">휴대폰:</label>
								<input type="text" class="form-control" id="phone" placeholder="휴대폰 번호를 입력하세요" name="phone">
							</div>
							<div class="form-group">
								<label for="email">E-mail:</label>
								<input type="text" class="form-control" id="email" placeholder="이메일 주소를 입력하세요" name="email">
							</div>
							<div class="text-center">
								<div class="btn-group">
									<button type="submit" class="btn btn-info">회원가입</button>
									<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		
		<div class="modal fade" id="upinfoModal" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="panel panel-default">
					<div class="panel-body">
						<h2>프로그램 정보</h2>
						<p>암기 시스템 프로그램 웹 version 1.0</p>
					</div>
				</div>
			</div>
		</div>
		
		<!-- Modal -->
		<div class="modal fade" id="loginModal" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="panel panel-default">
					<div class="panel-body">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h2 class="tex">로그인</h2>
						<hr/>
						<form action="/action_page.php">
							<div class="form-group">
								<label for="id">아이디:</label>
								<input type="id" class="form-control" id="id" placeholder="ID를 입력하세요" name="id">
							</div>
							<div class="form-group">
								<label for="pwd">비밀번호:</label>
								<input type="password" class="form-control" id="pwd" placeholder="password를 입력하세요" name="pwd">
							</div>
							<div class="checkbox">
								<label><input type="checkbox" name="remember">아이디 기억</label>
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-default">로그인</button>
								<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
							</div>
							<hr/>
							<p>회원이 아니십니까? <a href="#" id="signup">회원가입을 하시기 바랍니다.</a></p>
							<p><a href="#">비밀번호</a>을 잊어버리셨습니까?</p>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>