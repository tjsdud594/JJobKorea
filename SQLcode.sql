create table Company(
    COM_NO number(3) primary key,
    NAME varchar(30) constraint Company_NAME_nn not null,
    INDUSTRY varchar2(30) constraint Company_INDUSTRY_nn not null,
    TECH_STACK varchar2(30) constraint Company_TECH_STACK_nn not null,
    SALARY number(4),
    SIZE varchar2(10) constraint Company_SIZE_nn not null,
    HIRECARREER varchar2(10) constraint Company_HIRECARREER_nn not null
    
    
    
);

create table Board(
    COM_NO number(3) constraint  Board_COM_NO_fk  references Company(COM_NO),
    ID number(3) constraint Company_F_IMPRESSION_nn not null,
    COMPANY number(3 constraint Company_F_IMPRESSION_nn not null    
);

insert all
     into Company values(01, 'BankSalad', 'finance', 'MachineLearning', 3392, 'small', 'newcomer', 62.84 )
     into Company values(02, 'Shinhan Bank','Analyze Data','knowingbro', 5500, 'big', 9.84)
     into Company values(03, 'Kakao Bank', 'finance', 'MachineLearning', 3684, 'big', 13.54)
     into Company values(04, 'Tesla', 'automobile industry', 'Autonomous driving', 14520, 'big')
     into Company values(05, 'Hyundai Motors', 'automobile industry', 'Autonomous driving', 6500, 'big')
     into Company values(06, 'Kia Motors', 'automobile industry', 'MachineLearning', 4344, 'big')
     into Company values(07, 'Inbody', 'Medical', 'Image', 4000, 'medium')
     into Company values(08, 'Cizen', 'Medical', 'Genetic Algorithm', 4000, 'medium')
     into Company values(09, 'Vuno', 'Medical', 'Image', 4000, 'medium')
     into Company values(10, 'ADT Caps', 'Security', 'Cloud', 3016)
     into Company values(11, 'Ahn Lab', 'Security', 'Anti-Virus', 4836)
     into Company values(12, 'Secui', 'Security', 'Cloud Security', 5416)
     into Company values(13, 'Naver', 'IT Service', 'Platform', 10247)
     into Company values(14, 'KaKao', 'IT Service', 'Applications', 13200)
     into Company values(15, 'Google', 'IT Service', 'Voice recognition', 16000)
select * from dual;
commit;

-- insert into Impression values(01, 02, 03)
-- insert into Impression values(02, 01, 04)
-- insert into Impression values(03, 04, 01)
-- insert into Impression values(04, 03, 02)