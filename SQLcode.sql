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
    constraint FK_Chart_COM_NO foreign key (COM_NO) references Company (COM_NO),
    constraint FK_Chart_CNAME foreign key (CNAME) references Company (CNAME)
);

insert all
     into Company values(01, 'BankSalad', 'Finance', 'MachineLearning', 'Three', 'Small', 'Newcomer')
     into Company values(02, 'Shinhan Bank','Finance','Analyze_Data', 'Three', 'Big', 'Newcomer')
     into Company values(03, 'Kakao Bank', 'Finance', 'MachineLearning', 'Three', 'Big', 'Experience')
     into Company values(04, 'Tesla', 'Automobile', 'Autonomous_Driving', 'More', 'Big', 'Experience')
     into Company values(05, 'Hyundai Motors', 'Automobile', 'Autonomous_Driving', 'Four', 'Big', 'Newcomer')
     into Company values(06, 'Kia Motors', 'Automobile', 'MachineLearning', 'Four', 'Big', 'Experience')
     into Company values(07, 'Inbody', 'Medical', 'Image', 'Four', 'Medium', 'Newcomer')
     into Company values(08, 'Seegene', 'Medical', 'Genetic_Algorithm', 'Three', 'Medium', 'Experience')
     into Company values(09, 'Vuno', 'Medical', 'Image', 'Three', 'Medium', 'Experience')
     into Company values(10, 'ADT Caps', 'Security', 'Cloud_Security', 'Three', 'Big', 'Experience')
     into Company values(11, 'Ahn Lab', 'Security', 'Anti_Virus', 'Three', 'Medium', 'Experience')
     into Company values(12, 'Secui', 'Security', 'Cloud_Security', 'Three', 'Big', 'Newcomer')
     into Company values(13, 'Naver', 'IT_Service', 'Platform', 'Four', 'Big', 'Newcomer')
     into Company values(14, 'KaKao', 'IT_Service', 'Applications', 'Four', 'Big', 'Newcomer')
     into Company values(15, 'Google Korea', 'IT_Service', 'Platform', 'Four', 'Big', 'Newcomer')
select * from dual;

insert all
    into Salary values('BankSalad', 3392, 'Three', '3000~4000')
    into Salary values('Shinhan Bank', 3862, 'Three', '3000~4000')
    into Salary values('Kakao Bank', 3684, 'Three', '3000~4000')
    into Salary values('Tesla', 14520, 'More', '1??? ??????')
    into Salary values('Hyundai Motors', 4370, 'Four', '4000~5000')
    into Salary values('Kia Motors', 4344, 'Four', '4000~5000')
    into Salary values('Inbody', 4246, 'Four', '4000~5000')
    into Salary values('Seegene', 3897, 'Three', '3000~4000')
    into Salary values('Vuno', 3682, 'Three', '3000~4000')
    into Salary values('ADT Caps', 3016, 'Three', '3000~4000')
    into Salary values('Ahn Lab', 3000, 'Three', '3000~4000')
    into Salary values('Secui', 3941, 'Three', '3000~4000')
    into Salary values('Naver', 4500, 'Four', '4000~5000')
    into Salary values('KaKao', 4200, 'Four', '4000~5000')
    into Salary values('Google Korea', 4055, 'Four', '4000~5000')
select * from dual;

insert all
    into Board values('Bambice', 'BankSalad', 4.0, '??????????????? ????????????')
    into Board values('Caburn', 'Shinhan Bank', 3.0, '????????? ??????, ??????????????? ?????? ???????????? ??? ??????')
    into Board values('Kathing', 'Kakao Bank', 4.0, '????????? ???????????? ??????')
    into Board values('Oise', 'Tesla', 4.0, 'Great management team and it a fun to work here.')
    into Board values('Carym', 'Hyundai Motors', 1.0, '????????? ????????? ????????? ?????????')
    into Board values('Riallina', 'Kia Motors', 5.0, '??????????????? ?????? ????????? ?????????')
    into Board values('Chrimius', 'Inbody', 1.0, 'SW??????????????? ????????? ??????')
    into Board values('Sarte', 'Seegene', 3.0, '??????????????? ???????????? ?????????')
    into Board values('Cymranna', 'Vuno', 4.0, '?????? ??????????????? ????????? ?????? ?????? ??????')
    into Board values('Tres', 'ADT Caps', 3.0, '??????????????????')
    into Board values('Tresek', 'Ahn Lab', 3.0, '???????????? ???????????? ??????')
    into Board values('Drenna', 'Secui', 3.0, '??????????????? ????????? ?????? ???????????? ???')
    into Board values('Enann', 'Naver', 4.0, '???????????? ??????????????? ?????? ?????????.')
    into Board values('Trhuda', 'KaKao', 4.0, '???????????? ????????? ????????? ????????? ??? ?????? ??????')
    into Board values('Jonneach', 'Google Korea', 5.0, '????????? ??????')
select * from dual;

insert all
     into Chart values(01, 'BankSalad', (select round(avg(score)) from board where cname='BankSalad'))
     into Chart values(02, 'Shinhan Bank', (select round(avg(score)) from board where cname='Shinhan Bank'))
     into Chart values(03, 'Kakao Bank', (select round(avg(score)) from board where cname='Kakao Bank'))
     into Chart values(04, 'Tesla', (select round(avg(score)) from board where cname='Tesla'))
     into Chart values(05, 'Hyundai Motors', (select round(avg(score)) from board where cname='Hyundai Motors'))
     into Chart values(06, 'Kia Motors', (select round(avg(score)) from board where cname='Kia Motors'))
     into Chart values(07, 'Inbody', (select round(avg(score)) from board where cname='Inbody'))
     into Chart values(08, 'Seegene', (select round(avg(score)) from board where cname='Seegene'))
     into Chart values(09, 'Vuno', (select round(avg(score)) from board where cname='Vuno'))
     into Chart values(10, 'ADT Caps', (select round(avg(score)) from board where cname='ADT Cap'))
     into Chart values(11, 'Ahn Lab', (select round(avg(score)) from board where cname='Ahn Lab'))
     into Chart values(12, 'Secui', (select round(avg(score)) from board where cname='Secui'))
     into Chart values(13, 'Naver', (select round(avg(score)) from board where cname='Naver'))
     into Chart values(14, 'KaKao', (select round(avg(score)) from board where cname='KaKao'))
     into Chart values(15, 'Google Korea', (select round(avg(score)) from board where cname='Google Korea'))
select * from dual;


commit;
