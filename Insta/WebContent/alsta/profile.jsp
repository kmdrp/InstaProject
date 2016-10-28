<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="/inc/upload.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insta</title>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body{
	
	background:white;
	align:center;
	background:#F6F6F6;
}

#main{
	width:1000px;
	margin:0 auto;
}
#profile{
	align:center;
	width:100%;
	height:200px;
	
}
#profile_photo{
	height:100%;
	/* border:1px solid black; */
	float:left;
	padding-left:80px;
	padding-top:5px;
}
#profile_photo img{
	padding:10px;
}
#profile_detail{
	height:100%;
/* 	border:1px solid black;
 */	float:left;
	text-align:left;
}
#p_zone{
	display:table;
}
#p1,#p2,#p3{
	display:table-cell;
	height:333px;
}
#line1{
	display:table;
	height:60px;
	margin:10px;
}
#id_profile{
	display:table;
	font-size:25pt;
	font-weight:bold;
	margin:10px;
}
#line2,#line3{
	font-size:13pt;
	margin:10px;
	height:40px;
	text-align:left;
	vertical-align:middle;
}
button{
	float:left;
}
pre{
	background:#F6F6F6;
}
#span_btn{
	display:table-cell;
	vertical-align:middle;
}
#span_more{
	display:table-cell;
	vertical-align:middle;
}
#span_more button{
	background:#F6F6F6;
	border:0px;
}
/* 프로필편집 버튼 */
#btn_profile{
	color:#A6A6A6;
	float:left;
	margin-top:10px;
	background:#F6F6F6;
	border:1px solid #8C8C8C;
}
/* 프로필사진 */
#btn_img{
	border:0px;
	background:#F6F6F6;
}
strong{
	font-weight:bold;
}
.w3-third img{
	padding:15px;
	height:333px;
	width:100%;
}
.w3-third img:hover{
	opacity:0.6;
}

#info_uploader span{
	float:left;
}
#img_nav_main{
	margin-left:350px;
}
#nav_list ul li{
	display:table;
}
#nav navbar_nav{
	display:table-cell;
	vertical-align:middle;
}
#div_navhead{
	display:table;	
}
#nav_upload{
	display:table;
}
.nav_element{
	display:table-cell;
	vertical-align:middle;
}
#span_navhead{
	display:table-cell;
	vertical-align:middle;
}
.well{
	display:block;
	margin:auto;
	width:200px;
	margin-top:10px;
	text-align:center;
	height:30px;
}
/* #search{
	display:table-cell;
	vertical-align:middle;
} */
#img_nav_main{
	margin-top:0px;
}
#nav_upload button{
	border:none;
	background:white;
}
</style>
</head>
<body>
	<!-- 상단바 -->
	<%@include file="/inc/header.jsp"%>
	
	<div id="main">
	<div class="row" id="profile">
		<div id="profile_photo" class="col-md-4" style="align:center; vertical-align:middle; ">
			<button id="btn_img">
				<img src="/images/img1.jpg" id="p_img" class="img-circle" alt="Cinque Terre" width="180" height="180" onClick="change_profile_img()" >
			</button>
		</div>
		<div id="profile_detail" class="col-md-8">
				<p id="line1"><span id="id_profile" style="float:left;"><strong>ajfzoa</strong></span>
				<span id="span_btn"><a href="/alsta/edit.do"><button id="btn_profile" type="button" class="btn btn-default" onClick="edit_profile()"><strong>프로필 편집</strong></button></a></span>
				<span id="span_more"><button><img src="/images/more.png" onClick="myId()"></button></span>
				</p>
				<p id="line2"> 게시물<strong> 6</strong> 개&nbsp;&nbsp; 팔로워 <strong>100</strong>명  팔로우<strong> 100</strong>명 </p> 
				<!-- <div id="line1"> <input type="text" value="ajfzoa">
				<button type="button" class="btn btn-default">프로필 편집</button></div> -->
				<p id="line3"><strong> 박경리 </strong> 안녕하세요 멀티캠퍼스 경리 박경리입니다.</p>
		</div>
	</div>	
	
	<div id="p_zone" class="w3-row">
			<div id="p1" class="w3-third">
				<img src="/images/kr.jpg" onClick="onClick(this)">
				<img src="/images/kr4.png" onClick="onClick(this)">
				<img src="/images/kr1.jpg" onClick="onClick(this)">
				
			</div>
			<div id="p2" class="w3-third">
				<img src="/images/kr3.jpg" onClick="onClick(this)">
				<img src="/images/kr5.jpg" onClick="onClick(this)">
			</div>
			<div id="p3"class="w3-third">
				<img src="/images/kr8.jpg" onClick="onClick(this)">
				<img src="/images/kr7.jpg" onClick="onClick(this)">
			</div>
			
	</div>
	<div id="mainImg" class="w3-modal w3-gray" onclick="this.style.display='none'">
    <span class="w3-closebtn w3-text-white w3-opacity w3-hover-opacity-off w3-xxlarge w3-container w3-display-topright">×</span>
    <div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
    <div class="modal-content">
   		<div id="modal_img">
	   		<img id="img01" class="w3-image">
   		</div>
      	<div id="modal_content" role="dialog">
      		<div id="info_uploader">
      			<span id="img_small"><img src="/images/img1.jpg" id="p_img" class="img-circle" alt="Cinque Terre" width="50" height="50"></span>
      			<span> ajfzoa </span>
      		</div>	
      		<div id="comments"></div>	
      		<div id="input_comments"></div>
      	</div>
    </div>
     <!--  <p id="caption"></p>  캡션 추가하는 부분-->
    </div>
  </div>
  <div id="profile_img" class="w3-modal w3-gray" onclick="this.style.display='none'">
  	<div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
  		<div class="btn-group-vertical" style="width:400px;margin-top:100px;">
  			<button type="button"  class="btn btn-default" disabled>프로필 사진 바꾸기</button>
  			<button type="button" class="btn btn-default">현재 사진 삭제</button>
  			<button type="button" class="btn btn-default">사진 업로드</button>
  			<button type="button" class="btn btn-default">취소</button>
  		</div>
  	</div>
  </div>
  <div id="btn_logout" class="w3-modal w3-gray" onclick="this.style.display='none'">
  	<div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
  		<div class="btn-group-vertical" style="width:400px;margin-top:100px;">
  			<button type="button" class="btn btn-default" onClick="logout()">로그아웃</button>
  			<button type="button" class="btn btn-default">취소</button>
  		</div>
  	</div>
  </div>
  </div>
  
<script>
//클릭했을때 modal 이벤트
	function onClick(element){
		document.getElementById("img01").src=element.src;
		document.getElementById("mainImg").style.display="block";
		document.getElementById("mainImg").style.height=element.height;
		/* var captionText= 캡션추가가능 */
	}
	function change_profile_img(){
		document.getElementById("profile_img").style.display="block";
	}
	function logout(){
		alert("로그아웃되었습니다.");		
	}
	function myId(){
		document.getElementById("btn_logout").style.display="block";
	}
	function active_search(){
		//클릭으로 search 창 활성화 
	}
	//사진 업로드 버튼
	function upload(){
		document.getElementById("upload").style.display="block";
	}
	
</script>
	
</body>
</html>





