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
#wrapper{
	margin-top:50px;
	margin-left:auto;
	margin-right:auto;
	width:800px;
}

#loginform{
	margin-top:auto;
	margin-bottom:auto;
	height:460px;
}
#link_regist{
	margin-top:20px;
}
.form_group{
	margin:center;
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
function logIn(){
	alert("로그인");
}
</script>
</head>
<body>
<div class="container-fluid" >
  <div class="row content" id="wrapper" >
    <div class="col-sm-6 sidenav">
      <img class="img-responsive" src="/images/phone1.jpg" alt="Chania" id="main_img" >
    </div>
    <div>
    <div class="col-sm-6">
      <form class="form-horizontal">
        <div class="well well-lg" id="loginform">
         <div class="jumbotron text-center">
		   <h2>Instagram</h2>
		 </div>
	    <div class="form-group">
	      <div class="col-sm-12">
	        <input type="email" class="form-control" id="nickname" placeholder="사용자 이름">
	      </div>
	    </div>
	    <div class="form-group">
	      <div class="col-sm-12">
	        <input type="password" class="form-control" id="pwd" placeholder="비밀번호">
	      </div>
	    </div>
	    <div class="form-group">
	      <div class="col-sm-12">
	        <button type="button" class="btn btn-primary btn-block" onClick="logIn()">로그인</button>
	      </div>
	    </div>
	    </div>
	  </form>
		  <div class="well well-sm" id="link_regist">계정이 없으신가요??  <a href="/regist.jsp">가입하기</a></div>
    </div>
    </div>
  </div>
</div>
</body>
</html>
