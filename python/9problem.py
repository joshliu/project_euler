product = 1
answer_a = 0
answer_b = 0
answer_c = 0

for a in range(1,1001):
	for b in range(1,1001):
		for c in range(1,1001):
			if (a**2 + b**2 == c**2) and a+b+c == 1000:
				answer_a = a
				answer_b = b
				answer_c = c
				product = (a*b*c)

print product
