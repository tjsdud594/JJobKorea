class ComDTO:
    def __init__(self, newcom_no, newcname, newindustry, newtechstack, newsal_grade, newscale, newhirecareer):
        self.com_no = newcom_no
        self.cname = newcname
        self.industry = newindustry
        self.techstack = newtechstack
        self.sal_grade = newsal_grade
        self.scale = newscale
        self.hirecareer = newhirecareer

    def getCom_no(self):
        return self.com_no

    def setCom_no(self, newcom_no):
        self.com_no = newcom_no

    def getCname(self):
        return self.cname

    def setCname(self, newcname):
        self.cname = newcname

    def getIndustry(self):
        return self.industry

    def setIndustry(self, newindustry):
        self.industry = newindustry

    def getTechstack(self):
        return self.techstack

    def setTechstack(self, newtechstack):
        self.techstack = newtechstack

    def getSal_grade(self):
        return self.sal_grade

    def setSal_grade(self, newsal_grade):
        self.sal_grade = newsal_grade

    def getScale(self):
        return self.scale

    def setScale(self, newscale):
        self.scale = newscale

    def getHirecareer(self):
        return self.hirecareer

    def setHirecareer(self, newhirecareer):
        self.hirecareer = newhirecareer

    def __str__(self):
        return '번호 : ' + self.com_no + ', 회사이름 : ' + self.cname + ', 산업군 : ' + self.industry + ', 사용기술 : ' + self.techstack + ', 초봉 : ' + self.sal_grade + 'thousand' + ', 회사규모 : ' + self.scale + ', 선호인력 : ' + self.hirecareer

# if __name__ == '__main__':
#     d = ComDTO('01', 'BankSalad', 'Finance','MachineLearning', 'Three','Small', 'Newcomer')
#     print(d)
