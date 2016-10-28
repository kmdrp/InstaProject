<%@page import="com.alsta.model.domain.Post"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	List <Post> postList = (List) request.getAttribute("post"); 
	/* List <Post> postList = (List)request.getAttribute("cpost"); */
%>
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
/*전체 배경 보더 설정*/
.wrapper{
	border:1px solid  #c0c0c0;
}
.bg-grey {
    background-color: white;
}
.bg-white{
	 background-color: white;
}
.container-fluid {
	padding-top:20px;
	padding-bottom:20px;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
}
/*전체 배경 색상 끝 */

/*친구찾기 시작  */
ul{
	
}
.my1{
	width:50%;
	float:left;
}
.myimg{
	margin:15px;
	width:50px;
	height:50px;
	float:left;
}
.bt{
	margin:3%;
	float:right;
}
/*친구찾기 끝  */

/*메인화면시작*/
#span_more{
	display:table-cell;
	vertical-align:middle;
}
#span_more button{
	background:white;
	border:0px;
	
}
#mainPage_gallery{
	padding:10px;
}
/*메인화면끝*/

</style>
<script>
/* 상단 글쓰기 버튼 모달 구성 */
function upload(){
	document.getElementById("upload").style.display="block";
}
function regist(i){
	commentRegist[i].action="/alsta/comments.do";
	commentRegist[i].submit();
	/* location.href="/alsta/comments.do?comments='test'" */
}

</script>
</head>
<body>
<!-- 상단바 -->
<%@include file="/inc/header.jsp" %>

<!-- 친구 찾기 -->
<div  class="container-fluid bg-grey">

	<div class="row">
		<div class="col-sm-12"></div>
		
		<div class="col-sm-3"></div>
		<div class="col-sm-6 bg-white wrapper">
			<div class="row content" >	
				<div class="col-sm-6" >
					<h3><small>회원님을 위한 추천</small></h3>
				</div>
				<div class="col-sm-6 text-right">
					<h3><small><a href="/alsta/friend.jsp">모두보기</a>></small></h3>
				</div>
			</div>
		</div>
		<div class="col-sm-3"></div>
	</div>

	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6 bg-white wrapper">
			<div class="my1" >
				<a href="#">
				<img src="/images/img1.jpg"  class="img-circle myimg">
				<h3 id="userId" name="userId" >adsdfdfdf<br>
				</a>
				<small>secondary text</small>
				</h3>
			</div>
			<div >
				<button type="w3-button" class="btn btn-default bt">팔로우</button>
			</div>
		</div>
		<div class="col-sm-3"></div>
	</div>

	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6 bg-white wrapper">
			<div class="my1" >
				<a href="#">
				<img src="/images/img1.jpg"  class="img-circle myimg">
				<h3 id="userId" name="userId" >ajfzoawhdk<br>
				</a>
				<small>secondary text</small>
				</h3>
			</div>
			<div class="right">
				<button type="w3-button" class="btn btn-default bt">팔로우</button>
			</div>
		</div>
		<div class="col-sm-3"></div>
	</div>

	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6 bg-white wrapper">
			<div class="my1" >
				<img src="/images/img1.jpg"  class="img-circle myimg">
				<h3 id="userId" name="userId" >adsdfdfdf<br><small>secondary text</small></h3>
			</div>
			<div class="right">
				<button type="w3-button" class="btn btn-default bt">팔로우</button>
			</div>
		</div>
		<div class="col-sm-3"></div>
	</div>
	
	<div class="col-sm-12"></div>

</div>

