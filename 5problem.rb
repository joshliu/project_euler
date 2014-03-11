require "pry"
require "prime"

counter = 1
loop do
	if counter % 19 == 0 && counter % 17 == 0 && counter % 16 == 0 && counter % 9 == 0 && counter % 13 == 0 && counter % 11 == 0 && counter % 7 == 0 && counter % 5 == 0
		print counter
		break
	else
		counter += 1
	end
end