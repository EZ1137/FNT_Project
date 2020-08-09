<%@page import="com.fnt.model.dto.QnaBoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
QnaBoardDto qnaboardlistone = (QnaBoardDto)request.getAttribute("qnaboardlistone");
%>
<title>FNT(Feel New Item) : <%=qnaboardlistone.getQbtitle() %></title>
<link href="css/section.css" rel="stylesheet" type="text/css"/>
<!-- include libraries(jQuery, bootstrap) -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
<script type="text/javascript">

	 $(document).ready(function() {
	      $('#summernote').summernote({
	        placeholder: '홍보 포스팅을 자유롭게 입력해주세요.',
	        height: 300,
	        //width: 1000,
	        lang: 'ko-KR',
	        toolbar: [
	                    // [groupName, [list of button]]
	                    ['Font Style', ['fontname']],
	                    ['style', ['bold', 'italic', 'underline']],
	                    ['font', ['strikethrough']],
	                    ['fontsize', ['fontsize']],
	                    ['color', ['color']],
	                    ['para', ['paragraph']],
	                    ['height', ['height']],
	                    ['Insert', ['picture']],
	                    ['Insert', ['link']],
	                    ['Misc', ['fullscreen']]
	                 ]
	      });
	    });
	
</script>
<style type="text/css">
* {margin:0px; padding:0px;}
#menutitle {padding-left:31% !important;}

#menubars {margin-top:2% !important; }
.menubar {padding-top:0 !important; width:100% !important; padding-bottom:12%;}
.mtext {padding-left:10% !important;}

section {overflow: auto; z-index: 1;}
#qtable {float: center; margin-top: 3%;}
h1 {margin-top: 6%; font-family: "Arial"; text-align: center; margin-bottom: 2%;}
table {margin: 0 auto; margin-top: 3%; width: 80%; height: auto; font-family: "Arial";} 
th {background-color: rgba(255,255,255,0.2);font-size: 14pt; text-align: center; height: 30px; font-weight: bold; padding-top: 2px;}
td {background-color: rgba(255,255,255,0);height: 24px; font-size:12pt;}
#qbtitle {width: 100%; height: 100%; border: none; padding-left: 10px;}
.panel {margin: 0px;}
#qbbtn {width: 50px; height: 34px; border: none; border-radius: 4px 4px 4px 4px; cursor: pointer; background-color: #cccccc; margin-top: 2px;}
#qbbtn:hover {font-weight: bold; background-color: #bbbbbb;}
</style>
</head>
<body>
	<%@ include file="./form/header.jsp" %>
	<%@ include file="./form/aside.jsp" %>
<section>
	<%
		if(memberdto == null) {
	%>
		<script type="text/javascript">
			alert("로그인 해주세요");
			location.href = "fntlogincrud.jsp";
			// 여기는 고쳐야함
		</script>
	<%
		} else {
	%>
	<div id="qtable">
	<h1>고객센터 글 수정</h1>
	<form action="qna.do" onsubmit="return qnaform();" method="post">
		<input type="hidden" value="qnaupdateres" name="command"/>
		<input type="hidden" value="<%=qnaboardlistone.getQbboardno() %>" name="qbboardno"/>
		<table border="1" style="border: solid white;"> 
				<col width="100">
				<col width="750">
			<tr>
				<th>제목</th>
				<td style="display:flex; border:none;">
					<input type="text" value="<%=qnaboardlistone.getQbtitle() %>" name="qbtitle" id="qbtitle" required="required" style="width: 90%;"/>
				</td>
			</tr>
			
			<tr>
				<th>내용</th>
				<td><textarea id="summernote" name="qbcontent"><%=qnaboardlistone.getQbcontent() %></textarea></td>
			</tr>
	
		
		
			<tr>
				<td align="right" colspan="2">
					<input id="qbbtn" type="button" value="취소" onclick="location.href='qna.do?command=qnadetail&qbboardno=<%=qnaboardlistone.getQbboardno()%>'"/>
					<input id="qbbtn" type="submit" value="완료"/>
				</td>
			</tr>			
		</table>
		</form>
		</div>
	</section>
	<%@ include file="./form/footer.jsp" %>
		<%
			
		}
	
		%>
	<script type="text/javascript">
		var qnaform = function(){
			if($("textarea[name='qbcontent']").val() == "") {
				alert("내용을 입력하세요.");
				return false;
			}
		}
	</script>
</body>
</html>