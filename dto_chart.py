class ChtDTO:
    def __init__(self, newcom_no, newcname, newavg):
        self.com_no = newcom_no
        self.cname = newcname
        self.avg = newavg

    
    def getCom_no(self):
        return self.com_no

    def setCom_no(self, newcom_no):
        self.com_no = newcom_no

    def getCname(self):
        return self.cname

    def setCname(self, newcname):
        self.cname = newcname

    def getAvg_score(self):
        return self.avg

    def setAvg_score(self, newavg):
        self.avg = newavg

    def __str__(self):
        return '번호 : ' + self.com_no + ', 회사이름 : ' + self.cname + ', 리뷰점수 : ' + self.avg 

# if __name__ == '__main__':
#     d = ChtDTO('01', 'BankSalad', '4.0')
#     print(d)
