<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	margin:auot;
}
#wrapper{
	margin:auto;
	width:80%;
}
.col-sm-4{
	text-align:right;
}

</style>
</head>
<body>
	<div class="container" >
		<div class="row content">
			<div class="col-sm-2 sidenav">
	      		<ul class="nav nav-pills nav-stacked">
			        <li><a href="/my/account/edit.jsp">Home</a></li>
			        <li  class="active"><a href="/my/account/password/change.jsp">Menu 1</a></li>
			        <li><a href="#">Menu 2</a></li>
			        <li><a href="#">Menu 3</a></li>
		   		</ul>
	   		</div>
	  		<div class="col-sm-9" id="wrapper" >
	  			<div class="form-group">
	  				<div class="row content">
		        		<div class="col-sm-4">
		        			  <img src="/images/img1.jpg" class="img-circle" alt="Cinque Terre" width="60px">
		        		</div>
		        		<div class="col-sm-8">
		        			<h2>ajfzoa</h2>
		        		</div>
		     		</div>
	  			</div>
	  			<form>
		  			<div class="form-group">
		  				<div class="row content">
			        		<div class="col-sm-4">
			        			<label for="pwd">이전 비밀번호</label>
			        		</div>
			        		<div class="col-sm-8">
			        			<input type="password" class="form-control"  nama="pwd_prev">
			        		</div>
			     		</div>
			     		<div class="row content">
			        		<div class="col-sm-4">
			        			<label for="pwd">새 비밀번호</label>
			        		</div>
			        		<div class="col-sm-8">
			        			<input type="password" class="form-control"  nama="pwd_new">
			        		</div>
			     		</div>
			     		<div class="row content">
			        		<div class="col-sm-4">
			        			<label for="pwd">새 비밀번호 확인</label>
			        		</div>
			        		<div class="col-sm-8">
			        			<input type="password" class="form-control"  nama="pwd_ch">
			        		</div>
			     		</div>
		  			</div>
	  			</form>
	  			<div class="form-group">
	  				<div class="row content">
		        		<div class="col-sm-4">
		        		</div>
		        		<div class="col-sm-8">
		        			<button type="button" class="btn btn-primary">변경</button>
		        		</div>
		     		</div>
	  			</div>
  			</div>
  		</div>
  	</div>
</body>
</html>