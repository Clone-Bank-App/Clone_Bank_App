# clone_bank_app

국민은행 안드로이드 어플 일부화면 클론코딩 프로젝트 입니다.

## Front-end
Flutter 프레임워크를 활용하여 국민은행 스타뱅킹 어플 화면을 클론코딩 하는 방향으로 진행하였으며,
전체계좌 화면은 , 토스뱅크의 화면 구성이 더 보기 편하다고 생각하여 토스뱅크의 화면을 따라하였습니다 . 

## Back-end
서버는 Node.js 의 express를 사용하였습니다 . 
데이터베이스는 SQL DB를 연동하고자 하였으나 , 연결에 실패하였습니다 .

CSV파일을 Node .js express에서 읽어오는 패키지가 있어 , 데이터베이스를 따로 파지 않고 
csv파일의 데이터를 읽어오는 방식으로 사용하였습니다 . 
(index.js 파일)

---


<img src="https://img.shields.io/badge/flutter-02569B?style=for-the-badge&logo=html5&logoColor=white">

<img src="https://img.shields.io/badge/nodedotjs-339933?style=for-the-badge&logo=html5&logoColor=white"><img src="https://img.shields.io/badge/express-000000?style=for-the-badge&logo=html5&logoColor=white">

<img src="https://img.shields.io/badge/notion-000000?style=for-the-badge&logo=html5&logoColor=white"><img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=html5&logoColor=white">

---


## 진행과정

### 협업환경 구축
- notion을 이용하여 진행현황과 요청사항을 공유 하였습니다 . 
  <img width="769" alt="스크린샷 2023-12-10 222730" src="https://github.com/Clone-Bank-App/Clone_Bank_App/assets/121094346/e1c364ce-5a8c-4661-a099-6de7d2812021">


## 실행화면

### 1. Bank App
![HOME](https://github.com/Clone-Bank-App/Clone_Bank_App/assets/38944609/671c5dc9-0ad0-4e1f-9de0-ce1ae4021d0b)


### 2. View Accounts
![LIST](https://github.com/Clone-Bank-App/Clone_Bank_App/assets/38944609/e7cfbbe8-c057-4bda-9103-c351f181f5cb)



## 아쉬운 점 
   프론트와 서버를 연결하는 과정에서 어려움이 있었습니다 .
   MySQL과 node js 의 연결이 익숙치 못하여 , csv파일에 있는 데이터를 node.js 에 불러오고자 하였습니다 . 
   그래서 서버에 csv파일을 불러와 각 셀별로 데이터을 읽어오는 방식을 사용하였습니다 
    


## 프로젝트 실행 전 필요항목

1. Android Studio 설치


1-1 Android studio에서 flutter plugin 추가 . 
1-2 public.yaml에 들어가서 , get pub 클릭 


2.node.js설치 


2-1 

  ```javascript
  npm install express
  npm install csv-parse
 node index.js
```
를 실행해 주세요 . 


**혹시 안드로이드스튜디오 AVD실행시 빈 화면이 뜬다면 , FLUTTER DEVICE SELECTION 을 크롬 로 바꾸어서 실행 해주세요 ! 





