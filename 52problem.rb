require "pry"

final_answer = 0
counter = 0

loop do
	final_answer += 1
	answer_didgets = final_answer.to_s.split("").sort
	times2 = final_answer * 2
	times3 = final_answer * 3
	times4 = final_answer * 4
	times5 = final_answer * 5
	times6 = final_answer * 6
	break if answer_didgets == times2.to_s.split("").sort && answer_didgets == times3.to_s.split("").sort && answer_didgets == times4.to_s.split("").sort && answer_didgets == times5.to_s.split("").sort && answer_didgets == times6.to_s.split("").sort
end

puts final_answer

binding.pry