<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<style>
#joinForm {
	width: 1200px;
	height: 800px;
}

#joinTable {
	margin: 0px auto;
}

#join {
	font-size: 30px;
}

#joinTop {
	margin-left: 500px;
}

.form-control {
	margin-left: 50px;
	margin-top: 15px;
}

.form-text {
	margin-left: 50px;
}

.form-select {
	margin-left: 50px;
	margin-top: 15px;
}

.btn btn-primary {
	margin: 0px auto;
}
</style>
<body>
	<%@ include file="../bbs/header.jsp"%>
	<%@ include file="../bbs/nav.jsp"%>
	<section id="joinForm">
		<div id="joinTop">
			<img src="resources/img/logo.png" alt="Logo" width="100" height="50">
			<span id="join">회원가입</span>
		</div>
		<form action="joinAction" method="post" encType="multipart/form-data">
			<table id="joinTable">
				<tr>
					<td align=center>아이디</td>
					<td><input type="text" name="id" id="id" class="form-control"
						aria-describedby="idHelpInline"> <span id="idHelpInline"
						class="form-text"> ID는 8-20자, 문자와 숫자를 포함하여야 합니다. </span></td>
					<td>
						<button type="button" class="btn btn-primary">아이디 중복확인</button>
					</td>
				</tr>
				<tr>
					<td align=center>비밀번호</td>
					<td><input type="password" name="pwd" id="pwd"
						class="form-control" aria-describedby="pwdHelpInline"> <span
						id="pwdHelpInline" class="form-text"> 비밀번호는 8-20자
							영문,숫자,특수문자를 포함하여야 합니다. </span></td>

				</tr>
				<tr>
					<td align=center>비밀번호확인</td>
					<td><input type="password" name="pwdChk" id="pwdChk"
						class="form-control" aria-describedby="pwdChkHelpInline">
						<span id="pwdChkHelpInline" class="form-text"> </span></td>

				</tr>
				<tr>
					<td align=center>전화번호</td>
					<td><input type="text" name="tel" id="tel"
						class="form-control" aria-describedby="telHelpInline"> <span
						id="telHelpInline" class="form-text"> 전화번호는 -를 제외하고 입력하십숑 </span>
				</tr>
				<tr>
					<td align=center>이름</td>
					<td><input type="text" name="name" id="name"
						class="form-control"></td>
				</tr>
				<tr>
					<td align=center>Email</td>
					<td><input type="email" name="email" class="form-control"
						placeholder="name@example.com"></td>
				</tr>
				<tr>
					<td align=center>비밀번호 찾기용 질문</td>
					<td><select class="form-select"
						aria-label="Default select example">
							<option selected="">공사중</option>
							<option value="1">One</option>
							<option value="2">Two</option>
							<option value="3">Three</option>
					</select></td>
				</tr>
				<tr>
					<td align=center>비밀번호 찾기 질문 답</td>
					<td><input type="text" name="answer" id="answer"
						class="form-control"></td>
				</tr>
				<tr>
					<td align=center>지역설정</td>
					<td><input type="text" class="form-control"
						id="sample5_address" placeholder="주소"></td>
					<td><input type="button" onclick="sample5_execDaumPostcode()"
						value="주소 검색"></td>
				</tr>
				<tr>
					<td align=center>프로필사진</td>
					<td>
						<div class="input-group mb-3">
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
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=발급받은 API KEY를 사용하세요&libraries=services"></script>
<script>
    function sample5_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr = data.address; // 최종 주소 변수

                // 주소 정보를 해당 필드에 넣는다.
                document.getElementById("sample5_address").value = addr;
                // 주소로 상세 정보를 검색
                geocoder.addressSearch(data.address, function(results, status) {
                    // 정상적으로 검색이 완료됐으면
                    if (status === daum.maps.services.Status.OK) {

                        var result = results[0]; //첫번째 결과의 값을 활용

                        // 해당 주소에 대한 좌표를 받아서
                        var coords = new daum.maps.LatLng(result.y, result.x);
                        // 지도를 보여준다.
                        mapContainer.style.display = "block";
                        map.relayout();
                        // 지도 중심을 변경한다.
                        map.setCenter(coords);
                        // 마커를 결과값으로 받은 위치로 옮긴다.
                        marker.setPosition(coords)
                    }
                });
            }
        }).open();
    }
    
    //-----------------------id유효성체크---------------------------------//
    document.getElementById('id').onchange = () =>{
        var inID = document.getElementById('id').value;       
        var chkWord = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z0-9]{8,20}$/;
        //var inSpan = document.getElementById('idHelpInline').innerText; 
        if(chkWord.test(inID)){
        	document.getElementById('idHelpInline').innerHTML ="<span style='color: green;'>사용가능.</span>";
        }else if(inID==''){
        	document.getElementById('idHelpInline').innerHTML="<span style='color: red;'>ID는 8-20자, 문자와 숫자를 포함하여야 합니다.</span>";
    
        }else{
        	document.getElementById('idHelpInline').innerHTML="<span style='color: red;'>ID형식이 맞지않습니다.</span>";
        	inID.value='';

        }
     }
    
</script>
</html>