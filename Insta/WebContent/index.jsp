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
	margin:5%;
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
div_img{
	margin-top:20px;
}

</style>
<script>
	function logIn() {
		form1.action="/alsta/logIn.do";
		form1.submit();
	}
</script>
</head>
<body>
	<div class="container-fluid">
		<div class="row content" id="wrapper">
			<div class="col-sm-2">
			</div>
			<div class="col-sm-4 sidenav " align="center" >
				<img class="img-responsive img_main div_img"  src="/images/img_index/aloe.jpeg" alt="Chania"
					id="main_img" height="80%">
			</div>
			<div class="col-sm-4" id="loginform">
				<form class="form-horizontal" name="form1" method="post">
					<div class="well well-lg" >
						<div class="form-group">
							<div class="jumbotron text-center" align="center">
							<div class="container" >
						   		<h1>Aloegram</h1>
						   		</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-12">
								<input type="nick" class="form-control" id="nick" name="nick"
									placeholder="사용자 이름">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-12">
								<input type="pwd" class="form-control" id="pwd" name="password"
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
					계정이 없으신가요?? <a href="/alsta/regist.jsp">가입하기</a>
				</div>
			</div>
		</div>
		<div class="col-sm-2">
		</div>
	</div>
	</div>
</body>
</html>
