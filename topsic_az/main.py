H, W, Q = map(int,input().split())
rcs = [input().split() for _ in range(Q)]

x = [["."] * W for _ in range(H)]

for i in range(Q):
    x[int(rcs[i][0]) - 1][int(rcs[i][1]) - 1] = rcs[i][2]

for j in range(H):
    print("".join(x[j]))