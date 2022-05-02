N, G, A = map(int,input().split())

import math

maxap = A // math.ceil(N / 2)
if maxap > G:
    maxap = G

y = 0
x = A // math.floor(N / 2)
if x > G:
    y = G

minap = math.ceil((A - math.floor(N / 2) * G) / math.ceil(N / 2))

print(maxap, minap)