class cgf:
    lhs = ""
    rhs = []

    def __init__(self, value):
        words = value.split()
        self.lhs = words[0]
        for i in range(2,len(words), 1):
            self.rhs.append(words[i])

class cnf:
    lhs = ""
    rhs = []
    terminal = False

    def __init__(self, lhs, rhs1, rhs2):
        self.lhs = lhs
        self.rhs.append(rhs1)
        self.rhs.append(rhs2)

    def __init__(self, lhs, rhs1):
        self.lhs = lhs
        self.rhs.append(rhs1)
        self.terminal = True




with open('grammar.cgf') as read:
    with open('grammar.cnf', 'w') as write:
        for line in read:
            value = cgf(line)
            ocnf = None
            if len(value.rhs) == 1:
                ocnf = cnf(value.lhs, value.rhs[0])
            elif len(value.rhs) == 2:
                ocnf = cnf(value.lhs, value.rhs[0], value.rhs[1])
            else:
                pass
              
def merge(cgf, pos):
    ret = []
    for i in range(pos, len(cgf.rhs), 2):
        ret.append(cnf(cgf.lhs + "'", cgf.rhs[i], cgf.rhs[i + 1]))


