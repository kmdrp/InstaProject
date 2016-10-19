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
	width: 1000px;
	margin: 0 auto;
}

#p_zone {
	display: table;
}

#p1, #p2, #p3 {
	display: table-cell;
	height: 200px;
}
#sub{
	background:yellow;
}
#myimg{
	with:50px;
	height:50px;
	float:left;
}


</style>
<script>
	
</script>
</head>
<body>
	<div>
		<div class="well well-sm">
			<div class="row" id="head">
				<div class="col-sm-4">
					<img src="/images/insta1.png">
				</div>
				<div class="col-sm-4">
					<div class="well well-sm">
						<span class="glyphicon glyphicon-search"></span>검색
					</div>
				</div>
				<div class="col-sm-4">
					<span class="	glyphicon glyphicon-cloud"></span> <span
						class="glyphicon glyphicon-heart-empty"></span> <span
						class="glyphicon glyphicon-user"></span>
				</div>
			</div>
		</div>

		<div id="main" class="container">
			<ul class="list-group">
				<li class="list-group-item">사람 찾기</li>
			</ul>
			<div id="sub">
				<div id="my1">
					<img src="/images/img1.jpg" id="myimg"  class="img-circle">
					<h3>adsdfdfdf</h3>
					<h4>dfdfd</h4>
					<button type="button" class="btn btn-primary">Primary 7</button>
				</div>
			
				<div id="p_zone" class="w3-row">
					<div id="p1" class="w3-third">
						<img src="/images/kr.jpg" style="width: 90%;" onClick="onClick(/this)">
					</div>
					<div id="p2" class="w3-third">
						<img src="/images/kr3.jpg" style="width: 90%;" onClick="onClick(/this)">
					</div>
					<div id="p3" class="w3-third">
						<img src="/images/kr8.jpg" style="width: 90%;" onClick="onClick(/\this)">
					</div>
				</div>
			</div>
		</div>
</body>
</html>
