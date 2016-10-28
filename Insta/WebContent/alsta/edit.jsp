<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insta</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
#container{
	width:100%;
	margin:auto;
}

.title{
	text-align:right;
}

</style>
<script>
function send(){
	alert("제출");
	form1.action="/alsta/updateDetail.do";
	form1.submit();
}
</script>
</head>
<body>
<%@include file="/inc/header.jsp" %>
	<div class="container-fluid" >
		<div class="row content">
			<div class="col-sm-2 sidenav">
	      		<ul class="nav nav-pills nav-stacked">
			        <li class="active"><a href="/account/edit.jsp">Home</a></li>
			        <li><a href="/alsta/password.jsp">Menu 1</a></li>
		   		</ul>
	   		</div>
	  		<div class="col-sm-9" id="wrapper">
	  			<div class="form-group">
	  				<div class="row content">
		        		<div class="col-sm-3 col-xs-3 title">
		        			  <img src="/images/img1.jpg" class="img-circle" alt="Cinque Terre" width="60px">
		        		</div>
		        		<div class="col-sm-8 col-xs-8">
		        			<h2>ajfzoa</h2>
		        		</div>
		        		<div class="col-sm-1 col-xs-1"></div>
		     		</div>
	  			</div>
	  			<form name="form1" method="post">
		  			<div class="form-group">
		  				<div class="row content">
			        		<div class="col-sm-3 col-xs-3 title">
			        			<label>이름</label>
			        		</div>
			        		<div class="col-sm-8 col-xs-8">
			        			<input type="text" class="form-control" name="name">
			        		</div>
			        		<div class="col-sm-1 col-xs-1"></div>
			     		</div>
			     		<div class="row content">
			        		<div class="col-sm-3 col-xs-3 title">
			        			<label>사용자 이름</label>
			        		</div>
			        		<div class="col-sm-8 col-xs-8">
			        			<input type="text" class="form-control" name="nickname">
			        		</div>
			        		<div class="col-sm-1 col-xs-1"></div>
			     		</div>
			     		<div class="row content">
			        		<div class="col-sm-3 col-xs-3 title">
			        			<label>소개</label>
			        		</div>
			        		<div class="col-sm-8 col-xs-8">
			        			<textarea class="form-control" rows="3" name="comments"></textarea>
			        		</div>
			        		<div class="col-sm-1 col-xs-1"></div>
			     		</div>
		  			</div>
		  			<div class="form-group">
		  				<div class="row content">
		  					<div class="col-sm-3 col-xs-3 title">
			        		</div>
			        		<div class="col-sm-8 col-xs-8">
			        			<label>Privacy</label>
			        		</div>
			        		<div class="col-sm-1 col-xs-1"></div>
		  				</div>
		  				<div class="row content">
			        		<div class="col-sm-3 col-xs-3 title">
			        			<label>이메일</label>
			        		</div>
			        		<div class="col-sm-8 col-xs-8">
			        			<input type="text" class="form-control" name="email">
			        		</div>
			        		<div class="col-sm-1 col-xs-1"></div>
			     		</div>
			     		<div class="row content">
			        		<div class="col-sm-3 col-xs-3 title">
			        			<label>전화번호</label>
			        		</div>
			        		<div class="col-sm-8 col-xs-8">
			        			<input type="text" class="form-control" name="phone">
			        		</div>
			        		<div class="col-sm-1 col-xs-1"></div>
			     		</div>
			     		<div class="row content">
			        		<div class="col-sm-3 col-xs-3 title">
			        			<label>성별</label>
			        		</div>
			        		<div class="col-sm-8 col-xs-8">
			        			<select class="form-control" name="gender">
							        <option>선택없음</option>
							        <option>남</option>
							        <option>여</option>
							    </select>
			        		</div>
			        		<div class="col-sm-1 col-xs-1"></div>
			     		</div>
			     		<div class="row content">
			        		<div class="col-sm-3 col-xs-3 title">
			        			<label>비슷한 계정 추천</label>
			        		</div>
			        		<div class="col-sm-8 col-xs-8">
			        			<label class="checkbox-inline">
							      <input type="checkbox" value="">팔로우할 만한 비슷한 계정을 추천할 때 회원님의 계정을 포함합니다.[?]
							    </label>
			        		</div>
			        		<div class="col-sm-1 col-xs-1"></div>
			     		</div>
		  			</div>
	  			</form>
	  			<div class="form-group">
	  				<div class="row content">
		        		<div class="col-sm-3 col-xs-3 title">
		        		</div>
		        		<div class="col-sm-8 col-xs-8">
		        			<button type="button" class="btn btn-primary" onClick="send()">제출</button>
		        		</div>
		        		<div class="col-sm-1 col-xs-1"></div>
		     		</div>
	  			</div>
  			</div>
  		</div>
  	</div>
</body>
</html>