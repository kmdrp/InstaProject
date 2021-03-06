<%@page import="java.util.ArrayList"%>
<%@page import="com.alsta.model.domain.Member"%>
<%@page import="com.alsta.model.domain.Follow"%>
<%@page import="com.alsta.model.domain.Post"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	
	List<Follow>list=(List)request.getAttribute("list");
	System.out.println("list size는 "+list.size());
	
%>
<!DOCTYPE html>
<html>
<head>
<title>알로에그램</title>
<meta charset="UTF-8">
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
	margin:10px;
}

/*메인화면끝*/
</style>
<script>

function followRegist(i){
	if(<%=list.size()%>>1){
		
		form1[i].action="/alsta/follow.do";
		form1[i].submit();
	}else{
		
		form1.action="/alsta/follow.do";
		form1.submit();
	}
}

function goMain(a){
	location.href="/alsta/yPost.do?member_id="+a;
}
</script>
</head>
<body>
	<!-- 상단바 -->
	<%@include file="/inc/preview.jsp" %>
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
	<%for(int i=0;i<list.size();i++){ %>
	<%Follow follow=list.get(i); %>
	<%Member member=follow.getMemberl(); %>
	<%ArrayList<Post> post=(ArrayList)follow.getPostList(); %>
	<%System.out.print("post size 는"+post.size()); %>
	<form class="form-horizontal" name="form1" method="post">
	<input type="hidden" value="<%=follow.getYou() %>" name="you">
	<input type="hidden" value="<%=member_id %>" name="me">
	<div class="row" >
		<div class="col-sm-3"></div>
		<div class="col-sm-6 bg-white wrapper">
		<div class="sub">
			<div class="my1">
				 <img src="/images/profile/<%=member.getProfile_img() %>"
					class="img-circle myimg" onClick="goMain(<%=follow.getYou() %>)">
					<h3 id="userId" name="userId">
						<%=member.getName() %><br></a> <small><%=member.getNick() %></small>
				</h3>
			</div>
			<div>
				<button class="btn btn-default bt" onClick="followRegist(<%=i%>)">팔로우</button>
			</div>
			
			<div id="p_zone" class="w3-row">
			<%for(int a=0;a<post.size();a++){ %>
			<%if(a>2)break; %>
				<div id="p<%=a+1 %>" class="w3-col s4">
					<img src="/images/post/<%=post.get(a).getPath() %>" class="p_img" >
				</div>
			<%} %>
			</div>
		</div>
		</div>
		<div class="col-sm-3"></div>
	</div>
	</form>
	
	<%} %>
	<!-- 친구 찾기 for문 영역 끝 -->
	
	<div class="col-sm-12"></div>


</body>
</html>
	<!-- 친구 찾기 for문 영역 끝 -->
	<div class="col-sm-12"></div>

</body>
</html>
