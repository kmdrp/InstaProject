<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/inc/upload.jsp" %>
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

</style>
<script>
function upload(){
	document.getElementById("upload").style.display="block";
}
</script>

	<!-- 상단바 -->
<div class="navbar navbar-default bg-white nav_header">
	<div class="row" >
  		<!-- 메인이미지 -->
  		<div class="col-sm-4 col-xs-4 nav_left"><img src="/images/insta1.png" height="100%"></div>
 		
 		<!-- 검색 -->
 		<div class="col-sm-4 col-xs-4 nav_middle" >
 			<div class="input-group">
       			<input type="text" class="form-control" placeholder="Search..">
     		 </div>
      	</div>
		
		<!-- 버튼 4개 -->
		<div class="col-sm-4 col-xs-4 nav_right" height="100%">
			<ul class="nav navbar-nav nav_list">
				<li><a href="javascript:upload()"><span class="glyphicon glyphicon-camera icon_nav"></span></a></li>
  				<li><a href="/"><span class="glyphicon glyphicon-cloud icon_nav"></span></a></li>
  				<li><a href="/searchFriend/searchFriend.jsp"><span class="glyphicon glyphicon-heart-empty icon_nav"></span></a></li>
  				<li><a href="/my/profile.jsp"><span class="glyphicon glyphicon-user icon_navx"></span></a></li>
  			</ul>
  		</div>
	</div>
</div>
