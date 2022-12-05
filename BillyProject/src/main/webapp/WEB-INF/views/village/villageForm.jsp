<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <title>Bootstrap Example</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<style>
	#header{
  		float:left;
  	}
  	h4{
  		padding-top:15px;
  	}
</style>
  	
<body>
	<br>
	<div id="header">
    	<img src="resources/img/logo.png" alt="Logo" width="100" height="50" >
    </div>
	<h4>빌리지등록</h4>
	<br>
	<br>
	
   <div id="wrap" align="center">								
      <form  method="post" action="villigeAction" encType="multipart/form-data">
         <table>
         	<tr>
         		<th>글번호</th>
         		<td><input type="text" class="form-control" name="vNum" value="" readonly></td>
         	</tr>
         	<tr>
         		<th>아이디</th>
         		<td><input type="text" class="form-control" name="vId" value="" readonly></td>
         	</tr>
            <tr>
               <th>제목</th>
               <td><input type="text" size="70" name="vTitle" class="form-control"></td>
            </tr>
            <tr>
               <th>내용</th>
               <td><textarea cols="71" rows="10" name="vText" class="form-control" ></textarea></td>
            </tr>
            <tr>
            	<td colspan="2">
            		<div class="mb-3">
						<input type="file" class="form-control" name="file"> 
						<input type="file"  class="form-control" name="file">
					</div>
				</td>
            </tr>
         </table>
         <br>
         <br>
         <input type="submit" class="btn btn-primary"  value="등록">
         <input type="reset" class="btn btn-primary" value="다시 작성">
         <input type="button" class="btn btn-primary" value="취소" onclick="window.close()">
      </form>
   </div>
</body>

</html>