xy = [list(map(int,input().split())) for _ in range(6)]

from math import dist

a = dist(xy[0], xy[1]), dist(xy[1], xy[2]), dist(xy[2], xy[0])
b = dist(xy[3], xy[4]), dist(xy[4], xy[5]), dist(xy[5], xy[3])

list_a = sorted(list(a))
list_b = sorted(list(b))

if list_a[1] / list_a[0] == list_b[1] / list_b[0] and list_a[2] / list_a[1] == list_b[2] / list_b[1] and list_a[0] / list_a[2] == list_b[0] / list_b[2]:
    print("YES")
else:
    print("NO")