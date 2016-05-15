require "pry"

answer = 0
longest_chain = 0

$h = {}

def collatz(n,i,og_n)
	if n == 1
		$h[og_n] = i
		return i
	elsif $h[n] != nil
		$h[og_n] = i+$h[n]
		return i+$h[n]
	elsif n % 2 == 0
		collatz(n/2,i+1,og_n)
	else
		collatz(3*n+1,i+1,og_n)
	end
end

(1...1000000).each do |n|
	l = collatz(n,0,n)
	if l > longest_chain
		answer = n
		longest_chain = l
	end
end

puts answer
