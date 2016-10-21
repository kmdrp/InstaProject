<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="/inc/upload.jsp" %>
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

/*친구찾기  */
ul{
	
}
.my1{
	width:50%;
	float:left;
}
.myimg{
	margin:15px;
	with:50px;
	height:50px;
	float:left;
}
.bt{
	margin:20px;
	float:right;
}

</style>
<script>
function upload(){
	document.getElementById("upload").style.display="block";
}

</script>
</head>
<body>


<!-- 상단바 -->
<div class="navbar navbar-default bg-white">
	<div class="row">
  		<!-- 메인이미지 -->
  		<div class="col-sm-4"><img src="/images/insta1.png"></div>
 		
 		<!-- 검색 -->
 		<div class="col-sm-4">
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
		<div class="col-sm-4">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="javascript:upload()" ><span class="glyphicon glyphicon-camera"></span></a></li>
  				<li><a href="/"><span class="	glyphicon glyphicon-cloud"></span></a></li>
  				<li><a href="/searchFriend/searchFriend.jsp"><span class="glyphicon glyphicon-heart-empty"></span></a></li>
  				<li><a href="/my/profile.jsp"><span class="glyphicon glyphicon-user"></span></a></li>
  			</ul>
  		</div>
	</div>
</div>


<!-- 친구 찾기 -->
<div  class="container-fluid bg-grey">
<div class="row">
	<div class="col-sm-3">col-sm-3</div>
	
	<div id="wrapper" class="col-sm-6 bg-white">
		
		
		<div class="my1" >
			<img src="/images/img1.jpg"  class="img-circle myimg">
			<h3 id="userId" name="userId" >adsdfdfdf<br><small>secondary text</small></h3>
		</div>
		<div class="right">
			<button type="w3-button" class="btn btn-default bt">팔로우</button>
		</div>
		

	</div>

	<div class="col-sm-3">col-sm-3</div>

</div>
</div>


<!-- 메인화면1 -->
<div  class="container-fluid bg-grey">
<div class="row">
<div class="col-sm-3">col-sm-3</div>


<div id="wrapper" class="col-sm-6 bg-white">

	<!-- 메인화면 상단 아이디 및 시간 부분 -->
	<div class="row content">
		<div class="col-sm-6 text-left">
			<img src="/images/kr5.jpg" class="img-circle" alt="Cinque Terre" width="30" height="30"> zenxen
		</div>
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

<!-- 메인화면2 -->
<div  class="container-fluid bg-grey">
<div class="row">
<div class="col-sm-3">col-sm-3</div>


<div id="wrapper" class="col-sm-6 bg-white">

	<!-- 메인화면 상단 아이디 및 시간 부분 -->
	<div class="row content">
		<div class="col-sm-6 text-left">
			<img src="/images/kr5.jpg" class="img-circle" alt="Cinque Terre" width="30" height="30"> zenxen
		</div>
		<div class="col-sm-6 text-right">1주전</div>  
	</div>

	<!-- 메인화면 중간 사진 부분 -->
	<div id="page"><img  src="/images/kr.jpg" width="100%"></div>

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
