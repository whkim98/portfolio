<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>PortFolio</title>
  <style>
  
    /* body 요소에 flexbox 스타일을 적용하여 컨테이너를 중앙에 위치시킵니다. */
    body {
      display: flex;
      justify-content: center; /* 수평 가운데 정렬 */
      align-items: center; /* 수직 가운데 정렬 */
      height: 100vh; /* 화면 전체 높이를 컨테이너 높이로 설정하여 중앙 정렬합니다. */
      margin: 0; /* body의 기본 마진을 제거합니다. */
    }
    
 .aboutme {
  background-color: #BBBAB9;
	}
	
	.skills {
	position: relative;
    
	}
	
  
   .icon {
    width: 36px;
    height: 36px;
   }
    
    
    .image-container {
      margin: 40px;
      height: 200px;
    }

    /* 스타일 시트에 각이 둥근 사각형 스타일을 정의합니다. */
    .rounded-rectangle1 {
      width: 200px; /* 원하는 사각형의 너비 */
      height: 450px; /* 원하는 사각형의 높이 */
      background-color: #ffffff; /* 사각형의 배경 색상 */
      border-radius: 20px; /* 각을 둥글게 만들어주는 속성 (값은 조정 가능) */
      padding: 20px; /* 사각형 내부 여백 (원하는 대로 조정 가능) */
      box-shadow: 4px 4px 6px #888888; /* 그림자 효과 (원하는 대로 조정 가능) */
      position: relative; /* 가상 가로선을 위해 position을 설정합니다. */
       /* 상하 좌우 위치를 지정하는 코드 */
  	  top: 35px; /* 상단으로 50px 이동 */
  	 /*left: 30px;  왼쪽으로 30px 이동 */
    }

    /* 가상 가로선 스타일을 정의합니다. */
    .rounded-rectangle1::after {
      content: "";
      position: absolute;
      bottom: 85%; /* 사각형 하단의 중앙에 위치하도록 설정합니다. */
      left: 18px; /* 가로선의 왼쪽 위치를 조정합니다. */
      width: 85%; /* 가로선의 길이 (사각형 너비에 대한 상대적인 값으로 조정) */
      height: 0.5px; /* 가로선의 높이 */
      background-color: #BCBCBC; /* 가로선의 색상 */
    }

    /* <p>Frontend</p> 요소의 스타일을 수정합니다. */
    .rounded-rectangle1 p {
      font-size: 24px; /* 텍스트의 크기를 조정합니다. */
      margin: 0; /* 기본 마진을 제거합니다. */
      padding: 10px; /* 텍스트 내부 여백을 설정합니다. */
      color: blue;
      font-weight: bold;
     /* text-align: center;  가운데 정렬합니다. */
    }

    /* 이미지 스타일을 정의합니다. */
    .rounded-rectangle1 img {
      display: block; /* 인라인 요소를 블록 요소로 변환하여 세로 정렬을 용이하게 합니다. */
      margin: 35px auto; /* 가운데 정렬 */
      max-width: 100%; /* 이미지의 최대 너비를 설정하여 사각형에 맞게 조정합니다. */
      max-height: 350px; /* 이미지의 최대 높이를 설정하여 사각형에 맞게 조정합니다. */
     /* border-radius: 50%; 이미지를 둥글게 처리합니다. (원형 이미지로 보이도록) */
    }
    
    .rounded-rectangle2 {
      width: 200px; /* 원하는 사각형의 너비 */
      height: 400px; /* 원하는 사각형의 높이 */
      background-color: #ffffff; /* 사각형의 배경 색상 */
      border-radius: 20px; /* 각을 둥글게 만들어주는 속성 (값은 조정 가능) */
      padding: 20px; /* 사각형 내부 여백 (원하는 대로 조정 가능) */
      box-shadow: 4px 4px 6px #888888; /* 그림자 효과 (원하는 대로 조정 가능) */
      position: relative; /* 가상 가로선을 위해 position을 설정합니다. */
       top: 35px; 
    }
    
        /* 가상 가로선 스타일을 정의합니다. */
    .rounded-rectangle2::after {
      content: "";
      position: absolute;
      bottom: 84%; /* 사각형 하단의 중앙에 위치하도록 설정합니다. */
      left: 18px; /* 가로선의 왼쪽 위치를 조정합니다. */
      width: 85%; /* 가로선의 길이 (사각형 너비에 대한 상대적인 값으로 조정) */
      height: 1px; /* 가로선의 높이 */
      background-color: #BCBCBC; /* 가로선의 색상 */
    }

    /* <p>Frontend</p> 요소의 스타일을 수정합니다. */
    .rounded-rectangle2 p {
      font-size: 24px; /* 텍스트의 크기를 조정합니다. */
      margin: 0; /* 기본 마진을 제거합니다. */
      padding: 10px; /* 텍스트 내부 여백을 설정합니다. */
      color: blue;
      font-weight: bold;
     /* text-align: center;  가운데 정렬합니다. */
    }

    /* 이미지 스타일을 정의합니다. */
    .rounded-rectangle2 img {
      display: block; /* 인라인 요소를 블록 요소로 변환하여 세로 정렬을 용이하게 합니다. */
      margin: 35px auto; /* 가운데 정렬 */
      max-width: 100%; /* 이미지의 최대 너비를 설정하여 사각형에 맞게 조정합니다. */
      max-height: 350px; /* 이미지의 최대 높이를 설정하여 사각형에 맞게 조정합니다. */
     /* border-radius: 50%; 이미지를 둥글게 처리합니다. (원형 이미지로 보이도록) */
    }
    
    
    
    .rounded-rectangle3 {
      width: 200px; /* 원하는 사각형의 너비 */
      height: 240px; /* 원하는 사각형의 높이 */
      background-color: #ffffff; /* 사각형의 배경 색상 */
      border-radius: 20px; /* 각을 둥글게 만들어주는 속성 (값은 조정 가능) */
      padding: 20px; /* 사각형 내부 여백 (원하는 대로 조정 가능) */
      box-shadow: 4px 4px 6px #888888; /* 그림자 효과 (원하는 대로 조정 가능) */
      position: relative; /* 가상 가로선을 위해 position을 설정합니다. */
      top: 35px;  /* 상단으로 50px 이동 */
    }
    
        /* 가상 가로선 스타일을 정의합니다. */
    .rounded-rectangle3::after {
      content: "";
      position: absolute;
      bottom: 75%; /* 사각형 하단의 중앙에 위치하도록 설정합니다. */
      left: 18px; /* 가로선의 왼쪽 위치를 조정합니다. */
      width: 85%; /* 가로선의 길이 (사각형 너비에 대한 상대적인 값으로 조정) */
      height: 0.5px; /* 가로선의 높이 */
      background-color: #BCBCBC; /* 가로선의 색상 */
    }

    /* <p>Frontend</p> 요소의 스타일을 수정합니다. */
    .rounded-rectangle3 p {
      font-size: 24px; /* 텍스트의 크기를 조정합니다. */
      margin: 0; /* 기본 마진을 제거합니다. */
      padding: 10px; /* 텍스트 내부 여백을 설정합니다. */
      color: blue;
      font-weight: bold;
     /* text-align: center;  가운데 정렬합니다. */
     
    }

    /* 이미지 스타일을 정의합니다. */
    .rounded-rectangle3 img {
      display: block; /* 인라인 요소를 블록 요소로 변환하여 세로 정렬을 용이하게 합니다. */
      margin: 35px auto; /* 가운데 정렬 */
      max-width: 78%; /* 이미지의 최대 너비를 설정하여 사각형에 맞게 조정합니다. */
      max-height: 350px; /* 이미지의 최대 높이를 설정하여 사각형에 맞게 조정합니다. */
     /* border-radius: 50%; 이미지를 둥글게 처리합니다. (원형 이미지로 보이도록) */
    }
    

    
    .image-container:hover {
  	  transform: translateY(4px);
	}
	
	
	.resized-image {
  	width: 50px; /* Set the desired width for the image */
  	height: 50px; /* Set the desired height for the image */
	}
	
	/*
	.title_skills{
		position: relative;
		top: -300px;
		transition: transform 0.3s ease;
	}
	*/
	
	
	/* .title_skills_container 요소의 스타일을 수정합니다. */
	.title_skills_container {
    position: relative;
    width: 200px; /* 원하는 너비로 조정 */
  	height: 100px; /* 원하는 높이로 조정 */
  	/*background-color: #cccc00;  배경색은 원하는 대로 변경 */
  	/* 하위 div를 원하는 위치로 배치하기 위해 필요한 스타일링을 추가하세요. */
  	/* 예를 들어, 아래와 같이 사용할 수 있습니다. */
  	top: 50%; /* 상위 div의 중앙에 배치 */
  	left: 50%; /* 상위 div의 중앙에 배치 */
  	transform: translate(-50%, -50%); /* 중앙 정렬을 위해 사용 */
    
	}
	
	.title_skills {
	position: relative;
    top: -300px; /* 위쪽 여백을 20픽셀로 설정 */
    /*left: 500px;  왼쪽 여백을 10픽셀로 설정 */
	}
	
	
	/* .horizontal_line 요소의 스타일을 정의합니다. */
	.skills_line {
    position: absolute;
    bottom: 450%; /* 가로줄의 위치를 조정합니다. */
    width: 115%;
    height: 2px;
    background-color: #000000; /* 가로줄의 색상을 설정합니다. */
	}
	
	
	

    @media screen and (max-width: 600px) {
      /* 해상도가 600px 이하일 때 요소를 오른쪽으로 이동 */
      .box {
        transform: translateX(50px);
      }
    }
    
    .skills_kind {
  	  display: flex;
  	  position: absolute; /* 절대 위치로 설정합니다. */
  	  top: 40%; /* 상단 기준으로 50% 위치에 배치합니다. */
  	  left: 50%; /* 왼쪽 기준으로 50% 위치에 배치합니다. */
  	  transform: translate(-50%, -50%); /* 요소의 가로와 세로를 각각 50%만큼 이동시켜 중앙으로 정렬합니다. */
  	  
	}
	
	
	
	.heea{
		position: relative;
	}



	
    
  </style>
