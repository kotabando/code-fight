import math
N, M = map(int,input().split())
ab = [list(map(int,input().split())) for _ in range(M)]

count = 0

for i in range(1, N+1):
    list_ab = []
    for j in range(M):
        if i in ab[j]:
            list_ab.append(ab[j])

    if len(list_ab) >= 6:
        count += math.factorial(len(list_ab)) // math.factorial(6) * math.factorial(len(list_ab) - 6)

print(math.factorial(6) * count)