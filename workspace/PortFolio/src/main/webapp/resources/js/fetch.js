const book = document.querySelector('.book');
    const leftArrow = document.querySelector('.left-arrow');
    const rightArrow = document.querySelector('.right-arrow');
    const bookImage = document.querySelector('.book-image');
    const imageInfo = document.getElementById('image-info');
    const imageUrl = document.getElementById('image-url');
    const userContentLine1 = document.getElementById('user-content-line1');
    const userContentLine2 = document.getElementById('user-content-line2');
    const userContentLink = document.getElementById('user-content-link');

    const images = [
      {
        src: './resources/img/Git.jpg',
        info: '가보고 싶은 섬',
        url: 'http://www.naver.com',
        contentLine1: '간단하게 기능들 소개와',
        contentLine2: '어떤 개발툴, 언어 등 사용했는지',
        contentLine3: '설명하기',
        content: '가보고 싶은 섬은 ~ (가보고 싶은 섬에 대한 설명)',
        linkName: 'www.oracle',
        linkUrl: 'http://www.oracle.com'
      },
      {
        src: './resources/img/test2.png',
        info: '두번째 이미지 설명',
        url: 'http://www.daum.net',
        contentLine1: '두번째 이미지에 대한',
        contentLine2: '내용을 입력해주세요.',
        contentLine3: '내용을 입력해주세요.',
        content: '가보고 싶은 섬은 ~ㅇㄴㅁㅇㄴ ',
        linkName: 'www.microsoft',
        linkUrl: 'http://www.microsoft.com'
      },
      {
        src: './resources/img/test3.png',
        info: '세번째 이미지 설명',
        url: 'http://www.google.com',
        contentLine1: '세번째 이미지에 대한',
        contentLine2: '내용을 입력해주세요.',
        contentLine3: '내용을 입력해주세요.',
        content: '가보고 싶은 섬은 ~ 21332121323121',
        linkName: 'www.apple',
        linkUrl: 'http://www.apple.com'
      },
      // 필요한 만큼 이미지와 URL, 내용, 링크 정보를 추가해주세요
    ];

    let currentIndex = 0;

    leftArrow.addEventListener('click', () => {
      currentIndex = (currentIndex - 1 + images.length) % images.length;
      applyAnimation();
    });

    rightArrow.addEventListener('click', () => {
      currentIndex = (currentIndex + 1) % images.length;
      applyAnimation();
    });

    function applyAnimation() {
      bookImage.classList.add('animate-slide');
      bookImage.addEventListener('animationend', onAnimationEnd);
      setTimeout(() => {
        bookImage.src = images[currentIndex].src;
        updateImageInfo();
        updateUserContent();
      }, 250); // 이미지 변경 전 딜레이 시간
    }

    function updateImageInfo() {
      imageInfo.textContent = images[currentIndex].info;
      imageUrl.href = images[currentIndex].url;
    }

    function updateUserContent() {
    	  userContentLine1.textContent = images[currentIndex].contentLine1;
    	  userContentLine2.textContent = images[currentIndex].contentLine2;
    	  document.getElementById('content-line').textContent = images[currentIndex].contentLine3; // 추가
    	  document.getElementById('content').textContent = images[currentIndex].content; // 추가
    	  userContentLink.href = images[currentIndex].linkUrl;
    	  userContentLink.textContent = images[currentIndex].linkName;
    	}


    function onAnimationEnd() {
      bookImage.classList.remove('animate-slide');
      bookImage.removeEventListener('animationend', onAnimationEnd);
    }
    
    // 페이지 로드 시 초기 이미지와 설명 표시
    document.addEventListener('DOMContentLoaded', () => {
      bookImage.src = images[currentIndex].src;
      updateImageInfo();
      updateUserContent();
    });