import cx_Oracle
from dto_main import ComDTO
import json
import collections 

class ComDAO:
    def companyone(self, a,b,c,d,e):
        # print('--- ', INDUSTRY,  TECH_STACK, SAL_GRADE, SCALE, HIRECAREER)

        data = ''
        
        
        try:
            conn = cx_Oracle.connect(user="SCOTT", password="TIGER", dsn="xe")
            cur = conn.cursor()
            
            test=a+b+c+d+e

            a_= [":" + str(i + 1) for i in range(len(a))]
            b_= [":" + str(i + 1) for i in range(len(b))]
            c_= [":" + str(i + 1) for i in range(len(c))]
            d_= [":" + str(i + 1) for i in range(len(d))]
            e_= [":" + str(i + 1) for i in range(len(e))]
            
            # sql = "select * from emp01 where empno in (%s)" % (",".join(bind_names))
            
            # sql = sql + " and sal in (%s)" % (",".join(bind_sql))
            
            
            sql = "select cname from company where INDUSTRY in ({})".format((",".join(a_)))
            sql1 = sql+ "and TECH_STACK in ({}) ".format((",".join(b_)))
            sql2 = sql1+ "and SAL_GRADE in ({}) ".format((",".join(c_)))
            sql3 = sql2+ "and SCALE in ({}) ".format((",".join(d_)))
            sql4 = sql3+ "and HIRECAREER in ({}) ".format((",".join(e_)))
            print(sql4)
            cur.execute(sql4, test)                              

            row = cur.fetchone()
            print('===9====', row)
            data = '{"cname":"' + str(row[0]) + '}'
            print(data)

        except Exception as e:
            print(e)

        finally:
            cur.close()
            conn.close()

        return data