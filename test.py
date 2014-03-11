number_of_grades = raw_input ("How many grades would you like to input?")

array_of_grades = []

for n in range(1,int(number_of_grades)+1):
	grade = raw_input("Enter your grade:")
	array_of_grades.append(grade)

print array_of_grades

puts sum(array_of_grades)/len(array_of_grades)