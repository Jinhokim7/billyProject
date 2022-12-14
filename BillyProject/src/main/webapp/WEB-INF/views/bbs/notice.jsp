<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	.rolling_box{
            width: 800px;
            height: 30px;
            text-align: center;
            border: 1px solid #848484;
            margin-left : 110px;
            border-radius : 9px;
        }

        .rolling_box ul {
            width: 100%;
            height: 100%;
            overflow: hidden;
            position: relative;
            list-style : none;
            
        }

        .rolling_box ul li {
            width: 100%;
            height: 100%;
            transition: .5s;
            position:absolute;
            transition: top .75s;
            top: 100%;
            z-index: 1;
            background-color: #ffffff;
            
        }

        .card_sliding{
            top: 0 !important;
            z-index: 100 !important;
        } 

        .card_sliding_after{
            top: -100% !important;
            z-index: 10 !important;
        }

        .rolling_box ul li p {
            font-size: 15px;
            line-height: 40px;
            font-weight: bold;
            
        }

        .before_slide {
            transform: translateY(100%);
        }

        .after_slide {
            transform: translateY(0);
        }
</style>
<body>
	<div class="rolling_box">
		<ul id="rolling_box">
			<li class="card_sliding" id="first"><p></p></li>
			<li class="" id="second"><p></p></li>
			<li class="" id="third"><p></p></li>
		</ul>
	</div>
	<br>
</body>

<script>
let rollingData = [
    '공사중',
    '공사중입니다.'
  ]    // 롤링할 데이터를 넣으면 됩니다 갯수 제한 없어요

let timer = 2000 // 롤링되는 주기 입니다 (1000 => 1초)

let first = document.getElementById('first'),
second = document.getElementById('second'),
third = document.getElementById('third')
let move = 2
let dataCnt = 1
let listCnt = 1

//위 선언은 따로 완전히 수정하지 않는 한 조정할 필요는 없습니다.

first.children[0].innerHTML = rollingData[0]

setInterval(() => {
if(move == 2){
first.classList.remove('card_sliding')
first.classList.add('card_sliding_after')

second.classList.remove('card_sliding_after')
second.classList.add('card_sliding')

third.classList.remove('card_sliding_after')
third.classList.remove('card_sliding')

move = 0
} else if (move == 1){
first.classList.remove('card_sliding_after')
first.classList.add('card_sliding')

second.classList.remove('card_sliding_after')
second.classList.remove('card_sliding')

third.classList.remove('card_sliding')
third.classList.add('card_sliding_after')

move = 2
} else if (move == 0) {
first.classList.remove('card_sliding_after')
first.classList.remove('card_sliding')

second.classList.remove('card_sliding')
second.classList.add('card_sliding_after')

third.classList.remove('card_sliding_after')
third.classList.add('card_sliding')

move = 1
}

if(dataCnt < (rollingData.length - 1)) {
document.getElementById('rolling_box').children[listCnt].children[0].innerHTML = rollingData[dataCnt]
dataCnt++
} else if(dataCnt == rollingData.length - 1) {
document.getElementById('rolling_box').children[listCnt].children[0].innerHTML = rollingData[dataCnt]
dataCnt = 0
}

if(listCnt < 2) {
listCnt++
} else if (listCnt == 2) {
listCnt = 0
}

console.log(listCnt)
}, timer);

</script>
</html>