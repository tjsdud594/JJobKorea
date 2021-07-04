
## **0621 mini project**
### - Who? 
>#### 정일균, 류선영, 강정현
### - What?
#### **1. 나에게 맞는 IT 기업찾기 WEB SITE생성**
> 필요기술 : flask, web, sql

#### **2. 만들 페이지 구성**
> 기업test page / 게시판 page / 회사소개 page / chart page

#### **3. 각 페이지에 사용할 dao.py, dto.py 파일생성 및 flask연동을 위한 app.py 생성**
**main page**
> app.py로 구동 <br>
> dto_main.py, dao_main.py, reqres.html 구성 <br>
> reqres.html : 라디오 체크박스로 질문답을 구성하여 다중선택이 가능하도록 설계 <br>
> dao_main.py : 다중선택한 결과로 sql에 연동하여 회사이름이 나오도록 메소드 설계(where in 구문활용) <br>
> dto_main.py : com_no, cname, industry, tech_stack, sal_grade, scale, hirecarrer 변수선언 후 각 get, set 메소드 설정 <br>

**게시판 page**
> app.py로 구동 <br>
> dto_review.py, dao_review.py, review.html 구성 <br>
> review.html : sql review table의 update와 전체 table을 보여주도록 설계 <br>
> dao.py : sql review table을 보여주는 메소드와 sql review table를 update를 하는 메소드 구현 <br>
> dto.py : cname, id, score, review 변수선언 후 각 get, set 메소드 설정<br>