</head>
<body>

<div class="aboutme" id="sin">

	<p style="text-align:center;" >
	
	<svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" class="bi bi-file-earmark-person icon" viewBox="0 0 16 16">
	  <path d="M11 8a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
	  <path d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2v9.255S12 12 8 12s-5 1.755-5 1.755V2a1 1 0 0 1 1-1h5.5v2z"/>
	</svg>
 
	<span style="text-align: center; font-weight: bold; font-size: 2.5em; line-height: 1.5em; color: black; font-family: Arial; "> 
  		ABOUT ME
	</span>
	</p>
	
	
<div class="AboutMe1">
  <div style="display: flex; align-items: center;">
    <svg xmlns="http://www.w3.org/2000/svg" width="36" height="36" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
      <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z"/>
    </svg>
    <div class="AboutMe_name">이름<br><div class="AboutMe_myname">김우형</div></div>
    
  </div>
</div>

<div class="AboutMe2">
  <div style="display: flex; align-items: center;">
    <svg xmlns="http://www.w3.org/2000/svg" width="36" height="36" fill="currentColor" class="bi bi-calendar-week-fill" viewBox="0 0 16 16">
      <path d="M4 .5a.5.5 0 0 0-1 0V1H2a2 2 0 0 0-2 2v1h16V3a2 2 0 0 0-2-2h-1V.5a.5.5 0 0 0-1 0V1H4V.5zM16 14V5H0v9a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2zM9.5 7h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1a.5.5 0 0 1 .5-.5zm3 0h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1a.5.5 0 0 1 .5-.5zM2 10.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm3.5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1a.5.5 0 0 1 .5-.5z"/>
    </svg>
    <div class="AboutMe_birth">생년월일<br><div class="AboutMe_mybirth">98.10.01</div></div>
   
  </div>
