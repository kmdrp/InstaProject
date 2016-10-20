<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
#wrapper {
	margin-top: 50px;
	margin-left: auto;
	margin-right: auto;
	width: 80%;
}

#loginform {
	margin-top: auto;
	margin-bottom: auto;
	height: 50%;
}

#link_regist {
	margin-top: 5%;
}

.form_group {
	margin: center;
}

a:link, a:visited {
	background-color: blue;
	color: white;
	padding: 2px 2px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
}

a:hover, a:active {
	background-color: white;
}
</style>
<script>
	function regist() {
		location.href = "/index.jsp";
	}
</script>
</head>
<body>
	<div class="container-fluid">
		<div class="row content" id="wrapper">
			<div class="col-sm-6 sidenav">
				<img class="img-responsive" src="/images/phone1.jpg" alt="Chania"
					id="main_img">
			</div>
			<div class="col-sm-6" id="loginform">
				<form class="form-horizontal">
					<div class="well well-lg">
						<div class="form-group">
							<div class="jumbotron text-center">
								<h2>Instagram</h2>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<input type="email" class="form-control" id="email"
										name="email" placeholder="이메일">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<input type="password" class="form-control" id="name"
										name="name" placeholder="성명">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<input type="email" class="form-control" id="nickname"
										name="nickname" placeholder="사용자 이름">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<input type="password" class="form-control" id="pwd" name="pwd"
										placeholder="비밀번호">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<button type="button" class="btn btn-primary btn-block"
										onClick="regist()">가입하기</button>
								</div>
							</div>
						</div>
					</div>
				</form>
				<div class="well well-sm" id="link_regist">
					계정이 있으신가요?? <a href="/index.jsp">
						<button type="button" class="btn btn-primary btn-block">로그인</button>
					</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
