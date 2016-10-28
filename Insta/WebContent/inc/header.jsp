<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@include file="/inc/upload.jsp" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.nav_header div{
	display: flex;
}
.nav_middle, .nav_right{
	align-self: center;
}

.nav_list li{
	display: inline-block;
}
.nav_list li a{
	padding-top:0px;
	padding-bottom:0px;
}
.nav_list li a span{
	font-size:20px;
}
#nav_img{
	width:100%;
}

.input-group{
	margin-left:auto;
	margin-right:auto;
}
</style>
<script>
function upload(){
	document.getElementById("upload").style.display="block";
}
$(document).ready(function(){
    $('[data-toggle="popover"]').popover({content: "Text in popover body",placement: "bottom"});
   
});
</script>
<body>
	<!-- 상단바 -->
<div class="navbar navbar-default bg-white nav_header">
	<div class="row" >
  		<!-- 메인이미지 -->
  		<div class="col-sm-4 col-xs-4 nav_left" id="nav_left">
  			<span id="nav_img">
  				<a href="/alsta/post.do"><img  align="right" src="/images/insta1.png" height="100%"></a>
  			</span>
  		</div>		
 		<!-- 검색 -->
 		<div class="col-sm-8 col-xs-8 nav_middle" >
 			<div class="input-group">
       			<input type="text" class="form-control" id="intput_search" placeholder="Search..">
     		 </div>
      	</div>
		
		<!-- 버튼 4개 -->
		<div class="col-sm-4 col-xs-4 nav_right" height="100%">
			<ul class="nav navbar-nav nav_list">
				<li><a href="javascript:upload()"><span class="glyphicon glyphicon-camera icon_nav"></span></a></li>
  				<li><a href="/alsta/friend.jsp" ><span class="glyphicon glyphicon-user icon_nav" ></span></a></li>
  				<li><a href="#" data-toggle="popover"><span class="glyphicon glyphicon-globe" ></span></a></li>
  				<li><a href="/alsta/profile.jsp"><span class="glyphicon glyphicon-home icon_navx"></span></a></li>
  			</ul>
  		</div>
	</div>
</div>
</body>