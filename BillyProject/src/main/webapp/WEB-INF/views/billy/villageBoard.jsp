<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <title>Bootstrap Example</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<%@ include file="../bbs/header.jsp"%>
	<%@ include file="../bbs/nav.jsp"%>
	<h3>빌리지 게시판</h3>
	<table class="table table-sm">
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>아이디</th>
			<th>작성일</th>
			<th>조회수</th>
			<th><a href="villageForm" onclick="window.open(this.href,'','width=650, height=700'); return false;">글작성</a></th>
		</tr>
		<tr>
			<td>1</td>
			<td>안녕</td>
			<td>msy12</td>
			<td>2022-12-05</td>
			<td>6</td>
		</tr>
		
			
	</table>
	<%@ include file="../bbs/footer.jsp"%>
</body>
</html>