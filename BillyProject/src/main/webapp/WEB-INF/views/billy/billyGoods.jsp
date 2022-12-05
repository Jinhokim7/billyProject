<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
	<%@ include file="../bbs/header.jsp"%>
	<%@ include file="../bbs/nav.jsp"%>
	<%@ include file="../bbs/notice.jsp"%>
	<form name="frm" method="post" action="billeyAction"
		encType="multipart/form-data">
		<div class="mb-3">
			<label for="goodsLB" class="form-label">상품이름</label> <input
				type="text" class="form-control" name="goodsTitle">
		</div>
		<div class="mb-3">
			<label for="disabledSelect1" class="form-label">지역 선택 </label> <select
				id="localSelect" class="form-select" name="local">
				<option>서울</option>
				<option>수원</option>
				<option>인천</option>
			</select>
		</div>
		<div class="mb-3">
			<input type="text" id="datepicker" class="form-select"
				placeholder="날짜선택">
			<script>
				$(function() {
					$("#datepicker").datepicker({
						minDate : 0,
						beforeShowDay : disableAllTheseDays
					});
				});
				//제외할 날짜
				var disabledDays = [ "2022-12-8", "2022-12-9" ];
				//날짜를 나타내기전에 beforeShowDay)실행할 함수
				function disableAllTheseDays(date) {
					var m = date.getMonth(), d = date.getDate(), y = date
							.getFullYear();
					for (i = 0; i < disabledDays.length; i++) {
						if ($
								.inArray(y + '-' + (m + 1) + '-' + d,
										disabledDays) != -1) {
							return [ false ];
						}
					}
					return [ true ];
				}
			</script>
		</div>
		<div class="mb-3">
			<label for="goodsPrice" class="form-label">가격</label> <input
				type="number" class="form-control" name="goodsPrice">
		</div>
		<div class="mb-3">
			<label for="goodsTextLB" class="form-label">내용</label>
			<textarea class="form-control" name="goodsText"></textarea>
		</div>
		<div class="mb-3">
			<label for="goodsFile" class="form-label">사진올리기</label> <input
				type="file" class="form-control" name="file"> <input type="file"  class="form-control" name="file">
		</div>


		<button type="submit" class="btn btn-primary">빌리등록</button>
	</form>
	<%@ include file="../bbs/footer.jsp"%>
</body>
</html>