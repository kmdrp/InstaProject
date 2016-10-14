<%@page import="com.sds.comments.domain.Comments"%>
<%@page import="java.util.List"%>
<%@page import="com.sds.comments.dao.CommentsDAO"%>
<%@page import="com.sds.board.domain.Board"%>
<%@page import="com.sds.board.dao.BoardDAO"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%!
	BoardDAO dao = new BoardDAO();
	CommentsDAO cdao = new CommentsDAO();	
%>
<%
	String board_id=request.getParameter("board_id");
	Board dto=dao.select(Integer.parseInt(board_id));
	dao.updateHit(Integer.parseInt(board_id)); //조회수 증가
	
	//현재 내가 보고있는 글에 딸려있는 댓글 목록 가져오기!
	List<Comments> list=cdao.selectAll(Integer.parseInt(board_id));
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
#box{border:1px solid #CCCCCC}
#writer,#title,#content{font-size:9pt;font-weight:bold;color:#7F7F7F;돋움}
input{
	font-size:9pt;
	border-left:1px solid #C3C3C3;
	border-top:1px solid #C3C3C3;
	border-right:1px solid #C3C3C3;
	border-bottom:1px solid #C3C3C3;
	color:#7F7F7F;돋움
}
#title input{width:250px;}
#content textarea{
width:503px;
border:0;
height:153;
background:url("/board/images/write_bg.gif");
border:#C3C3C3 1px solid 
}
#copyright{font-size:9pt;}
a{text-decoration:none}
img{border:0px}
</style>
<script>
function regist(){
	if(form2.writer.value==""){
		alert("댓글 작성자를 입력하세요!!");
		form2.writer.focus();
		return;
	}
	
	if(form2.title.value==""){
		alert("댓글을 입력하세요");
		form2.title.focus();
		return;
	}
	//댓글 등록 요청을 하자!!
	form2.action="/board/comments_regist.jsp?board_id=<%=board_id%>";  
	form2.submit();
}
</script>
</head>
<body>
<table id="box" align="center" width="603" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="/board/images/ceil.gif" width="603" height="25"></td>
  </tr>
  <tr>
    <td height="2" bgcolor="#6395FA"><img src="/board/images/line_01.gif"></td>
  </tr>
  <tr>
    <td height="1" bgcolor="#CCCCCC"></td>
  </tr>
  
  <form name="form1" method="post">
	<tr>	
		<td id="list"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="100">&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr id="writer">
            <td height="25" align="center">작성자</td>
            <td><input type="text" name="textfield" value="<%=dto.getWriter()%>"></td>
          </tr>
          <tr id="title">
            <td height="25" align="center">제목</td>
            <td><input type="text" name="textfield2" value="<%=dto.getTitle()%>"></td>
          </tr>
          <tr id="content">
            <td align="center">내용</td>
            <td><textarea name="content" style=""><%=dto.getContent()%></textarea></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
	</tr>
  <tr>
    <td height="30" align="right" style="padding-right:2px;">
	<img src="/board/images/write_btin.gif" width="61" height="20">
	<img src="/board/images/delete_btn.gif" width="61" height="20"> <a href="list.jsp"><img src="/board/images/list_btn.gif" width="61" height="20" border="0"></a> </td>
  </tr>
  </form>
  <!-- 댓글 영역 begin -->
  <form name="form2" method="post">
	  <tr>
	  	<td align="center">
	  		<input type="text" size="5" name="writer">
	  		<input type="text" size="70" name="title">
	  		<input type="button" value="등록" onClick="regist()">
	  	</td>
	  </tr>
	  <tr>
	 	<td>
			<!-- 목록을 보여줄 테이블  begin -->	 
			<table width="100%" border="1px">
				<%for(int i=0;i<list.size();i++){%>
				<%Comments comments=list.get(i); %>
				<tr>
					<td><%=comments.getWriter() %></td>
					<td><%=comments.getTitle() %></td>
					<td><%=comments.getRegdate().substring(0,10) %></td>
				</tr>
				<%}%>
			</table>	
			<!-- 목록을 보여줄 테이블  end -->	 	
	 	</td> 
	  </tr>
  </form>
  <!-- 댓글 영역 end -->
  <tr>
    <td height="1" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" id="copyright">Copyright zino All Rights Reserved </td>
  </tr>
</table>
</body>
</html>




