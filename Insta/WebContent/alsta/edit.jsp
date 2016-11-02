<%@page import="com.alsta.model.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	Member member=(Member)request.getAttribute("member");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insta</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
#container{
	width:100%;
	margin:auto;
}

.title{
	text-align:right;
}

</style>
<script>
function send(){
	if(form1.gender.value=='0'){
		alert("성별을 선택해 주세요");
		return;
	}
	alert("제출");
	form1.action="/alsta/updateDetail.do";
	form1.submit();
}
</script>
</head>
<body>
<%@include file="/inc/preview.jsp" %>
<%@include file="/inc/header.jsp" %>
<%out.print(member_id); %>
	<div class="container-fluid" >
		<div class="row content">
			<div class="col-sm-2 sidenav">
	      		<ul class="nav nav-pills nav-stacked">
			        <li class="active"><a href="/alsta/edit.do?member_id=<%=member.getMember_id()%>">Home</a></li>
			        <li><a href="/alsta/password.do?member_id=<%=member.getMember_id()%>">Menu 1</a></li>
		   		</ul>
	   		</div>
	  		<div class="col-sm-9" id="wrapper">
	  			<div class="form-group">
	  				<div class="row content">
		        		<div class="col-sm-3 col-xs-3 title">
		        			  <img src="/images/img1.jpg" class="img-circle" alt="Cinque Terre" width="60px">
		        		</div>
		        		<div class="col-sm-8 col-xs-8">
		        			<h2><%=member.getNick()%></h2>
		        		</div>
		        		<div class="col-sm-1 col-xs-1"></div>
		     		</div>
	  			</div>
	  			<form name="form1" method="post">
		  			<div class="form-group">
		  				<div class="row content">
			        		<div class="col-sm-3 col-xs-3 title">
			        			<input type="hidden" name="member_id" value="<%=member.getMember_id() %>">
			        			<label>이름</label>
			        		</div>
			        		<div class="col-sm-8 col-xs-8">
			        			<input type="text" class="form-control" name="name" value="<%=member.getName()%>">
			        		</div>
			        		<div class="col-sm-1 col-xs-1"></div>
			     		</div>
			     		<div class="row content">
			        		<div class="col-sm-3 col-xs-3 title">
			        			<label>사용자 이름</label>
			        		</div>
			        		<div class="col-sm-8 col-xs-8">
			        			<input type="text" class="form-control" name="nick" value="<%=member.getNick()%>">
			        		</div>
			        		<div class="col-sm-1 col-xs-1"></div>
			     		</div>
			     		<div class="row content">
			        		<div class="col-sm-3 col-xs-3 title">
			        			<label>소개</label>
			        		</div>
			        		<div class="col-sm-8 col-xs-8">
			        			<textarea class="form-control" rows="3" name="memo"><%=member.getMemo()%></textarea>
			        		</div>
			        		<div class="col-sm-1 col-xs-1"></div>
			     		</div>
		  			</div>
		  			<div class="form-group">
		  				<div class="row content">
		  					<div class="col-sm-3 col-xs-3 title">
			        		</div>
			        		<div class="col-sm-8 col-xs-8">
			        			<label>Privacy</label>
			        		</div>
			        		<div class="col-sm-1 col-xs-1"></div>
		  				</div>
		  				<div class="row content">
			        		<div class="col-sm-3 col-xs-3 title">
			        			<label>이메일</label>
			        		</div>
			        		<div class="col-sm-8 col-xs-8">
			        			<input type="text" class="form-control" name="email" value="<%=member.getEmail()%>">
			        		</div>
			        		<div class="col-sm-1 col-xs-1"></div>
			     		</div>
			     		<div class="row content">
			        		<div class="col-sm-3 col-xs-3 title">
			        			<label>전화번호</label>
			        		</div>
			        		<div class="col-sm-8 col-xs-8">
			        			<input type="text" class="form-control" name="phone" value="<%=member.getPhone()%>">
			        		</div>
			        		<div class="col-sm-1 col-xs-1"></div>
			     		</div>
			     		<div class="row content">
			        		<div class="col-sm-3 col-xs-3 title">
			        			<label>성별</label>
			        		</div>
			        		<div class="col-sm-8 col-xs-8">
			        			<select class="form-control" name="gender">
							        <option <%if(member.getGender()=="0"){%>selected<%}%> value="0">선택없음</option>
							        <option <%if(member.getGender()=="m"){%>selected<%}%> value="m">남</option>
							        <option <%if(member.getGender()=="f"){%>selected<%}%> value="f">여</option>
							    </select>
			        		</div>
			        		<div class="col-sm-1 col-xs-1"></div>
			     		</div>
			     		<div class="row content">
			        		<div class="col-sm-3 col-xs-3 title">
			        			<label>비슷한 계정 추천</label>
			        		</div>
			        		<div class="col-sm-8 col-xs-8">
			        			<label class="checkbox-inline">
							      <input type="checkbox" value="">팔로우할 만한 비슷한 계정을 추천할 때 회원님의 계정을 포함합니다.[?]
							    </label>
			        		</div>
			        		<div class="col-sm-1 col-xs-1"></div>
			     		</div>
		  			</div>
	  			</form>
	  			<div class="form-group">
	  				<div class="row content">
		        		<div class="col-sm-3 col-xs-3 title">
		        		</div>
		        		<div class="col-sm-8 col-xs-8">
		        			<button type="button" class="btn btn-primary" onClick="send()">제출</button>
		        		</div>
		        		<div class="col-sm-1 col-xs-1"></div>
		     		</div>
	  			</div>
  			</div>
  		</div>
  	</div>
</body>
</html>
<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBdo2PjA_dWjBgMKnhyzXiJz4PVFmrq9IE&callback=loadMap"/>