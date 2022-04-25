S = input()
N = int(input())

ans = ""

for i in range(1, N+1):
    ans = "a" * i + S

print(ans)