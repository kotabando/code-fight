S = input()

S_list = list(S)

for i in range(len(S_list)):
    if S_list[i] == "a":
        S_list[i] = 1
    elif S_list[i] == "s":
        S_list[i] = 2
    elif S_list[i] == "d":
        S_list[i] = 3
    elif S_list[i] == "f":
        S_list[i] = 4
    elif S_list[i] == "g":
        S_list[i] = 5
    elif S_list[i] == "h":
        S_list[i] = 6
    elif S_list[i] == "j":
        S_list[i] = 7
    elif S_list[i] == "k":
        S_list[i] = 8
    elif S_list[i] == "l":
        S_list[i] = 9

ans = S_list[0]

for j in range(1, len(S_list)):
    ans += abs(S_list[j] - S_list[j-1]) + 1

print(ans)