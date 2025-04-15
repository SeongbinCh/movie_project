# 🎬 영화 예매 사이트

## 프로젝트 소개

이 영화 예매 사이트는 **영화 예매, 결제, 회원 관리, 영화 정보 제공, 게시판 CRUD** 등을 구현한 웹 애플리케이션입니다. 
사이트는 Spring Framework와 MyBatis를 기반으로 개발되었으며, KOFIC API를 통해 실시간 박스오피스를 제공합니다.
---

## 🖼 메인 화면
<img src="https://github.com/user-attachments/assets/dddfd085-6515-46e7-8aae-8fb3a6708b03" width="700" height="300">

> 사용자가 가장 먼저 접하는 화면으로, 영화 검색, TOP10 롤링배너, 예매 메뉴 등을 제공합니다.

---

## ✅ 주요 기능

### 1. **회원 기능**
- 일반 회원가입 및 로그인
- 카카오 로그인
- 마이페이지(내 정보 수정, 예매 내역, 내가 쓴 글)
  <img src="https://github.com/user-attachments/assets/5f4c286e-ae00-4da9-a495-bb7c64153999" width="700" height="300">
  <img src="https://github.com/user-attachments/assets/b87b9974-39df-4f9c-b925-dac34b0dee5f" width="700" height="300">

### 2. **영화 예매**
- 영화, 날짜, 시간 선택<br>
  <img src="https://github.com/user-attachments/assets/f3f37939-20e5-43e0-a580-128f7cb824ea" width="700" height="300">
  > 영화, 날짜, 시간을 선택 후 좌석선택 버튼을 누릅니다
- 좌석 선택 (청소년/성인 인원 구분)<br>
  <img src="https://github.com/user-attachments/assets/bdd516d6-32ac-4139-87cc-be1cdbf8313b" width="700" height="300">
  > 청소년/성인 인원을 선택 후 좌석을 고릅니다 고른 후 결제 버튼을 누릅니다
- 결제 전 정보 확인<br>
  <img src="https://github.com/user-attachments/assets/7c0e1830-9773-4f05-b53c-d530c9042201" width="600" height="450">
  > 결제 정보 확인 후 결제 버튼을 눌러 팝업 창에서 카카오페이/토스페이 중에서 골라 결제를 진행합니다
- KakaoPay / TossPayments 연동 결제
- 예매 성공/실패 처리 및 예매 내역 저장

### 3. **영화 정보**
- **일일 / 주간 박스오피스** (KOFIC API)<br>
  <img src="https://github.com/user-attachments/assets/0ee265aa-d94e-4980-a770-0a2adfc4c3fc" width="700" height="300">
- 인기 영화 **Top10 롤링 배너**<br>
- 검색 자동완성 기능
- 영화 상세 정보 (TMDB API 활용)

### 4. **게시판**
- 글 작성, 수정, 삭제, 조회 (CRUD)
- 댓글, 대댓글 기능<br>
  <img src="https://github.com/user-attachments/assets/385cea66-970f-44eb-a234-c870b2b092c7" width="500" height="500">

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
