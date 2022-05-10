import math

N, M = map(int,input().split())
ab = [list(map(int,input().split())) for _ in range(M)]

count = 0

for i in range(1, N+1):
    ab_list = []
    for j in range(M):
        if i in ab[j]:
            ab_list.append(ab[j])

    if len(ab_list) >= 6:
        count += math.factorial(len(ab_list)) // (math.factorial(len(ab_list) - 6) * math.factorial(6))

print(count * math.factorial(6))