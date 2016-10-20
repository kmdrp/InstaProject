<%@ page contentType="text/html; charset=utf-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>ioigram</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
#main {
	
	margin:10px;
}

#p_zone {
	width:100%;
	display: table;

}

#p1, #p2, #p3 {
	display: table-cell;
	height: 200px;
}
#sub{
	border:1px solid blue;
	with:100%;
	
	margin:auto;
}
#myimg{
	margin:15px;
	with:50px;
	height:50px;
	float:left;
}
#my1{
	width:50%;
	float:left;
}


#bt{
	margin:20px;
	float:right;
}
</style>
<script>
	
</script>
</head>
<body>
	<div>
		<!-- 상단 친구 찾기 부분 -->
		<div class="well well-sm">
			<div class="row" id="head">
				<div class="col-sm-4">
					<img src="/images/insta1.png">
				</div>
				<div class="col-sm-4">
						<span><input class="form-control" id="searchFriend" type="text" value="검색"></span>
				</div>
				<div>
					<span class="	glyphicon glyphicon-cloud"></span> 
					<span class="glyphicon glyphicon-heart-empty"></span> 
					<span class="glyphicon glyphicon-user"></span>
				</div>
			</div>
		</div>

		<div id="main" class="container-fluid">
			<ul class="list-group">
				<li class="list-group-item">사람 찾기</li>
			</ul>
			<!-- 친구 정보 -->
			<div id="sub" class="row-fluid">
				<div id="my1" >
					<img src="/images/img1.jpg" id="myimg"  class="img-circle">
					<h3 id="userId" name="userId" >adsdfdfdf<br><small>secondary text</small></h3>
					
				</div>
				<div class="right">
				
					<button type="w3-button" class="btn btn-default " id="bt">팔로우</button>
				
				</div>
				
				<div id="p_zone" class="w3-row">
					<div id="p1" class="w3-third">
						<img src="/images/kr.jpg" style="width: 90%;" onClick="onClick()">
					</div>
					<div id="p2" class="w3-third">
						<img src="/images/kr3.jpg" style="width: 90%;" onClick="onClick()">
					</div>
					<div id="p3" class="w3-third">
						<img src="/images/kr8.jpg" style="width: 90%;" onClick="onClick()">
					</div>
				</div>
			</div>
		</div>
		<!-- 친구 정보 끝 -->
		<div id="main" class="container-fluid">
		<div id="sub" class="row-fluid">
				<div id="my1" >
					<img src="/images/img1.jpg" id="myimg"  class="img-circle">
					<h3 id="userId" name="userId" >adsdfdfdf<br><small>secondary text</small></h3>
					
				</div>
				<div class="right">
				
					<button type="w3-button" class="btn btn-default " id="bt">팔로우</button>
				
				</div>
				
				<div id="p_zone" class="w3-row">
					<div id="p1" class="w3-third">
						<img src="/images/kr.jpg" style="width: 90%;" onClick="onClick()">
					</div>
					<div id="p2" class="w3-third">
						<img src="/images/kr3.jpg" style="width: 90%;" onClick="onClick()">
					</div>
					<div id="p3" class="w3-third">
						<img src="/images/kr8.jpg" style="width: 90%;" onClick="onClick()">
					</div>
				</div>
			</div>
		</div>
		<div id="main" class="container-fluid">
		<div id="sub" class="row-fluid">
				<div id="my1" >
					<img src="/images/img1.jpg" id="myimg"  class="img-circle">
					<h3 id="userId" name="userId" >adsdfdfdf<br><small>secondary text</small></h3>
					
				</div>
				<div class="right">
				
					<button type="w3-button" class="btn btn-default " id="bt">팔로우</button>
				
				</div>
				
				<div id="p_zone" class="w3-row">
					<div id="p1" class="w3-third">
						<img src="/images/kr.jpg" style="width: 90%;" onClick="onClick()">
					</div>
					<div id="p2" class="w3-third">
						<img src="/images/kr3.jpg" style="width: 90%;" onClick="onClick()">
					</div>
					<div id="p3" class="w3-third">
						<img src="/images/kr8.jpg" style="width: 90%;" onClick="onClick()">
					</div>
				</div>
			</div>
		</div>
		<div id="main" class="container-fluid">
		<div id="sub" class="row-fluid">
				<div id="my1" >
					<img src="/images/img1.jpg" id="myimg"  class="img-circle">
					<h3 id="userId" name="userId" >adsdfdfdf<br><small>secondary text</small></h3>
					
				</div>
				<div class="right">
				
					<button type="w3-button" class="btn btn-default " id="bt">팔로우</button>
				
				</div>
				
				<div id="p_zone" class="w3-row">
					<div id="p1" class="w3-third">
						<img src="/images/kr.jpg" style="width: 90%;" onClick="onClick()">
					</div>
					<div id="p2" class="w3-third">
						<img src="/images/kr3.jpg" style="width: 90%;" onClick="onClick()">
					</div>
					<div id="p3" class="w3-third">
						<img src="/images/kr8.jpg" style="width: 90%;" onClick="onClick()">
					</div>
				</div>
			</div>
		</div>
</body>
</html>
