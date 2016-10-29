<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>알로에그램</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
/*전체 배경 보더 설정*/
 .sub {
	border: 1px solid #c0c0c0;
}
 


.bg-white {
	background-color: white;
}

.container-fluid {
	padding-top: 20px;
 	padding-bottom: 20px;
	padding-right: 15px;
	padding-left: 15px;
	margin-right: auto;
	margin-left: auto; 
}
/*전체 배경 색상 끝 */

/*친구찾기 시작  */

.my1 {
	width: 50%;
	float: left;
}

.myimg {
	margin: 15px;
	width: 50px;
	height: 50px;
	float: left;
}


#p_zone {
	width: 100%;
	display: table;
}

#p1, #p2, #p3 {
	display: table-cell;
	
}

.bt {
	margin: 3%;
	float: right;
}
/*친구찾기 끝  */

/*메인화면시작*/

.p_img {
	width:90%;
	height:200px; 
	margin:15px;
}

/*메인화면끝*/
</style>

</head>
<body>
	<!-- 상단바 -->
	<%@include file="/inc/header.jsp"%>

	<!-- 친구 찾기 -->
	<div class="container-fluid bg-grey">

		<div class="row">
			<div class="col-sm-12"></div>

			<div class="col-sm-3"></div>

			<div class="row content">
				<div class="col-sm-6">
					<ul class="list-group">
						<li class="list-group-item">친구 찾기</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="col-sm-1"></div> 
	</div>
	
	<!-- 친구 찾기 for문 영역 -->
	<div class="row" >
		<div class="col-sm-3"></div>
		<div class="col-sm-6 bg-white wrapper">
		<div class="sub">
			<div class="my1">
				<a href="#"> <img src="/images/img1.jpg"
					class="img-circle myimg">
					<h3 id="userId" name="userId">
						adsdfdfdf<br></a> <small>secondary text</small>
				</h3>
			</div>
			<div>
				<button type="w3-button" class="btn btn-default bt" onClick="">팔로우</button>
			</div>
			<div id="p_zone" class="w3-row">
				<div id="p1" class="w3-col s4">
					<img src="/images/kr.jpg" class="p_img" >
				</div>
				<div id="p2" class="w3-col s4">
					<img src="/images/kr5.jpg" class="p_img">
				</div>
				<div id="p3" class="w3-col s4">
					<img src="/images/kr5.jpg" class="p_img" >
				</div>
			</div>
		</div>
		</div>
		<div class="col-sm-3"></div>
	</div>
	<!-- 친구 찾기 for문 영역 끝 -->

	<div class="col-sm-12"></div>


</body>
</html>