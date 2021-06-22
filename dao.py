import cx_Oracle
from dto import EmpDTO
import json
import collections 


class EmpDAO:
    def delete(self, dto):
        conn = cx_Oracle.connect(user="SCOTT", password="TIGER", dsn="xe")
        cur = conn.cursor()

        cur.execute("delete from board where com_no=:com_no",
                    com_no = dto.getCom_no())
        conn.commit()

        cur.close()
        conn.close()

    def update(self, dto):
        conn = cx_Oracle.connect(user="SCOTT", password="TIGER", dsn="xe")
        cur = conn.cursor()

        cur.execute("update board set com_no=:com_no , name=:name , score=:score, review=:review where ID=:ID",
                    com_no=dto.getCom_no(), name = dto.getName(), score = dto.getScore(), review = dto.getReview(), ID = dto.getID())
        conn.commit()

        cur.close()
        conn.close()

    # 정보등록!!
    def insert(self, dto):    
        conn = cx_Oracle.connect(user="SCOTT", password="TIGER", dsn="xe")
        cur = conn.cursor()

        try:
            cur.execute("insert into board values (:com_no, :name, :id, :score, :review)",
                        com_no=dto.getCom_no(), name = dto.getName(), id=dto.getId(), score = dto.getScore(), review = dto.Review())
            conn.commit()
        except Exception as e:
            print(e)

        finally:
            cur.close()
            conn.close()

    # 회사 정보 가져오기!!
    def boardone(self, com_no):

        data = ''

        try:
            conn = cx_Oracle.connect(user="SCOTT", password="TIGER", dsn="xe")
            cur = conn.cursor()
            cur.execute("select * from board where com_no=:com_no", com_no=com_no)
            row = cur.fetchone()
            data = '{"ename":"' + row[1] + '", "sal":' + str(row[2]) + '}'

        except Exception as e:
            print(e)

        finally:
            cur.close()
            conn.close()

        return data

    def empall(self):
        data = ''

        try:
            conn = cx_Oracle.connect(user="SCOTT", password="TIGER", dsn="xe")
            cur = conn.cursor()
            cur.execute("select * from emp01")
            rows = cur.fetchall()
            v = []
            for row in rows:
                d = collections.OrderedDict()
                d['empno'] = row[0]
                d['ename'] = row[1]
                d['sal'] = row[2]

                v.append(d)

            data = json.dumps(v, ensure_ascii=False)

            return data
                

        except Exception as e:
            print(e)

        finally:
            cur.close()
            conn.close()

        return data
if __name__ == "__main__":
    pass