</div>


<div class="AboutMe3">
  <div style="display: flex; align-items: center;">
	<svg xmlns="http://www.w3.org/2000/svg" width="36" height="36" fill="currentColor" class="bi bi-pin-map-fill" viewBox="0 0 16 16">
	  <path fill-rule="evenodd" d="M3.1 11.2a.5.5 0 0 1 .4-.2H6a.5.5 0 0 1 0 1H3.75L1.5 15h13l-2.25-3H10a.5.5 0 0 1 0-1h2.5a.5.5 0 0 1 .4.2l3 4a.5.5 0 0 1-.4.8H.5a.5.5 0 0 1-.4-.8l3-4z"/>
 	  <path fill-rule="evenodd" d="M4 4a4 4 0 1 1 4.5 3.969V13.5a.5.5 0 0 1-1 0V7.97A4 4 0 0 1 4 3.999z"/>
	</svg>
    <div class="AboutMe_address">주소지<br><div class="AboutMe_myaddress">경기도 용인시 기흥구</div></div>
  </div>
</div>

<div class="AboutMe4">
  <div style="display: flex; align-items: center;">
<svg xmlns="http://www.w3.org/2000/svg" width="36" height="36" fill="currentColor" class="bi bi-telephone-fill" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
</svg>
    <div class="AboutMe_pnumber">연락처<br><div class="AboutMe_mypnumber">010-7667-7272</div></div>
  
  </div>
