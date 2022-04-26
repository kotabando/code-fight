N = int(input())
d = [int(input()) for _ in range(1, N+1)]

x = sum(d[::4]) - sum(d[2::4])
y = sum(d[3::4]) - sum(d[1::4])

print(x, y)