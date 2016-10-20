<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>알로에그램</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>

#page{
	width:100%;
	margin:auto;
	align:center;
	
}
#wrapper{
	border:1px solid black;
}
.form-group {
    margin-bottom: 0px;
}
.bg-grey {
    background-color: #f6f6f6;
}
.bg-white{
	 background-color: white;
}
</style>
<script>

</script>
</head>
<body>


<!-- 상단바 -->
<div class="navbar navbar-default bg-white">
	<div class="row">
  		<div class="col-sm-4"><img src="/images/insta1.png"></div>
 		<div class="col-sm-4"><div class="well well-sm"><span class="glyphicon glyphicon-search"></span>검색</div></div>
		<div class="col-sm-4">
			<ul class="nav navbar-nav navbar-right">
				<li><a herf="#"><span class="glyphicon glyphicon-camera"></span></a></li>
  				<li><a herf="#"><span class="	glyphicon glyphicon-cloud"></span></a></li>
  				<li><a herf="#"><span class="glyphicon glyphicon-heart-empty"></span></a></li>
  				<li><a herf="#"><span class="glyphicon glyphicon-user"></span></a></li>
  			</ul>
  		</div>
	</div>
</div>

<!-- 친구 찾기 -->
<div  class="container-fluid bg-grey">
<div class="row">
	<div class="col-sm-3">col-sm-3</div>
	
	<div id="wrapper" class="col-sm-6 bg-white">
		<div class="well well-sm">회원님을 위한 추천 <a href="">모두보기></a></div>
		<div class="well well-sm">사진 zenxen이원구  <button>팔로우</button></div>
		<div class="well well-sm">사진 bataman 슈퍼맨  <button>팔로우</button></div>
		<div class="well well-sm">사진 superman 배트맨  <button>팔로우</button></div>
	</div>
	
	<div class="col-sm-3">col-sm-3</div>
</div>
</div>


<!-- 메인화면 -->
<div  class="container-fluid bg-grey">
<div class="row">
<div class="col-sm-3">col-sm-3</div>


<div id="wrapper" class="col-sm-6 bg-white">

	<!-- 메인화면 상단 아이디 및 시간 부분 -->
	<div class="row content">
		<div class="col-sm-6 text-left">사진 zenxen</div>
		<div class="col-sm-6 text-right">1주전</div>  
	</div>

	<!-- 메인화면 중간 사진 부분 -->
	<div id="page"><img  src="/images/kr5.jpg" width="100%"></div>

	<!-- 메인화면 하단 댓글 보는 화면 -->
	<div>
	
		<br>좋아요 1,649개</br>
		<br>jeonsomihJeon Somi 전소미 - CJ Open Studio 'Comeback Countdown'</br>
	
		<br>#IOI #아이오아이 #JeonSomi #전소미 #Somi #소미 #JYP #Kpop #EnnikDouma</br> 
		<br>#IdealOfIdol #VeryVeryVery #너무너무너무</br>
		<br>댓글 8개 모두 보기</br>
		<br>irhamwp_Gede :v</br>
		<br>noonghil</br>
		<br>sofeax.coBae</br>
		<br>hannah_park19018나도 봤음요</br>
		
	</div>

	<!-- 댓글 쓰는 화면 -->
	<div class="form-group">
		<input type="text" class="form-control" placeholder="Enter Comment">
	</div>

</div>


<div class="col-sm-3">col-sm-3</div>
</div>
</div>



</body>
</html>
