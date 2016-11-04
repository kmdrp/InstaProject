<%@page import="com.alsta.model.domain.Follow"%>
<%@page import="com.alsta.model.domain.Post"%>
<%@page import="java.util.List"%>
<%@page import="com.alsta.model.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@include file="/inc/preview.jsp" %>
<%
	Member member=(Member)request.getAttribute("member");
	List<Post> postList=(List)request.getAttribute("post");
	List<Follow> followList=(List)request.getAttribute("follow");
	List<Follow> followerList=(List)request.getAttribute("follower");
	/* System.out.println("follow size"+followList.size());
	System.out.println("post size:"+postList.size());
	System.out.println("member_id:"+member.getMember_id());
	System.out.println("follower size:"+followerList.size());
	*/
	String profile_img=member.getProfile_img();
	// 이미지 찍어보고 null 이면 default 이미지  등록  ...불러와서 null이면 default 로 설정해야할지 애초에 default이미지를 넣어둘지 .....
	//오라클에서 null 일때 varchar에도 default 되는지 알아보고.
	if(member.getProfile_img()==null){
		profile_img="default.png";     
	}else{
		profile_img=member.getProfile_img();
	}
	//profile 사진 업데이트,
	
	//follow follower명단  띄우기 
	
	//post 불러오기 
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>알로에그램</title>
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
#post1,#post2,#post3{
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

#btn_img,#btn_profile,#btn_more,#span_more{
	background:white;
}
</style>
<script>
var img;


var post1;
var post2;
var post3;

function init(){
	init1();
	post1=document.getElementById("post1");
	post2=document.getElementById("post2");
	post3=document.getElementById("post3");
}

function viewImg(element){
	img=document.getElementById("selected_img");
	img.src=element.src;
	document.getElementById("gallery_view").style.display="block";
	imgSize();
	//document.getElementById("gallery_view").style.height=element.height;
	/* var captionText= 캡션추가가능 */
	posting();
	
}
function myId(){
	document.getElementById("btn_logout").style.display="block";
}
//t사진업로드
function upload(){
	
	document.getElementById("upload").style.display="block";
	
}
function logout(){
	$.ajax({
		url:"/alsta/logout.do",
		success:function(result){
			if(result=="logOut"){
				location.redirect;
			}
		}
	});
}

function change_profile_img(){
	
	document.getElementById("p_img").style.display="block";
	
}


function change_profile(){
	document.getElementById("profileImg").style.display="block";
}
function close_view(){
	document.getElementById("gallery_view").style.display="none";
}
function del_profileImg(){
	//프로필 이미지  삭제
	if(confirm("현재 프로필 이미지를 삭제 하시겠습니까?")){
		
		
	}
}
function update_profileImg(){
	//프로필 이미지 변경 
	
}
function posting(){
	
	<%for(int i=0;i<postList.size();i++){
		Post post=postList.get(i);
		%>
		var img=document.createElement("img");
		/* i%3=1 document.getElementById("post1").appendChild()
		i%3=2 div2
		i%3=0 div3 */
		<%if(i%3==0){%>
			post1.appendChild(img);
			img.setAttribute("src","<%=post.getPath()%>");
			img.setAttribute("id","<%=post.getPost_id()%>");
			<%System.out.println("post1 +"+i);%>
			//img.addEventListener("click",function imgView(this));
		<%}else if(i%3==1){%>
			post2.appendChild(img);
			img.setAttribute("src","<%=post.getPath()%>");
			img.setAttribute("id","<%=post.getPost_id()%>");
			<%System.out.println("post1 +"+i);%>
			//img.addEventListener("click",function imgView(this));
		<%}else if(i%3==2){%>
			post3.appendChild(img);
			img.setAttribute("src","<%=post.getPath()%>");
			img.setAttribute("id","<%=post.getPost_id()%>");
			<%System.out.println("post1 +"+i+"&path: "+post.getPath());%>
			//img.addEventListener("click",function imgView(this));
		<%}%>
	<%}%>
	
}
	 	
</script>
</head>
<body onLoad="init()">
	<!-- 상단바 -->
	<%@include file="/inc/header.jsp"%>
	<div id="main">
	<div class="row" id="profile">
		<div id="profile_photo" class="col-md-4" style="align:center; vertical-align:middle; ">




			<button id="btn_img">
				<img src="/images/profile/<%=profile_img %>" id="p_img" class="img-circle" alt="Cinque Terre" width="180" height="180" onClick="change_profile()" >

			</button>
		</div>
		<div id="profile_detail" class="col-md-8">
				<p id="line1"><span id="id_profile" style="float:left;"><strong><%=member.getNick() %></strong></span>
				<span id="span_btn"><a href="/alsta/edit.do"><button id="btn_profile" type="button" class="btn btn-default" onClick="edit_profile()"><strong>프로필 편집</strong></button></a></span>
				<span id="span_more"><button><img id="btn_more" src="/images/more.png" onClick="myId()"></button></span>
				</p>
				<p id="line2"> 게시물<strong><%=postList.size() %></strong> 개&nbsp;&nbsp; 팔로워 <strong><%=followerList.size() %></strong>명  팔로우<strong><%=followList.size() %></strong>명 </p> 
				<!-- <div id="line1"> <input type="text" value="ajfzoa">
				<button type="button" class="btn btn-default">프로필 편집</button></div> -->
				<p id="line3"><strong><%=member.getName() %></strong>&nbsp;&nbsp;&nbsp;<%=member.getMemo() %></p>
		</div>
	</div>	
	<div id="p_zone" class="w3-row">
			<div id="post1" class="w3-third">
				<img src="/images/post/ir4.jpg" onClick="viewImg(this)">
				<img src="/images/post/ir9.jpg" onClick="viewImg(this)">
				<img src="/images/post/irf.jpg" onClick="viewImg(this)">
			</div>
			<div id="post2" class="w3-third">
				<img src="/images/post/kr4.png" onClick="viewImg(this)">
				<img src="/images/post/kr5.jpg" onClick="viewImg(this)">
			</div>
			<div id="post3"class="w3-third">
				<img src="/images/post/kr8.jpg" onClick="viewImg(this)">
				<img src="/images/post/kr7.jpg" onClick="viewImg(this)">
			</div>
	</div>
	
  <div id="profileImg" class="w3-modal w3-gray" onclick="this.style.display='none'">
  	<div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
  		<div class="btn-group-vertical" style="width:400px;margin-top:100px;">
  			<button type="button"  class="btn btn-default" disabled>프로필 사진 바꾸기</button>
  			<button type="button" class="btn btn-default" onClick="del_profileImg()">현재 사진 삭제</button>
  			<button type="button" class="btn btn-default" onClick="update_porfileImg()">사진 업로드</button>
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
</body>
</html>