</div>

<div class="AboutMe5">
  <div style="display: flex; align-items: center;">
<svg xmlns="http://www.w3.org/2000/svg" width="36" height="36" fill="currentColor" class="bi bi-envelope-fill" viewBox="0 0 16 16">
  <path d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555ZM0 4.697v7.104l5.803-3.558L0 4.697ZM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757Zm3.436-.586L16 11.801V4.697l-5.803 3.546Z"/>
</svg>
    <div class="AboutMe_email">이메일<br><div class="AboutMe_myemail">ehdrhkd3838@gmail.com</div></div>
  
  </div>
</div>

<div class="AboutMe6">
  <div style="display: flex; align-items: center;">
<svg xmlns="http://www.w3.org/2000/svg" width="36" height="36" fill="currentColor" class="bi bi-pencil-fill" viewBox="0 0 16 16">
  <path d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z"/>
</svg>
    <div class="AboutMe_career">학력<br><div class="AboutMe_mycareer">나노융합공학과 </div></div>
  
  </div>
</div>

</div>

<div class = "heea">
<div class="skills">
    <div class="title_skills">
        <img src="${pageContext.request.contextPath}/resources/img/link.png" alt="이미지" class="resized-image">
        <span style="text-align: center; font-weight: bold; font-size: 2.5em; line-height: 1.5em; color: black; font-family: Arial;">
            SKILLS
        </span>
    </div>
    <div class="skills_line"></div> <!-- 가로줄 추가 -->
</div>



<div class="skills_kind">

<div class="image-container">
  <!-- 둥근 사각형을 담기 위한 div 요소를 추가합니다. -->
  <div class="rounded-rectangle1">
    <!-- 여기에 사각형 내용을 추가할 수 있습니다. -->
    <!-- 예를 들면 텍스트, 이미지, 기타 요소 등이 올 수 있습니다. -->
    <p>Frontend</p>
    	<img src="${pageContext.request.contextPath }/resources/img/Frontend.jpg" alt="이미지">
	</div>
</div>


<div class="image-container">
  <!-- 둥근 사각형을 담기 위한 div 요소를 추가합니다. -->
  <div class="rounded-rectangle2">
    <!-- 여기에 사각형 내용을 추가할 수 있습니다. -->
    <!-- 예를 들면 텍스트, 이미지, 기타 요소 등이 올 수 있습니다. -->
    <p>Backend</p>
    	<img src="${pageContext.request.contextPath }/resources/img/Backend.jpg" alt="이미지">
	</div>
</div>


<div class="image-container">
  <!-- 둥근 사각형을 담기 위한 div 요소를 추가합니다. -->
  <div class="rounded-rectangle3">
    <!-- 여기에 사각형 내용을 추가할 수 있습니다. -->
    <!-- 예를 들면 텍스트, 이미지, 기타 요소 등이 올 수 있습니다. -->
    <p>Version Control</p>
    	<img src="${pageContext.request.contextPath }/resources/img/Git.jpg" alt="이미지">
	</div>
</div>
</div>
</div>
  
</body>
</html>
