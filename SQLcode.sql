create table Company(
    COM_NO number(3) primary key,
    CNAME varchar2(30) constraint Company_CNAME_nn not null unique,
    INDUSTRY varchar2(30) constraint Company_INDUSTRY_nn not null,
    TECH_STACK varchar2(30) constraint Company_TECH_STACK_nn not null,
    SAL_GRADE number(3) constraint Company_SAL_GRADE_nn not null, 
    SCALE varchar2(10) constraint Company_SCALE_nn not null,
    HIRECAREER varchar2(10) constraint Company_HIRECARREER_nn not null
);

create table Board(
    ID number(3) constraint Board_ID_nn not null,
    CNAME varchar2(30),
    SCORE number(1) constraint Board_SCORE_nn not null,
    REVIEW varchar2(50),
    constraint FK_Board_CNAME foreign key (CNAME) references Company (CNAME)
);

create table Salary(
    CNAME varchar2(30),
    SALARY number(5) constraint Salary_SALARY_nn not null,
    SAL_GRADE number(3) constraint Salary_SAL_GRADE_nn not null,
    SAL_RANGE varchar2(50),
    constraint FK_Salary_CNAME foreign key (CNAME) references Company (CNAME)
);

insert all
     into Company values(01, 'BankSalad', 'Finance', 'MachineLearning', 1, 'Small', 'Newcomer')
     into Company values(02, 'Shinhan Bank','Finance','Analyze_Data', 1, 'Big', 'Newcomer')
     into Company values(03, 'Kakao Bank', 'Finance', 'MachineLearning', 1, 'Big', 'Experience')
     into Company values(04, 'Tesla', 'Automobile', 'Autonomous_Driving', 9, 'Big', 'Experience')
     into Company values(05, 'Hyundai Motors', 'Automobile', 'Autonomous_Driving', 2, 'Big', 'Newcomer')
     into Company values(06, 'Kia Motors', 'Automobile', 'MachineLearning', 2, 'Big', 'Experience')
     into Company values(07, 'Inbody', 'Medical', 'Image', 2, 'Medium', 'Newcomer')
     into Company values(08, 'Cizen', 'Medical', 'Genetic_Algorithm', 1, 'Medium', 'Experience')
     into Company values(09, 'Vuno', 'Medical', 'Image', 1, 'Medium', 'Experience')
     into Company values(10, 'ADT Caps', 'Security', 'Cloud_Security', 1, 'Big', 'Experience')
     into Company values(11, 'Ahn Lab', 'Security', 'Anti_Virus', 1, 'Medium', 'Experience')
     into Company values(12, 'Secui', 'Security', 'Cloud_Security', 1, 'Big', 'Newcomer')
     into Company values(13, 'Naver', 'IT_Service', 'Platform', 2, 'Big', 'Newcomer')
     into Company values(14, 'KaKao', 'IT_Service', 'Applications', 2, 'Big', 'Newcomer')
     into Company values(15, 'Google Korea', 'IT_Service', 'Platform', 2, 'Big', 'Newcomer')
select * from dual;

insert all
    into Salary values('BankSalad', 3392, 1, '3000~4000')
    into Salary values('Shinhan Bank', 3862, 1, '3000~4000')
    into Salary values('Kakao Bank', 3684, 1, '3000~4000')
    into Salary values('Tesla', 14520, 9, '1억 이상')
    into Salary values('Hyundai Motors', 4370, 2, '4000~5000')
    into Salary values('Kia Motors', 4344, 2, '4000~5000')
    into Salary values('Inbody', 4246, 2, '4000~5000')
    into Salary values('Cizen', 3897, 1, '3000~4000')
    into Salary values('Vuno', 3682, 1, '3000~4000')
    into Salary values('ADT Caps', 3016, 1, '3000~4000')
    into Salary values('Ahn Lab', 3000, 1, '3000~4000')
    into Salary values('Secui', 3941, 1, '3000~4000')
    into Salary values('Naver', 4500, 2, '4000~5000')
    into Salary values('KaKao', 4200, 2, '4000~5000')
    into Salary values('Google Korea', 4055, 2, '4000~5000')
select * from dual;
commit;
