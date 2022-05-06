N, G, A = map(int,input().split())

import math

maxap = A // math.ceil(N / 2)
if maxap > G:
    maxap = G

minap = math.ceil((A - math.floor(N / 2) * G) / math.ceil(N / 2))
if minap < 0:
    minap = 0

print(maxap, minap)