<%for(int i=0;i<postList.size();i++){ %>
<%Post post = postList.get(i); %>
<!-- 메인화면1 -->
<div  class="container-fluid bg-grey">
<div class="row">
	
	

	<div class="col-sm-3"></div>
	<div class="col-sm-6 bg-white wrapper">
	
		<!-- 메인화면 상단 아이디 및 시간 부분 -->
		<div class="row">
			<div class="col-sm-10 text-left">
				<a href="#">
				<img src="/images/kr5.jpg" class="img-circle" alt="Cinque Terre" width="50px" height="50px"> 
				
				<%=post.getMember_id() %>
				</a>
			</div>
			<div class="col-sm-2 text-center"><h4>1주전</h4></div>  
		</div>
	
		<!-- 메인화면 중간 사진 부분 -->
		<div id="mainPage_gallery"><img  src="/images/kr5.jpg" width="100%"></div>
	
		<!-- 메인화면 하단 댓글 보는 화면 -->
		<div>
		
			<h2><p>좋아요 1,649개</p></h2>
			<p><a href="#"><strong>zenxen</strong></a> 나이쁘지</p>
		
			<p><a href="#">#IOI #아이오아이 #JeonSomi #전소미 #Somi #소미 #JYP #Kpop #EnnikDouma 
			#IdealOfIdol #VeryVeryVery #너무너무너무</a></p>
			<p><a href="#">댓글 8개 모두 보기</a></p>
			<p><a href="#"><strong>irhamwp_Gede</strong></a> 이쁘다</p>
			<p><a href="#"><strong>noonghil</strong></a> 나랑결혼해죠</p>
			<p><a href="#"><strong>sofeax.coBae</strong></a> ㅎㅎㅎㅎ 조아</p>
			<p><a href="#"><strong>hannah_park19018</strong></a> 나도 봤음요</p>
			
		</div>
	
		<!-- 댓글 쓰는 화면 -->
		<div class="row">
			<div class="col-sm-1 btn-lg">
				<span class="glyphicon glyphicon-heart-empty "></span>
			</div>
			<div class="col-sm-9 ">
				<form name="commentRegist" method="post">
				
				<!-- post 및 member_id 저장 -->
				<input type="hidden" name="post_id" value="<%=post.getPost_id()%>">
				<input type="hidden" name="member_id" value="<%=post.getMember_id()%>">
				
				
				<input type="text" class="form-control" placeholder="Enter Comment" name="comments"><button onClick="regist(<%=i%>)">전송</button>
				</form>
			</div>
			<div class="col-sm-2">
				<span id="span_more"><button type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target="#btn_report"><img src="/images/more.png"></button></span>
			</div>
		</div>
		
	</div>
	<div class="col-sm-3"></div>
	<div class="col-sm-12"></div>
	
</div>
</div>
<!-- 메인화면1 끝 반복예정 -->
<%} %>

<!-- 메인화면2 -->
<div  class="container-fluid bg-grey">
<div class="row">

	<div class="col-sm-3"></div>
	<div class="col-sm-6 bg-white wrapper">
	
		<!-- 메인화면 상단 아이디 및 시간 부분 -->
		<div class="row">
			<div class="col-sm-10 text-left">
				<a href="#"><img src="/images/kr5.jpg" class="img-circle" alt="Cinque Terre" width="50px" height="50px"> zenxen</a>
			</div>
			<div class="col-sm-2 text-center"><h4>1주전</h4></div>  
		</div>
	
		<!-- 메인화면 중간 사진 부분 -->
		<div id="mainPage_gallery"><img  src="/images/kr1.jpg" width="100%"></div>
	
		<!-- 메인화면 하단 댓글 보는 화면 -->
		<div>
		
			<h2><p>좋아요 1,649개</p></h2>
			<p><a href="#"><strong>zenxen</strong></a> 나이쁘지</p>
		
			<p><a href="#">#IOI #아이오아이 #JeonSomi #전소미 #Somi #소미 #JYP #Kpop #EnnikDouma 
			#IdealOfIdol #VeryVeryVery #너무너무너무</a></p>
			<p><a href="#">댓글 8개 모두 보기</a></p>
			<p><a href="#"><strong>irhamwp_Gede</strong></a> 이쁘다</p>
			<p><a href="#"><strong>noonghil</strong></a> 나랑결혼해죠</p>
			<p><a href="#"><strong>sofeax.coBae</strong></a> ㅎㅎㅎㅎ 조아</p>
			<p><a href="#"><strong>hannah_park19018</strong></a> 나도 봤음요</p>
			
		</div>
	
		<!-- 댓글 쓰는 화면 -->
		<div class="row">
			<div class="col-sm-1 btn-lg">
				<span class="glyphicon glyphicon-heart-empty "></span>
			</div>
			<div class="col-sm-9 ">
				<input type="text" class="form-control" placeholder="Enter Comment">
			</div>
			<div class="col-sm-2">
				<span id="span_more"><button type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target="#btn_report"><img src="/images/more.png"></button></span>
			</div>
		</div>
		
	</div>
	<div class="col-sm-3"></div>
	<div class="col-sm-12"></div>
	
</div>
</div>
<!-- 메인화면2 끝-->

<!-- 신고하기 모달 구성 -->
 <div class="modal fade" id="btn_report" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content" style="width:100%">
      <div class="btn-group-vertical" style="width:100%";">
  			<button type="button" class="btn btn-default">부적절한 콘텐츠 신고</button>
  			<button type="button" class="btn btn-default">퍼가기</button>
  			<button type="button" class="btn btn-default">취소</button>
  	  </div>
      </div>
    </div>
  </div>

</body>
</html>
