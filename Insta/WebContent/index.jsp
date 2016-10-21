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
	margin-top: 5%;
	margin-left: auto;
	margin-right: auto;
	width: 80%;
}

#loginform {
	margin-top:auto;
	margin-bottom:auto;
}

#link_regist {
	margin-top: 5%;
}

.form_group {
	margin: center;
}

a:link, a:visited {
	color: green;
	padding: 2px 2px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
}


</style>
<script>
	function logIn() {
		location.href="/main/mainPage.jsp";
	}
</script>
</head>
<body>
	<div class="container-fluid">
		<div class="row content" id="wrapper">
			<div class="col-sm-6 sidenav">
				<img class="img-responsive" src="/images/img_index/aloe.jpeg" alt="Chania"
					id="main_img" height="80%">
			</div>
			<div class="col-sm-6" id="loginform">
				<form class="form-horizontal">
					<div class="well well-lg" >
						<div class="form-group">
							<div class="jumbotron text-center">
								<h2>Instagram</h2>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-12">
								<input type="email" class="form-control" id="nickname"
									placeholder="사용자 이름">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-12">
								<input type="password" class="form-control" id="pwd"
									placeholder="비밀번호">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-12">
								<button type="button" class="btn btn-success btn-block"
									onClick="logIn()">로그인</button>
							</div>
						</div>
					</div>
				</form>
				<div class="well well-sm" id="link_regist">
					계정이 없으신가요?? <a href="/regist.jsp">가입하기</a>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>
