#!env python

import sys
import re

Matrix = [''] * 16

def extract(line):
    match = re.findall(r'.*8\'b(........).*', line)
    return match[0]

for line in sys.stdin:
    for c in line:
        search = hex(ord(c))[1:]
        with open("8x16-font.v") as origin_file:
            c = 0
            for fline in origin_file:
                fline = fline.rstrip()
                if c > 0 and c <= 16:
                    Matrix[c-1] += extract(fline)
                    c = c + 1
                xline = re.findall(r'' + search, fline)
                if xline:
                    c = 1

addr = 0
print("case (addr)")
for x in Matrix:
    #print("%02i: q_reg <= %i'b_%s;" % (addr, len(x), x[::-1]))
    print("%02i: q_reg <= %i'b_%s;" % (addr, len(x), x))
    addr = addr + 1
print("endcase")
