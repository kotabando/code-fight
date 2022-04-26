N = int(input())
A = list(map(int,input().split()))

ex = 0
ex_2 = 0

for i in range(1, N):
    ex += max(0, A[i] - A[i-1])
    ex_2 += max(0, -A[i] + A[i-1])

print(min(ex, ex_2))