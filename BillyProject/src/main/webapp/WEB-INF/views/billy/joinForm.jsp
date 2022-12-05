<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script> 
<title>Insert title here</title>
</head>
<style>
	#joinForm{
		width : 1200px;
		height : 700px;
	}
	#joinTable{
		margin : 0px auto;
	}
	#join{
		font-size : 30px;
	}
	#joinTop{
		margin-left:500px;
	}
	.form-control{
		margin-left: 100px;
		margin-top : 15px;
	}
	.form-text{
		margin-left:100px;
	}
	.form-select{
		margin-left:100px;
		margin-top : 15px;
	}
	
	.btn btn-primary{
		margin : 0px auto;
	}
</style>
<body>
	<%@ include file="../bbs/header.jsp"%>
	<%@ include file="../bbs/nav.jsp"%>
	<section id="joinForm">
	<div id="joinTop">
		<img src="resources/img/logo.png" alt="Logo" width="100" height="50" >
		<span id="join" >회원가입</span>
	</div>
	<form action="joinAction" method="post" encType="multipart/form-data">
				<table id="joinTable">
					<tr>
						<td align=center>아이디</td>
						<td>
							<input type="text" name="id" class="form-control" aria-describedby="idHelpInline">
							<span id="idHelpInline" class="form-text">
						 	 	아이디는 ~ 공사중~~
        				 	</span>
        				 </td>
        				 <td>
        				 	<button type="button" class="btn btn-primary">아이디 중복확인</button>
        				 </td>
					</tr>
					<tr>
						<td align=center>비밀번호</td>
						<td>
							<input type="password" name="pwd" id="pwd" class="form-control" aria-describedby="pwdHelpInline">
							<span id="pwdHelpInline" class="form-text">
						 	 	비밀번호는 특수문자~ 공사중~~~
        				 	</span>
        				</td>

					</tr>
					<tr>
						<td align=center>비밀번호확인</td>
						<td>
							<input type="password" name="pwdChk" id="pwdChk" class="form-control" aria-describedby="pwdChkHelpInline">
							<span id="pwdChkHelpInline" class="form-text">

        				 	</span>
						</td>
					
					</tr>
					<tr>
						<td align=center>전화번호</td>
						<td>
							<input type="text" name="tel" id="tel" class="form-control" aria-describedby="telHelpInline">
							<span id="telHelpInline" class="form-text">
								전화번호는 -를 제외하고 입력하십숑
        				 	</span>
					</tr>
					<tr>
						<td align=center>이름</td>
						<td><input type="text" name="name" id="name" class="form-control"></td>
					</tr>
						<tr>
						<td align=center>Email</td>
						<td><input type="email" name="email" class="form-control" placeholder="name@example.com"></td>
					</tr>		
					<tr>
						<td align=center>비밀번호 찾기용 질문</td>
						<td>
							 <select class="form-select" aria-label="Default select example">
      							<option selected="">공사중</option>
      							<option value="1">One</option>
      							<option value="2">Two</option>
     							<option value="3">Three</option>
    						</select>
    						
						</td>
					</tr>
					<tr>
						<td align=center>비밀번호 찾기 질문 답</td>
						<td><input type="text" name="answer" id="answer" class="form-control"></td>
					</tr>
					<tr>
						<td align=center>지역설정</td>
						<td><input type="text" name="loc" id="loc" class="form-control"></td>
					</tr>
					<tr>
						<td align=center>프로필사진</td>
						<td> <div class="input-group mb-3">
     						 <input type="file" class="form-control" id="inputGroupFile02">
     						 </div>
     					</td>
					</tr>
				</table>
				<input type="submit" class="btn btn-primary" value="가입하기">		
			</form>
	</section>
	<%@ include file="../bbs/footer.jsp"%>
</body>
</html>