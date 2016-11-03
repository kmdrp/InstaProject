<%@page import="com.alsta.model.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	Member member=(Member)request.getAttribute("member");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insta</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
#container{
	width:100%;
	margin:auto;
}
.div_title{
	text-align:right;
}
.title{
	text-align:right;
}


</style>
<script>
function changePassword(){
	if(form1.pwd_prev.value!="<%=member.getPassword()%>"){
		alert("비밀번호가 틀렸습니다.");
		return;
	}
	alert("하하");
	if(form1.password.value!=form1.pwd_ch.value){
		alert("변경할 비밀번호가 일치하지 않습니다.");
		return;
	}
	alert("비밀번호 변경");
	form1.action="/alsta/updatePassword.do";
	form1.submit();
}
</script>
</head>
<body>
<%@ include file="/inc/preview.jsp" %>
<%@ include file="/inc/header.jsp" %>
	<div class="container" >
		<div class="row content">
			<div class="col-sm-2 sidenav">
	      		<ul class="nav nav-pills nav-stacked">
			        <li><a href="/alsta/edit.do?member_id=<%=member.getMember_id()%>">Home</a></li>
			        <li class="active"><a href="/alsta/password.do?member_id=<%=member.getMember_id()%>">Menu 1</a></li>
		   		</ul>
	   		</div>
	  		<div class="col-sm-9" id="wrapper">
	  			<div class="form-group">
	  				<div class="row content">
		        		<div class="col-sm-3 col-xs-3 title">
		        			  <img src="/images/profile/<%=member.getProfile_img()%>" class="img-circle" alt="Cinque Terre" width="60px">
		        		</div>
		        		<div class="col-sm-8 col-xs-8">
		        			<h2><%=member.getNick() %></h2>
		        		</div>
		        		<div class="col-sm-1 col-xs-1"></div>
		     		</div>
	  			</div>
	  			<form name="form1" method="post">
		  			<div class="form-group">
		  				<div class="row content">
			        		<div class="col-sm-3 col-xs-3 title">
			        			<label for="pwd">이전 비밀번호</label>
			        		</div>
			        		<div class="col-sm-8 col-xs-8">
			        			<input type="password" class="form-control"  name="pwd_prev">
			        		</div>
			        		<div class="col-sm-1 col-xs-1"></div>
			     		</div>
			     		<div class="row content">
			        		<div class="col-sm-3 col-xs-3 title">
			        			<label for="pwd">새 비밀번호</label>
			        		</div>
			        		<div class="col-sm-8 col-xs-8">
			        			<input type="password" class="form-control"  name="password">
			        			<input type="hidden" name="member_id" value="<%=member.getMember_id()%>">
			        		</div>
			        		<div class="col-sm-1 col-xs-1"></div>
			     		</div>
			     		<div class="row content">
			        		<div class="col-sm-3 col-xs-3 title">
			        			<label for="pwd">새 비밀번호 확인</label>
			        		</div>
			        		<div class="col-sm-8 col-xs-8">
			        			<input type="password" class="form-control"  name="pwd_ch">
			        		</div>
			        		<div class="col-sm-1 col-xs-1"></div>
			     		</div>
		  			</div>
	  			</form>
	  			<div class="form-group">
	  				<div class="row content">
		        		<div class="col-sm-3 col-xs-3">
		        		</div>
		        		<div class="col-sm-8 col-xs-8">
		        			<button type="button" class="btn btn-primary" onClick="changePassword()">변경</button>
		        		</div>
		        		<div class="col-sm-1 col-xs-1"></div>
		     		</div>
	  			</div>
  			</div>
  		</div>
  	</div>
</body>
</html>