create table Company(
    COM_NO number(3) primary key,
    NAME varchar(30) constraint Company_NAME_nn not null,
    INDUSTRY varchar2(30) constraint Company_INDUSTRY_nn not null,
    TECH_STACK varchar2(30) constraint Company_TECH_STACK_nn not null,
    SALARY number(4),
    SIZE varchar2(10) constraint Company_SIZE_nn not null,
    HIRECARREER varchar2(10) constraint Company_HIRECARREER_nn not null,
    RETIRE number(4,2)
    
    
);

create table Impression(
    COM_NO number(3) constraint  Company_COM_NO_fk  references Company(COM_NO),
    F_IMPRESSION number(3) constraint Company_F_IMPRESSION_nn not null,
    A_IMPRESSION number(3 constraint Company_F_IMPRESSION_nn not null    
);

insert all
     into Company values(01, 'BankSalad', 'finance', 'MachineLearning', 3392, 'small', 'newcomer', 62.84 )
     into Company values(02, 'Shinhan Bank','finance','knowingbro')
     into Company values(03, 'Kakao Bank', 'finance', 'What do you do when you play?')
     into Company values(04, 'Tesla', 'automobile industry', 'Alley Restaurant')
     into Company values(05, 'Hyundai Motors', 'automobile industry', 'Alley Restaurant')
     into Company values(06, 'Kia Motors', 'automobile industry', 'Alley Restaurant')
     into Company values(07, 'Inbody', 'Medical', 'Alley Restaurant')
     into Company values(08, 'Cizen', 'Medical', 'Alley Restaurant')
     into Company values(09, 'Vuno', 'Medical', 'Alley Restaurant')
     into Company values(10, 'ADT Caps', 'Security', 'Alley Restaurant')
     into Company values(11, 'Ahn Lab', 'Security', 'Alley Restaurant')
     into Company values(12, 'Secui', 'Security', 'Alley Restaurant')
     into Company values(13, 'Naver', 'IT Service', 'Alley Restaurant')
     into Company values(14, 'KaKao', 'IT Service', 'Alley Restaurant')
     into Company values(15, 'Google', 'IT Service', 'Alley Restaurant')
select * from dual;
commit;

-- insert into Impression values(01, 02, 03)
-- insert into Impression values(02, 01, 04)
-- insert into Impression values(03, 04, 01)
-- insert into Impression values(04, 03, 02)