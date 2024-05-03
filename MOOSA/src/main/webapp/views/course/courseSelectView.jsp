<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>계절 코스 선택</title>
    <style>
        body, html {
    height: 100%;
    margin: 0;
    font-family: Arial, sans-serif;
}

.container {
    height: 100vh;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
}
.buttons {
    display: flex; 
    flex-wrap: wrap; 
    justify-content: center; 
    gap: 40px; 
}

h1 {
    margin-bottom: 20px;
}

.book {
  position: relative;
  border-radius: 10px;
  width: 220px;
  height: 300px;
  background-color: whitesmoke;
  -webkit-box-shadow: 1px 1px 12px #000;
  box-shadow: 1px 1px 12px #000;
  -webkit-transform: preserve-3d;
  -ms-transform: preserve-3d;
  transform: preserve-3d;
  -webkit-perspective: 2000px;
  perspective: 2000px;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  -webkit-box-pack: center;
  -ms-flex-pack: center;
  justify-content: center;
  color: #000;
}

.cover {
  top: 0;
  position: absolute;
  background-color: lightgray;
  width: 100%;
  height: 100%;
  border-radius: 10px;
  cursor: pointer;
  -webkit-transition: all 0.5s;
  transition: all 0.5s;
  -webkit-transform-origin: 0;
  -ms-transform-origin: 0;
  transform-origin: 0;
  -webkit-box-shadow: 1px 1px 12px #000;
  box-shadow: 1px 1px 12px #000;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  -webkit-box-pack: center;
  -ms-flex-pack: center;
  justify-content: center;
}

.book:hover .cover {
  -webkit-transition: all 0.5s;
  transition: all 0.5s;
  -webkit-transform: rotatey(-80deg);
  -ms-transform: rotatey(-80deg);
  transform: rotatey(-80deg);
}

p {
  font-size: 20px;
  font-weight: bolder;
}
    </style>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    
    <div class="container">
        <h1>계절을 선택하세요</h1>
        <body>
            
            <div class="buttons">
                <div class="book">
                    <button class="season-button" onclick="changeSeason('spring')">봄</button>
                    <div class="cover" onclick="changeSeason('spring')">
                        <p>봄</p>
                    </div>
                </div>
                <div class="book">
                    <button class="season-button" onclick="changeSeason('summer')">여름</button>
                    <div class="cover" onclick="changeSeason('summer')">
                        <p>여름</p>
                    </div>
                </div>
                <div class="book">
                    <button class="season-button" onclick="changeSeason('autumn')">가을</button>
                    <div class="cover" onclick="changeSeason('autumn')">
                        <p>가을</p>
                    </div>
                </div>
                <div class="book">
                    <button class="season-button" onclick="changeSeason('winter')">겨울</button>
                    <div class="cover" onclick="changeSeason('winter')">
                        <p>겨울</p>
                    </div>
                </div>
            </div>
        <p id="season-text">계절을 선택하면 여기에 정보가 표시됩니다.</p>
    </div>

    <script>
        function changeSeason(season) {
            const body = document.body;
            const text = document.getElementById('season-text');
            switch (season) {
                case 'spring':
                    body.style.backgroundColor = '#FFC6FF';
                    text.innerText = '봄은 화창하고 따뜻합니다!';
                    break;
                case 'summer':
                    body.style.backgroundColor = '#ADD8E6';
                    text.innerText = '여름은 덥고 활기차요!';
                    break;
                case 'autumn':
                    body.style.backgroundColor = '#F4A460';
                    text.innerText = '가을은 서늘하고 색이 아름다워요!';
                    break;
                case 'winter':
                    body.style.backgroundColor = "#2478FF"
                    text.innerText = '겨울은 춥고 때로는 눈이 내려요!';
                    break;
            }
        }
    </script>
</body>
</html>