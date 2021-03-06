<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	int member_id = (int) session.getAttribute("member_id");
%>
<style>
.modal-content {
	width: 800px;
}

#btn_load_img {
	width: 500px;
	height: 600px;
	margin: 0px;
	padding: 0px;
}

#img_default {
	width: 500px;
	height: 600px;
	margin: 0;
	padding: 0px;
}

#upload_img {
	float: left;
	width: 500px;
	height: 600px;
}

#upload_img button {
	background: white;
	border: none;
}

#upload_memo {
	background: white;
	width: 298px;
	margin: 0px;
}

#upload_memo textarea {
	resize: none;
}

.media-left {
	height: 40px;
	margin: 0px;
	width: 398px;
	padding: 0px;
}

#btn_tag, #btn_pin {
	display: table;
	width: 298px;
}

.span_img {
	display: table-cell;
	vertical-align: middle;
}

.span_text {
	display: table-cell;
	vertical-align: middle;
	text-align: left;
	font-weight: bold
}

#container {
	width: 298px;
	background: white;
}

#upload_content {
	width: 298px;
	float: left;
	height: 600px;
	background: white;
}

#btn_f, #btn_t, #btn_k, #btn_tb, #btn_l {
	margin: 0 auto;
	width: 149px;
	border: none;
	float: left;
	display: table;
}

.img_span {
	display: table-cell;
	vertical-align: middle;
	margin-bottom: 4px;
	float: left;
}

.span_name {
	display: table-cell;
	float: left;
	vertical-align: middle;
}

#share {
	align: left;
	height: 50px;
	font-size: 20pt;
	font-weight: bold;
	padding: 0px;
	width: 298px;
	border-bottom: 1px solid gray;
	display: table;
}

#span_share {
	display: table-cell;
	vertical-align: middle;
}

#group1, #group2 {
	margin: 0px;
	padding: 0px;
}

#reg {
	display: table;
	background: white;
	width: 298px;
	margin-top: 110px;
}

#btn_regist {
	border: none;
}

#btn_aln {
	margin-right: 10px;
	float: right;
}
</style>
	
</head>
<body>
	<div id="upload" class="w3-modal w3-gray">
		<span
			class="w3-closebtn w3-text-white w3-opacity w3-hover-opacity-off w3-xxlarge w3-container w3-display-topright"
			id="span_x" onClick="closeAll()">×</span>
		<div
			class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
			<div class="modal-content">
				<div>
					<form name="upload_form">
						<div id="upload_img">
							<input type="file" name="myFile" id="input_file"
								style="display: none;"> <input type="hidden"
								name="pomem_id" value="<%=member_id%>">
							<button type="button" id="btn_load_img" onClick="load_img()">
								<img src="/images/img_upload/upload_img.png" id="img_default">
							</button>
						</div>
						<div id="upload_content">
							<div id="upload_memo" class="form-group">
								<textarea class="form-control" placeholder="설명 쓰기....." rows="5"
									id="comment" name="content"></textarea>
							</div>
							<div class="btn-group-vertical">
								<button type="button" class="btn btn-default" id="btn_tag">
									<span class="span_img"><img
										src="/images/img_upload/tag.png" id="well_object"
										class="media-object"></span><span class="span_text">사람
										태그</span>
								</button>
								<button type="button" class="btn btn-default" id="btn_pin">
									<span class="span_img"><img
										src="/images/img_upload/pin.png" id="well_object"
										class="media-object"></span><span class="span_text">위치
										추가</span>
								</button>
							</div>
							<!-- <div id="container" >
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
		      	</div> -->
							<div id="container" >
								<div id="map" width="100%" style="width: 100%; height: 228px; ">
									
								</div>
							</div>
							<input type="hidden" name="gps" value="37.0042,127.52652">
							<div id="reg" class="media-group">
								<span id="btn_aln"><button type="button" id="btn_regist"
										class="btn btn-primary media-right" onClick="registPost()">사진
										등록</button></span>
							</div>
						</div>
					</form>
				</div>
			</div>

			<!--  <p id="caption"></p>  캡션 추가하는 부분-->
		</div>
		<!--888888888888888888888888888888888888888888888888888888888888888 사진 슬라이드 옆으로 이동 -->
		<!-- <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      		<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
     		<span class="sr-only">Previous</span>
  		</a>
    	<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      	<span class="sr-only">Next</span>
    	</a> -->
	</div>
	<script>
		var form_file = document.getElementById("input_file");
		window.addEventListener("load", function() {
			form_file.addEventListener("change", function() {
				preview();
			});
		});
		function closeAll() {
			var frame = document.getElementById("upload");
			frame.style.display = "none";
		}
		function load_img() {
			document.getElementById("input_file").click();
		}
		function registPost() {
			upload_form.method = "post";
			upload_form.encoding = "multipart/form-data";
			upload_form.action = "/alsta/registPost.do";
			upload_form.submit();
		}
		//이미지 미리보기 구현
		function preview() {

			var gall = document.getElementById("btn_load_img");//이미지 나오는 창
			var file = form_file.files[0];
			var reader = new FileReader();
			reader.onload = function(event) {
				var newImg = new Image();
				newImg.src = event.target.result;
				newImg.style.width = "500px";
				newImg.style.height = "500px";
				gall.innerHTML = "";
				gall.appendChild(newImg);
			};
			reader.readAsDataURL(file);
			return false;

		}
		//-------------------------------------------------------------------------------------
		var markers = [];
		var map;

		function loadMap() {//원하는 위도 경도및 줌을 설정하여 지도를 불러오자
			var container = document.getElementById("map");
			var options = {
				center : new google.maps.LatLng(37.497613, 127.038099),
				zoom : 15
			}
			map = new google.maps.Map(container, options);
			var lng;
			var lat;
			map.addListener("click", function(e) {
				upload_form.gps.value = e.latLng.lng()+","+e.latLng.lat();
				
				drop(e);
			});
		}
		function drop(e) {
			clearMarkers();
			addMarkerWithTimeout(e, 200);

		}
		function addMarkerWithTimeout(e, timeout) {
			var lat = e.latLng.lat();
			var lng = e.latLng.lng();
			var position = {
				lat : lat,
				lng : lng
			};
			var marker;
			var infowindow = new google.maps.InfoWindow({
				position : position,
				content : ""
			});
			window.setTimeout(function() {
				markers.push(marker = new google.maps.Marker({
					position : position,
					map : map,
					title : "",
					animation : google.maps.Animation.DROP
				}));
				marker.addListener("click", function() {
					infowindow.open(map, marker);
				});
			}, timeout);
		}
		function clearMarkers() {
			for (var i = 0; i < markers.length; i++) {
				markers[i].setMap(null);
			}
			markers = [];
		}

	</script>
	
<!-- 	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBdo2PjA_dWjBgMKnhyzXiJz4PVFmrq9IE&callback=loadMap"/>
 -->		