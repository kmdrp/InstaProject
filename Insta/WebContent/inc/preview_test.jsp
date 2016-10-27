<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
#img_detail{
	margin:0 auto;
}
#w3_modal{
	padding:auto;
	margin:0 auto;
}
#modal{
	margin:0 auto;
}
/* #wrapper{
	margin:0px;
	padding:0px;
} */
#gallery{
	margin:0px;
	padding:0px;
	float:left;
}
#content{
	width:330px;
	background:yellow;
	float:left;
	margin:0px;
	display:table;
}
#info_writer{
	width:100%;
	height:70px;
	background:blue;
	display:table;
	padding:10px;
}
#img_writer,#id_writer,#follow_writer{
	display:table-cell;
	vertical-align:middle;
	margin:0px;
}
#img_writer{
	width:55px;
}
#id_writer{
	text-align:left;
}
#follow_writer{
	width:80px;
	margin-right:20px;
}
#info_content{
	height:40px;
	display:table;
	background:gray;
	width:100%;
}
#like_count,#post_time{
	display:table-cell;
	vertical-align:middle;
}
#like_count{
	margin-left:10px;
	text-align:left;
	font-weight:bold;
}
#div_comment{
	width:100%;
	background:orange;
}
#div_input{
	height:60px;
	display:table;
	padding:0px;
	margin:0px;
	background:white;
	margin-bottom:0px;
	vertical-align:middle;
}
.line4{
	display:table-cell;
	vertical-align:middle;
}
#div_input button{
	width:30px;
	border:none;
	background:white;
	float:left;
}
#div_input img{
	padding:0px;
}
#input_comment{
	width:250px;
	float:left;
	border:none;
	height:100%;
	margin:10px;
}
</style>
<script>
var img;
var wrapper;
var content;
var modal;
var div_mod;
var comment;
function init(){
	gallery=document.getElementById("gallery");
	img=document.getElementById("selected_img");
	wrapper=document.getElementById("wrapper");
	content=document.getElementById("content");
	modal=document.getElementById("modal");
	div_mod=document.getElementById("w3_modal");
	comment=document.getElementById("div_comment");
}/* 
window.addEventListener("load",function(){
	img.style.height="600px";
	 showSize();
	gallery.style.width=img.style.width;
	wrapper.style.width=gallery.style.width+content.style.width;
	modal.style.width=wrapper.style.width;
	div_mod.style.width=modal.style.width;
}); */
function roro(){
	document.getElementById("img_detail").style.display="block";
	imgSize();
	//alert(wrapper.style.width);
	/* wrapper.style.width=(img.naturalWidth)*(600/img.naturalHeight)+330+"px";
	wrapper.style.height=600+"px";
	modal.style.width=wrapper.style.width;
	modal.style.height=600+"px";
	alert("naWidty:"+img.naturalWidth+"&width"+img.style.width); */
}
function closeAll(){
	var frame=document.getElementById("img_detail");
	frame.style.display="none";
}
function imgSize(){
	var imgWidth=img.naturalWidth;
	var imgHeight=img.naturalHeight;
	if(imgWidth<=imgHeight){
		if(imgHeight>600){
			img.style.height=600+"px";
			wrapper.style.width=imgWidth*(600/imgHeight)+331+"px";
			content.style.height=600+"px";
			comment.style.height=430+"px";
		}else{
			img.style.width=imgWidth+"px";
			gallery.style.height=imgHeight+"px";
			gallery.style.width=imgWidth+"px";
			content.style.height=gallery.style.height;
			comment.style.height=imgHeight-170+"px";
			wrapper.style.width=imgWidth+331+"px";
			wrapper.style.height=content.style.height;
		}
	}
	modal.style.width=wrapper.style.width;
	modal.style.height=wrapper.style.height+"px";
}

function like(){
	var img_like=document.getElementById("img_like");
	if(!btn_red){
		img_like.src="/images/button/heart1.png";
		btn_red=true;
	}else{
		img_like.src="/images/button/heart.png";
		btn_red=false;
	}
}

</script>
</head>
<body onLoad="init()">

<div>
	<button type="button" onclick="roro()">open this</button>
</div>


<div id="img_detail" class="w3-modal w3-gray" >
    <span class="w3-closebtn w3-text-white w3-opacity w3-hover-opacity-off w3-xxlarge w3-container w3-display-topright" id="span_x" onClick="closeAll()">×</span>
    <div id="w3_modal"class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
    <div class="modal-content" id="modal">
   		<div id="wrapper">
   		<!-- wrapper height로 사진  height고정  -->
   			<!-- 사진들어가는  div -->
   			<div id="gallery">
				<img src="/images/ir12.jpg" id="selected_img">   				
   			</div>
   			<!-- 사진 정보 들어가는 div -->
   			<div id="content">
   				<!-- 글쓴이 정보  프사_아이디_팔로우 버튼(팔로우중이면 팔로잉+색깔변화)-->
   				<div id="info_writer">
   					<span id="img_writer"><img src="/images/ir4.jpg" id="profileImg" class="img-circle" width="40px" height="40px"></span>	
   					<span id="id_writer">irene_zonye</span>
   					<span id="follow_writer"><button type="button" class="btn btn-success">팔로잉</button></span>
   				</div>
   				<!-- 좋아요 갯수 (align-left)  시간경과(align-right) -->
   				<div id="info_content">
   					<span id="like_count">&nbsp;&nbsp;좋아요 9,409 개 </span>
   					<span id="post_time">3시간</span>
   				</div>
				<!-- 작성자 멘트 (맨위 고정) + 댓글     스크롤-->
				<div id="div_comment">
				</div>   			
				<!-- 좋아요 버튼 + 댓글 input + 신고버튼,퍼가기버튼,취소(따로뺴야겟다이거) -->
					
				<div id="div_input">
					<span class="line4"><button type="button" onClick="like()"><img id="img_like" src="/images/button/heart.png"></button></span>
					<span class="line4"><input type="text" class="form-control" placeholder="댓글달기..." id="input_comment"></span>
					<span class="line4"><button></button></span>
				</div>
   			</div>
      	</div>
    </div>
    </div>
</div>
</body>
</html>













