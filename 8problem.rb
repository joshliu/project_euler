require "pry"

longnum = File.read("supernumber.txt")

longnum.gsub!("\n", "")
strfactors = longnum.split("")
intfactors = []
largestnumber = 0
eachproduct = 0
indexnum = 0

intfactors = strfactors.map{ |factor| factor.to_i }

995.times do
  eachproduct = intfactors[indexnum]*intfactors[indexnum+1]*intfactors[indexnum+2]*intfactors[indexnum+3]*intfactors[indexnum+4]

  puts "index is #{indexnum}"

  indexnum += 1

  puts eachproduct
  largestnumber = eachproduct if eachproduct > largestnumber
end
puts largestnumber

binding.pry
