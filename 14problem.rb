require "pry"

shortcut_collection = {}

def shortcut(num)
	shortcut_collection[num] = chain_length
end

answer = 0
longest_chain = 0
(1..1000000).each do |n|
	number_tested = n
	chain_length = 0
	until n == 1
		if n % 2 == 0
			n = n / 2
			chain_length += 1
		else
			n = (n * 3) + 1
			chain_length += 1
		end
	
	longest_chain = chain_length
	answer = number_tested if chain_length > longest_chain
	end
end

binding.pry