<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<title>Insert title here</title>
	<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="resources/css/frame.css"/>
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$('document').ready(function() {
			$('.header').load('../template/header.html');
			$('.menu').load('../template/menu.html');
			$('.modalList').load('../template/modal.html');
		});
	</script>
</head>

<body>
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-body">
				<h2 class="tex">로그인</h2>

				<form action="/action_page.php">
					<div class="form-group">
						<label for="id">ID:</label>
						<input type="id" class="form-control" id="id" placeholder="ID를 입력하세요" name="id">
					</div>
					<div class="form-group">
						<label for="pwd">Password:</label>
						<input type="password" class="form-control" id="pwd" placeholder="password를 입력하세요" name="pwd">
					</div>
					<div class="checkbox">
						<label><input type="checkbox" name="remember">아이디 기억</label>
					</div>
					<button type="submit" class="btn btn-default">로그인</button>
				</form>
			</div>
		</div>
	</div>
</body>
</body>

</html>