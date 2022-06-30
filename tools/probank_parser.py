from xml.dom import minidom

class NoTerminal(object):
    lhs = ''
    rhs = []

    def __init__(self, lhs, rhs):
        self.lhs = lhs
        self.rhs = rhs

    def __hash__(self):
        return hash((self.lhs, str(self.rhs)))

    def __eq__(self, other):
        return (self.lhs, str(self.rhs)) == (other.lhs, str(other.rhs))

    def __ne__(self, other):
        # Not strictly necessary, but to avoid having both x==y and x!=y
        # True at the same time
        return not(self == other)

    def to_string(self):
        ret = lhs + ' -> '
        for r in rhs:
            ret += r + ' '
        return ret

def make_noTerminal(lsh, rhs):
    no_terminal = NoTerminal(lsh, rhs)
    return no_terminal


rules = [] 

with open('grammar.cgf', 'w') as f:
    file = minidom.parse('data/corpus/probank.xml')

    sentenses = file.getElementsByTagName('s')

    for sentense in sentenses:
        terminals = sentense.getElementsByTagName('t')    
        nterminals = sentense.getElementsByTagName('nt')

        for rule in nterminals:
            lhs = rule.attributes['cat'].value
            rhs = []
            edges = rule.getElementsByTagName('edge')
            for edge in edges:
                rhs.append(edge.attributes['label'].value)

            no_terminal = make_noTerminal(lhs, rhs)
            rules.append(no_terminal.to_string())

    rules = list(dict.fromkeys(rules))
    for rule in rules:
        f.write(rule + '\n')




            

