<%@ page contentType="text/html; charset=utf-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>ioigram</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
#main{
	width:40px;
	height:40px;
}
#page{
	width:500px;
	margin:auto;
}
#wrapper{
	width:500px;
	margin:auto;
}

</style>
<script>

</script>
</head>
<body>
<div>

<!-- 상단바 -->
<div class="well well-sm">
	<div class="row" id="head">
  		<div class="col-sm-4"><img id="main" src="/images/insta1.png"></div>
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
<div id="serch">
	 <table class="table">
    <thead>
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
      <tr>
        <td>Mary</td>
        <td>Moe</td>
        <td>mary@example.com</td>
      </tr>
      <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr>
    </tbody>
  </table>
</div>

<!-- 메인화면 -->
<div id="wrapper">

	<!-- 메인화면 상단 아이디 및 시간 부분 -->
	<div class="row content">
		<div class="col-sm-6 text-left">사진 zenxen</div>
		<div class="col-sm-6 text-right">1주전</div>  
	</div>

	<!-- 메인화면 중간 사진 부분 -->
	<div><img id="page" src="/images/kr5.jpg"></div>

	<!-- 메인화면 하단 댓글 보는 화면 -->
	<div>댓글</div>

	<!-- 댓글 쓰는 화면 -->
	<div class="form-group">
		<input type="text" class="form-control" placeholder="Enter Comment">
	</div>

</div>

</div>

</body>
</html>
