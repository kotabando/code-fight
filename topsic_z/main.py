N = int(input())

ans = 0

for i in range(1, N+1):
    for x in range(1, i+1):
        if i % x == 0:           
            ans += x

print (ans)