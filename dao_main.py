import cx_Oracle
from dto_main import ComDTO
import json
import collections 

class ComDAO:
    # def companyone(self, industry, techstack, sal_grade, scale, hirecareer):
     def companyone(self):

        data = ''
        # industry = "('" + "' ,'".join(industry) + "')"
        # techstack = "('" + "' ,'".join(techstack) + "')"
        # sal_grade = "('" + "' ,'".join(sal_grade) + "')"
        # scale = "('" + "' ,'".join(scale) + "')"
        # hirecareer = "('" + "' ,'".join(hirecareer) + "')"

        # industry = industry.replace('(', "('").replace(')')

    

        try:
            conn = cx_Oracle.connect(user="SCOTT", password="TIGER", dsn="xe")
            cur = conn.cursor()
            print("companyone 시작")
            # print(industry)     # 'Automobile'  /  'Automobile' ,'Medical' ,'Security'  / ('Automobile' ,'Medical') / ['Automobile', 'Medical']
            # print(type(industry))       # <class 'str'>    /   <class 'list'> : ORA-01484: arrays can only be bound to PL/SQL statements
            # print(techstack)    # 'Data_Analysis'
            # print(sal_grade)
            # print(scale)
            # print(hirecareer)
            # cur.execute("select :industry from dual", industry=industry) # ("('Finance')",)
            # cur.execute("select * from company where industry=:industry", industry=industry)
            # ("('Automobile' ,'Medical' ,'Security')",)
            # ("'Automobile' ,'Medical' ,'Security'",)


            # select * from company where INDUSTRY in ('Automobile') and TECH_STACK in ('Autonomous_Driving') and SAL_GRADE in ('More') and SCALE in ('Big') and HIRECAREER in ('Experience');
           
            # cur.execute("select * from company where INDUSTRY in :industry and TECH_STACK in :techstack and SAL_GRADE in :sal_grade and SCALE in :scale and HIRECAREER in :hirecareer", \
            #     industry=industry, techstack=techstack, sal_grade=sal_grade, scale=scale, hirecareer=hirecareer)
            # cur.execute("select * from company where INDUSTRY in :industry and TECH_STACK in :techstack and SAL_GRADE in :sal_grade and SCALE in :scale and HIRECAREER in :hirecareer", \
            #     industry=industry, techstack=techstack, sal_grade=sal_grade, scale=scale, hirecareer=hirecareer)
           
            industry =  ['Automobile', 'Medical']
            # industry =  ('Automobile', 'Medical')
            cur.execute("select * from company where INDUSTRY in :industry", industry=industry)
            rows = cur.fetchall()
            for row in rows:
                data = row[0]

                # 정말 시도해보고 안된다면..... radio로..
            # cur.execute("select * from company where INDUSTRY=:industry and TECH_STACK=:techstack and SAL_GRADE=:sal_grade and SCALE=:scale and HIRECAREER=:hirecareer", \
                # industry=industry, techstack=techstack, sal_grade=sal_grade, scale=scale, hirecareer=hirecareer)
            print("sql 문장실행됨!!!")
            # row = cur.fetchone()
            # print(row) # None
            # for row in rows:
            #     data = row[0]
            # print(data)
                # print(row[0])
            # data = '{"cname":"' + str(row[1]) + '}'


        except Exception as e:
            print(e)

        finally:
            cur.close()
            conn.close()

        # return data


if __name__ == "__main__":
#     # dto = ComDTO(('Automobile'), ('Data_Analysis', 'Autonomous_Driving'), ('Four', 'More'), ('Big', 'Medium'), ('Newcomer', 'Experience'))
#     print(ComDAO().companyone('Automobile', 'Data_Analysis', 'Autonomous_Driving', 'Four', 'More', 'Big', 'Medium', 'Newcomer', 'Experience'))
    ComDAO().companyone()