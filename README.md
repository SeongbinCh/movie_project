# 🎬 영화 예매 사이트

**신입 백엔드 개발자 포트폴리오용으로 제작한 영화 예매 웹사이트입니다.**  
일반 회원 로그인, 카카오 로그인, 영화 예매 및 결제, 게시판, 마이페이지 등 다양한 기능을 구현했습니다.

---

## ✅ 주요 기능

### 1. **회원 기능**
- 일반 회원가입 및 로그인
- 카카오 로그인
- 마이페이지(내 정보 수정, 예매 내역, 내가 쓴 글)
  <img src="https://github.com/user-attachments/assets/5f4c286e-ae00-4da9-a495-bb7c64153999" width="700" height="300">
  <img src="https://github.com/user-attachments/assets/b87b9974-39df-4f9c-b925-dac34b0dee5f" width="700" height="300">

### 2. **영화 예매**
- 영화, 날짜, 시간 선택
  <img src="https://github.com/user-attachments/assets/f3f37939-20e5-43e0-a580-128f7cb824ea" width="700" height="300">
- 좌석 선택 (청소년/성인 인원 구분)
  <img src="https://github.com/user-attachments/assets/bdd516d6-32ac-4139-87cc-be1cdbf8313b" width="700" height="300">
- 결제 전 정보 확인
  <img src="https://github.com/user-attachments/assets/7c0e1830-9773-4f05-b53c-d530c9042201" width="500" height="500">
- KakaoPay / TossPayments 연동 결제
- 예매 성공/실패 처리 및 예매 내역 저장

### 3. **영화 정보**
- **일일 / 주간 박스오피스** (KOFIC API)
- 인기 영화 **Top10 롤링 배너**
  <img src="https://github.com/user-attachments/assets/dddfd085-6515-46e7-8aae-8fb3a6708b03" width="700" height="300">
- 검색 자동완성 기능
- 영화 상세 정보 (TMDB API 활용)

### 4. **게시판**
- 글 작성, 수정, 삭제, 조회 (CRUD)
- 댓글, 대댓글 기능
  <img src="https://github.com/user-attachments/assets/385cea66-970f-44eb-a234-c870b2b092c7" width="500" height="500">
- 게시글 카테고리 필터 및 검색

### 5. **기타 예외 처리**
- 로그인하지 않은 사용자가 글쓰기, 댓글, 마이페이지 접근 시 alert 처리
- 잘못된 접근 시 에러 페이지 또는 메시지 처리

---

## 🛠 사용 기술

- **Backend**: Java, Spring Framework(Spring MVC), MyBatis  
- **Frontend**: HTML, CSS, JavaScript, JSP  
- **Database**: Oracle, SQL Developer
- **API 연동**:  
  - TMDB API (영화 포스터)  
  - KOFIC API (영화 상세 정보 및 박스오피스)  
  - KakaoPay, TossPayments (결제 시스템)  
- **형상관리**: Git, GitHub

---
