<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/header.css">

<meta charset="UTF-8">
<title>navigation bar</title>
<style>
        /* 초기 스타일 */
        
    </style>
</head>
<header>
<body>
	<nav>
		<div>
			<a href="#" class="larger-text">LSY's Portfolio</a>
		</div>
        <ul>
            <li><a href="#aboutme">About me</a></li>
            <li><a href="#skills">Skills</a></li>
            <li><a href="#archiving">Archiving</a></li>
            <li><a href="#projects">Projects</a></li>
            <li><a href="#career">Career</a></li>
        </ul>
    </nav>
</header>
</body>

<script>
  // 스크롤 이벤트를 처리하는 함수
  // 스크롤 이벤트를 처리하는 함수
function handleScroll() {
  const nav = document.querySelector('nav');
  const links = document.querySelectorAll('nav a');

  // 수직 스크롤 위치를 확인합니다.
  if (window.scrollY > 0) {
    // 아래로 스크롤하면 흰색 배경을 추가합니다.
    nav.style.backgroundColor = '#fff';
    links.forEach(link => {
      link.style.color = '#000';
      link.style.opacity = '1';
    });
  } else {
    // 가장 위에 있을 때는 배경이 투명하도록 설정합니다.
    nav.style.backgroundColor = 'transparent';
    links.forEach(link => {
      link.style.color = 'rgba(0, 0, 0, 0.5)';
      link.style.opacity = '1';
    });
  }
 
}

  //글자에 마우스를 올렸을 때 글자색을 변경하는 함수
  function handleMouseOver(link) {
	if (window.scrollY > 0) {
		link.style.color = '#f00'; // 스크롤된 상태에서의 색상
		} else {
	    link.style.color = '#fff'; // 스크롤되지 않은 상태에서의 색상
	}
  }

  // 글자에서 마우스가 벗어났을 때 글자색을 원래대로 돌리는 함수
  function handleMouseOut(link) {
    if (window.scrollY > 0) {
      link.style.color = '#000'; // 스크롤되었을 때의 색상으로 변경
    } else {
      link.style.color = 'rgba(0, 0, 0, 0.5)'; // 스크롤되지 않았을 때의 색상으로 변경
    }
  }
  // handleScroll 함수를 스크롤 이벤트에 연결합니다.
  window.addEventListener('scroll', handleScroll);
  

//각 링크에 마우스 이벤트를 연결합니다.
  const links = document.querySelectorAll('nav a');
  links.forEach(link => {
    link.addEventListener('mouseover', () => handleMouseOver(link));
    link.addEventListener('mouseout', () => handleMouseOut(link));
  });
  
  /*
  links.forEach(link => {
      link.addEventListener('click', (event) => {
        event.preventDefault(); // 기본 클릭 이벤트를 취소합니다.
        const targetId = link.getAttribute('href'); // 클릭된 링크의 href 속성 값(해당 섹션의 ID)을 가져옵니다.
        const targetSection = document.querySelector(targetId); // 해당 섹션을 가져옵니다.
        targetSection.scrollIntoView({ behavior: 'smooth' }); // 해당 섹션으로 스크롤합니다.
      });
    });
  
  }
  */

  // setupEventListeners 함수를 실행하여 이벤트들을 설정합니다.
  setupEventListeners();
  
</script>
</html>