class EmpDTO:
    def __init__(self, newcom_no, newname, newid, newscore, newreview):
        self.com_no = newcom_no
        self.name = newname
        self.id = newid
        self.score = newscore
        self.review = newreview

    def getCom_no(self):
        return self.com_no
    
    def setCom_no(self, newcom_no):
        self.com_no = newcom_no

    def getName(self):
        return self.name
    
    def setName(self, newname):
        self.name = newname

    def getID(self):
        return self.id
    
    def setID(self, newid):
        self.id = newid

    def getScore(self):
        return self.score
    
    def setScore(self, newscore):
        self.score = newscore
    
    def getReview(self):
        return self.review

    def setReview(self, newreview):
        self.review = newreview



    def __str__(self):
        return '번호 : ' + self.com_no + '- 이름 : ' + self.name + '- 아이디 : ' + self.id + '- 점수 : ' + self.score + '- 리뷰 : ' + self.review

# if __name__ == '__main__':
#     d = EmpDTO('1', '정현','dd', '1','노잼')
#     print(d)
    