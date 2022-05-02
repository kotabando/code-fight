N = int(input())
a = list(map(int,input().split()))
b = list(map(int,input().split()))

a_list = sorted(a)
b_list = sorted(b)

for i in range(N):
    for j in range(N):
        if a_list[i] == b_list[i]:
            continue
        if a_list[i] == b_list[j]:
            a_list[i], a_list[j] = a_list[j], a_list[i]

count = 0

for x in range(N):
    if a_list[x] != b_list[x]:
        count += abs(a_list[x] - b_list[x])

print(count)