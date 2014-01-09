require "pry"

start = Time.now
shortcuts = {}
answer = 0
longest_chain = 0

(1..1000000).each do |num|
	chain_length = 0
	number_tested = num
	unless shortcuts.keys.include?(num)
		until num == 1
			if shortcuts.keys.include?(num)
				chain_length += shortcuts[num]
				break
			else
				if num.even?
					num = num / 2
					chain_length += 1
				else
					num = (num * 3) + 1
					chain_length += 1
				end
			end
		puts "#{number_tested}, #{Time.now - start}"
			if chain_length > longest_chain
				answer = number_tested
				longest_chain = chain_length
			end
		end
	shortcuts[number_tested] = chain_length
	else
		chain_length += shortcuts[num]
	end
end

puts "Took #{Time.now - start} seconds. The answer is #{answer}."
binding.pry