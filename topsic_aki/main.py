N = int(input())
S = input()

S_list = list(S)

ans = -1

for i in range(N):
    x = S_list.pop(i)
    if S_list == sorted(S_list):
        ans = i + 1
    S_list.insert(i, x)

print(ans)