create table Company(
    COM_NO number(3) primary key,
    CNAME varchar(30) constraint Company_NAME_nn not null,
    INDUSTRY varchar2(30) constraint Company_INDUSTRY_nn not null,
    TECH_STACK varchar2(30) constraint Company_TECH_STACK_nn not null,
    SALARY number(5),
    SAL_GRADE number(3) constraint Company_SIZE_nn not null, 
    SCALE varchar2(10) constraint Company_SIZE_nn not null,
    HIRECAREER varchar2(10) constraint Company_HIRECARREER_nn not null
);

create table Board(
    ID number(3) constraint Board_ID_nn not null,
    CNAME number(3) constraint Board_CNAME_nn not null,
    SCORE number(1) constraint Board_SCORE_nn not null,
    REVIEW varchar(50)
);

insert all
     into Company values(01, 'BankSalad', 'finance', 'MachineLearning', 3392, 'small', 'newcomer')
     into Company values(02, 'Shinhan Bank','finance','Analyze Data', 3862, 'big', 'newcomer')
     into Company values(03, 'Kakao Bank', 'finance', 'MachineLearning', 3684, 'big', 'experience')
     into Company values(04, 'Tesla', 'automobile industry', 'Autonomous driving', 14520, 'big', 'experience')
     into Company values(05, 'Hyundai Motors', 'automobile industry', 'Autonomous driving', 4370, 'big', 'newcomer')
     into Company values(06, 'Kia Motors', 'automobile industry', 'MachineLearning', 4344, 'big', 'experience')
     into Company values(07, 'Inbody', 'Medical', 'Image', 4246, 'medium', 'newcomer')
     into Company values(08, 'Cizen', 'Medical', 'Genetic Algorithm', 3897, 'medium', 'experience')
     into Company values(09, 'Vuno', 'Medical', 'Image', 3682, 'medium', 'experience')
     into Company values(10, 'ADT Caps', 'Security', 'Cloud Security', 3016, 'big', 'experience')
     into Company values(11, 'Ahn Lab', 'Security', 'Anti-Virus', 3000, 'medium', 'experience')
     into Company values(12, 'Secui', 'Security', 'Cloud Security', 5416, 'big', 'newcomer')
     into Company values(13, 'Naver', 'IT Service', 'Platform', 4500, 'big', 'newcomer')
     into Company values(14, 'KaKao', 'IT Service', 'Applications', 4200, 'big', 'newcomer')
     into Company values(15, 'Google Korea', 'IT Service', 'Platform', 4055 , 'big', 'newcomer')
select * from dual;
commit;
