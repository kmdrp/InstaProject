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
#wrapper{
	margin:auto;
	width:80%;
}
.title{
	text-align:right;
}
.nav_img{
	text-align:left;
}



</style>
<script>
function send(){
	alert("제출");
	form1.action="#";
	form1.submit();
}
</script>
</head>
<body>
	<!-- 상단바 -->
<div class="navbar navbar-default bg-white">
	<div class="row">
  		<!-- 메인이미지 -->
  		<div class="col-sm-4 nav_img"><img src="/images/insta1.png"></div>
 		
 		<!-- 검색 -->
 		<div class="col-sm-4 title">
 			<div class="input-group">
       			<input type="text" class="form-control" placeholder="Search..">
    		    <span class="input-group-btn">
    		   	   <button class="btn btn-default" type="button">
    	       		 <span class="glyphicon glyphicon-search"></span>
      	   			</button>
      			 </span>
     		 </div>
      	</div>
		
		<!-- 버튼 4개 -->
		<div class="col-sm-4 title">
			<ul class="nav navbar-nav navbar-right">
				<li><a herf="#"><span class="glyphicon glyphicon-camera"></span></a></li>
  				<li><a herf="#"><span class="	glyphicon glyphicon-cloud"></span></a></li>
  				<li><a herf="#"><span class="glyphicon glyphicon-heart-empty"></span></a></li>
  				<li><a herf="#"><span class="glyphicon glyphicon-user"></span></a></li>
  			</ul>
  		</div>
	</div>
</div>
	<div class="container" >
		<div class="row content">
			<div class="col-sm-2 sidenav" border="1px solid black">
	      		<ul class="nav nav-pills nav-stacked">
			        <li class="active"><a href="/my/account/edit.jsp">Home</a></li>
			        <li><a href="/my/account/password/change.jsp">Menu 1</a></li>
			        <li><a href="#">Menu 2</a></li>
			        <li><a href="#">Menu 3</a></li>
		   		</ul>
	   		</div>
	  		<div class="col-sm-9" id="wrapper">
	  			<div class="form-group">
	  				<div class="row content">
		        		<div class="col-sm-4 title">
		        			  <img src="/images/img1.jpg" class="img-circle" alt="Cinque Terre" width="60px">
		        		</div>
		        		<div class="col-sm-8">
		        			<h2>ajfzoa</h2>
		        		</div>
		     		</div>
	  			</div>
	  			<form name="form1" method="post">
		  			<div class="form-group">
		  				<div class="row content">
			        		<div class="col-sm-4 title">
			        			<label>이름</label>
			        		</div>
			        		<div class="col-sm-8">
			        			<input type="text" class="form-control" name="name">
			        		</div>
			     		</div>
			     		<div class="row content">
			        		<div class="col-sm-4 title">
			        			<label>사용자 이름</label>
			        		</div>
			        		<div class="col-sm-8">
			        			<input type="text" class="form-control" name="nickname">
			        		</div>
			     		</div>
			     		<div class="row content">
			        		<div class="col-sm-4 title">
			        			<label>웹사이트</label>
			        		</div>
			        		<div class="col-sm-8">
			        			<input type="text" class="form-control" name="website">
			        		</div>
			     		</div>
			     		<div class="row content">
			        		<div class="col-sm-4 title">
			        			<label>소개</label>
			        		</div>
			        		<div class="col-sm-8">
			        			<textarea class="form-control" rows="3" name="comment"></textarea>
			        		</div>
			     		</div>
		  			</div>
		  			<div class="form-group">
		  				<div class="row content">
		  					<div class="col-sm-4 title">
			        		</div>
			        		<div class="col-sm-8">
			        			<label>Privacy</label>
			        		</div>
		  				</div>
		  				<div class="row content">
			        		<div class="col-sm-4 title">
			        			<label>이메일</label>
			        		</div>
			        		<div class="col-sm-8">
			        			<input type="text" class="form-control" name="email">
			        		</div>
			     		</div>
			     		<div class="row content">
			        		<div class="col-sm-4 title">
			        			<label>전화번호</label>
			        		</div>
			        		<div class="col-sm-8">
			        			<input type="text" class="form-control" name="phone">
			        		</div>
			     		</div>
			     		<div class="row content">
			        		<div class="col-sm-4 title">
			        			<label>성별</label>
			        		</div>
			        		<div class="col-sm-8">
			        			<select class="form-control" name="gender">
							        <option>선택없음</option>
							        <option>남</option>
							        <option>여</option>
							    </select>
			        		</div>
			     		</div>
			     		<div class="row content">
			        		<div class="col-sm-4 title">
			        			<label>비슷한 계정 추천</label>
			        		</div>
			        		<div class="col-sm-8">
			        			<label class="checkbox-inline">
							      <input type="checkbox" value="">팔로우할 만한 비슷한 계정을 추천할 때 회원님의 계정을 포함합니다.[?]
							    </label>
			        		</div>
			     		</div>
		  			</div>
	  			</form>
	  			<div class="form-group">
	  				<div class="row content">
		        		<div class="col-sm-4 title">
		        		</div>
		        		<div class="col-sm-8">
		        			<button type="button" class="btn btn-primary" onClick="send()">제출</button>
		        		</div>
		     		</div>
	  			</div>
  			</div>
  		</div>
  	</div>
</body>
</html>