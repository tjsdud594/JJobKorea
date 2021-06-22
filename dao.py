import cx_Oracle
from dto import EmpDTO
import json
import collections 


class EmpDAO:
    def delete(self, dto):
        conn = cx_Oracle.connect(user="SCOTT", password="TIGER", dsn="xe")
        cur = conn.cursor()

        cur.execute("delete from board where name=:name and ID=:ID",
                    name = dto.getName(), ID = dto.getID())
        conn.commit()

        cur.close()
        conn.close()

    def update(self, dto):
        conn = cx_Oracle.connect(user="SCOTT", password="TIGER", dsn="xe")
        cur = conn.cursor()

        cur.execute("update board set score=:score, review=:review where ID=:ID and cname=:cname",
                    cname = dto.getCname(), score = dto.getScore(), review = dto.getReview(), ID = dto.getID())
        conn.commit()

        cur.close()
        conn.close()

    # 정보등록!!
    def insert(self, dto):    
        conn = cx_Oracle.connect(user="SCOTT", password="TIGER", dsn="xe")
        cur = conn.cursor()

        try:
            cur.execute("insert into board values (:cname, :id, :score, :review)",
                        cname = dto.getCname(), id=dto.getID(), score = dto.getScore(), review = dto.getReview())
            conn.commit()
        except Exception as e:
            print(e)

        finally:
            cur.close()
            conn.close()

    # 회사 정보 가져오기!!
    def boardone(self, ID):

        data = ''

        try:
            conn = cx_Oracle.connect(user="SCOTT", password="TIGER", dsn="xe")
            cur = conn.cursor()
            cur.execute("select * from board where ID=:ID", ID = ID)
            row = cur.fetchone()
            data = '{"name":"' + str(row[1]) + '", "score":' + str(row[3]) + '", "review":' + (row[4]) + '}'

        except Exception as e:
            print(e)

        finally:
            cur.close()
            conn.close()

        return data

    def boardall(self):
        data = ''

        try:
            conn = cx_Oracle.connect(user="SCOTT", password="TIGER", dsn="xe")
            cur = conn.cursor()
            cur.execute("select * from board")
            rows = cur.fetchall()
            v = []
            for row in rows:
                d = collections.OrderedDict()
                d['ID'] = row[0]
                d['name'] = row[1]
                d['score'] = row[3]
                d['review'] = row[4]

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