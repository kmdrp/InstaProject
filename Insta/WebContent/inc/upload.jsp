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

#upload_img{
	float:left;
	width:
	
}
#upload_img button{
	background:white;
	border:none;
}
#upload_memo{
	background:white;
	width:373px;
	margin:0px;
}
#upload_memo textarea{
	resize:none;
}
.media-left{
	height:40px;
	margin:0px;
	width:373px;
	padding:0px;
}
#btn_tag,#btn_pin{
	display:table;
	width:373px;
}
.span_img{
	display:table-cell;
	vertical-align:middle;
}
.span_text{
	display:table-cell;
	vertical-align:middle;
	text-align:left;
	font-weight:bold
}
#container{
	width:373px;
	height:200px;
	background:white;
}
#upload_content{
	width:373px;
	float:left;
}
#btn_f,#btn_t,#btn_k,#btn_tb,#btn_l{
	margin:0 auto;
	width:185px;
	border:none;
	float:left;
	display:table;
}
.img_span{
	display:table-cell;
	vertical-align:middle;
	margin-bottom:4px;
	float:left;
}
.span_name{
	display:table-cell;
	float:left;
	vertical-align:middle;
}
#share{
	align:left;
	height:50px;
	font-size:20pt;
	font-weight:bold;
	padding:0px;
	width:373px;
	border-bottom:1px solid gray;
	display:table;
}
#span_share{
	display:table-cell;
	vertical-align:middle;
}
#group1,#group2{
	margin:0px;
	padding:0px;
}#reg{
	display:table;
	background:white;
	height:128px;
	width:373px;
}
#btn_regist{
	border:none;
}#btn_aln{
	display:table-cell;
	vertical-align:middle;
	margin:0 auto;
}
</style>
<script>
	function upload_file(){
		document.getElementById("input_file").click();
		
		
	}
	function closeAll(){
		var frame=document.getElementById("upload");
		frame.style.display="none";
	}
</script>
</head>
<body>

<div id="upload" class="w3-modal w3-gray" >
    <span class="w3-closebtn w3-text-white w3-opacity w3-hover-opacity-off w3-xxlarge w3-container w3-display-topright" id="span_x" onClick="closeAll()">×</span>
    <div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
    <div class="modal-content">
   		<div>
	   		<div id="upload_img">
	   			<input type="file" id="input_file" style="display:none;">
		   		<button type="button" onClick="upload_file()"><img src="/images/img_upload/upload_img.png" id="upload_img"></button>
	   		</div>
	   		<div id="upload_content">
		      	<div id="upload_memo" class="form-group">
		      		<textarea class="form-control"placeholder="설명 쓰기....." rows="5" id="comment"></textarea>
		      	</div>
		      	<div class="btn-group-vertical">
		      		<button type="button" class="btn btn-default" id="btn_tag"><span class="span_img"><img src="/images/img_upload/tag.png" id="well_object"class="media-object"></span><span class="span_text">사람 태그</span></button>
		      		<button type="button" class="btn btn-default" id="btn_pin"><span class="span_img"><img src="/images/img_upload/pin.png" id="well_object"class="media-object"></span><span class="span_text">위치 추가</span></button>
		      		
		      		
		      	</div>
		      	<div id="container" >
		      		<div id="share"><span id="span_share">공유하기</span></div>
			      	<div id="group1"class="btn-group-vertical media-left">
			      		<button type="button" class="btn btn-default" id="btn_f"><span class="img_span"><img src="/images/img_upload/facebook1.png" id="img_f"class="media-object"></span><span class="btn_name">FaceBook</span></button>
			      		<button type="button" class="btn btn-default" id="btn_t"><span class="img_span"><img src="/images/img_upload/twitter1.png"class="media-object"></span><span class="btn_name">Twitter</span></button>
			      		<button type="button" class="btn btn-default" id="btn_k"><span class="img_span"><img src="/images/img_upload/kakao1.png" class="media-object"></span><span class="btn_name">KakaoTalk</span></button>
			      	</div>
			      	<div id="group2"class="btn-group-vertical media-left">
			      		<button type="button" class="btn btn-default" id="btn_l"><span class="img_span"><img src="/images/img_upload/line1.png" class="media-object"></span><span class="btn_name">Line</span></button>
			      		<button type="button" class="btn btn-default" id="btn_tb"><span class="img_span"><img src="/images/img_upload/tumblr1.png" class="media-object"></span><span class="btn_name">Tumblr</span></button>
			      	</div>
		      	</div>
		      	<div id="reg" class="media-group">
		      		<span id="btn_aln"><button type="button" id="btn_regist" class="btn btn-primary media-right">사진 등록</button></span>		      		
		      	</div>
	      	</div>
      	</div>
      	
    </div>
     <!--  <p id="caption"></p>  캡션 추가하는 부분-->
    </div>
  </div>

</body>
</html>