n = int(input())

if n % 100 != 0:
    print (-1) 
else:
    count = 0
    count += n // 500
    count += (n % 500) // 100
    print (count)