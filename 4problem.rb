require "pry"
require "awesome_print"

def quick_sort(array)
  return [] if array == []
  pivot = array.shift
  less, greater = [], []
  array.each do |n|
    if n <= pivot
      less << n
    else
      greater << n
    end
  end
  return quick_sort(less) + [pivot] + quick_sort(greater)
end

total = 0
products = []
palindromes = []
range1 = (1...1000)
range2 = (1...1000)
range1.each do |factor1|
  range2.each {|factor2| products << (factor1*factor2)}
end
products.each {|x| palindromes << x if x.to_s == x.to_s.reverse}
palindromes = palindromes.sort
awesome_print palindromes

binding.pry
