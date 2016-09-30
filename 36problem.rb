require "pry"

final_sum = 0
palindrome_array = []
answer_array = []

("1".."1000000").each do |x|
  if x == x.reverse
    palindrome_array << x
  end
end

palindrome_array.map! { |palindrome| palindrome.to_i.to_s(2) }

palindrome_array.each do |binary|
  if binary == binary.reverse
    final_sum += binary.to_i(base = 2)
    answer_array << binary.to_i(base = 2)
  end
end

binding.pry
