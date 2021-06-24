from flask import Flask, request, render_template
from dao import EmpDAO
from dto import EmpDTO
from dao_main import ComDAO
from dto_main import ComDTO
from dao_chart import ChtDAO
from dto_chart import ChtDTO

app=Flask(__name__)

@app.route("/", methods=["GET"])
def get():
    return render_template("reqres.html")



@app.route("/choice", methods=["POST"])
def choice():

    a=request.form.getlist('Industry')    
    b=request.form.getlist('Tech_Stack')
    c=request.form.getlist('Salary')
    d=request.form.getlist('Company_Size')
    e=request.form.getlist('Hirecareer')
    print(a)
    print(b)
    print(c)
    print(d)
    print(e)

    industry = "'" + "' ,'".join(a) + "'"
    techstack = "'" + "' ,'".join(b) + "'"
    sal_grade = "'" + "' ,'".join(c) + "'"
    scale = "'" + "' ,'".join(d) + "'"
    hirecareer = "'" + "' ,'".join(e) + "'"

    print()
    data = ComDAO().companyone(industry, techstack, sal_grade, scale, hirecareer)
    # data = ComDAO().companyone(a, b, c, d, e)



    return render_template("choice.html", result=data)



@app.route("/chart", methods=["POST"])
def chart():
    return render_template("googlechart.html")

@app.route("/showchart", methods=["POST"])
def showchart():
    return ChtDAO().chartall()


# 게시판은 완료!!
@app.route("/board", methods=["get"])
def board():
    
    return render_template("review.html")


@app.route("/insert", methods=["POST"])
def insertreview():
    print("----------")
    dao = EmpDAO()
    dto = EmpDTO(request.form.get("id"), request.form.get("cname"), request.form.get("score"), request.form.get("review"))
    dao.insert(dto)
    print("================")
    return dao.boardone(request.form.get('id'))


# 모든 리뷰정보를 요청 및 응답하는 함수
@app.route("/insertboard", methods=["GET"])
def insertboard():
    return EmpDAO().boardall()



if __name__=="__main__":
    app.run(debug=True, host="127.0.0.1", port="5000")



# select cname from Company where industry in ('finance', 'Security') and 
# tech_stack in ('MachineLearning', 'Cloud_Security') and 
# sal_grade in (1, 2) and 
# scale in ('big', 'medium', 'small') and 
# hirecareer in ('experience', 'newcomer');