
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

**회사소개 page**
> 담당 : 정일균
> 조사한 회사의 수 : 15 <br>
> 만들 페이지 수 : 15 <br>
> 사용한 template : https://startbootstrap.com/previews/stylish-portfolio <br>

**chart page**
> 담당 : 류선영
> 구글 차트를 사용하여 실시간 연동 차트형성
> Oracle에 저장된 데이터를 어떻게 실시간으로 가져올 것인가?

**sql 파일 생성**
> 생성 table : Company, Board, Salary, Chart

'''
create table Company(
    COM_NO number(3) primary key,
    CNAME varchar2(30) constraint Company_CNAME_nn not null unique,
    INDUSTRY varchar2(30) constraint Company_INDUSTRY_nn not null,
    TECH_STACK varchar2(30) constraint Company_TECH_STACK_nn not null,
    SAL_GRADE varchar2(10) constraint Company_SAL_GRADE_nn not null, 
    SCALE varchar2(10) constraint Company_SCALE_nn not null,
    HIRECAREER varchar2(10) constraint Company_HIRECARREER_nn not null
);

create table Board(
    ID varchar2(20) constraint Board_ID_nn not null,
    CNAME varchar2(30),
    SCORE number(1) constraint Board_SCORE_nn not null,
    REVIEW varchar2(300),
    constraint FK_Board_CNAME foreign key (CNAME) references Company (CNAME)
);

create table Salary(
    CNAME varchar2(30),
    SALARY number(5) constraint Salary_SALARY_nn not null,
    SAL_GRADE varchar2(10) constraint Salary_SAL_GRADE_nn not null,
    SAL_RANGE varchar2(50),
    constraint FK_Salary_CNAME foreign key (CNAME) references Company (CNAME)
);

create table Chart(
    COM_NO number(3),
    CNAME varchar2(30),
    AVG_SCORE number(2, 1),
    constraint FK_Chart_COM_NO foreign key (COM_NO) references Company (COM_NO)
    constraint FK_Chart_CNAME foreign key (CNAME) references Company (CNAME)
);
'''

