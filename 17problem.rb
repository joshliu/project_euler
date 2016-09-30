require "pry"
require "awesome_print"

running_total = 0

letter_hash = { "1" => "one",
  "2" => "two",
  "3" => "three",
  "4" => "four",
  "5" => "five",
  "6" => "six",
  "7" => "seven",
  "8" => "eight",
  "9" => "nine",
  "10" => "ten",
  "11" => "eleven",
  "12" => "twelve",
  "13" => "thirteen",
  "14" => "fourteen",
  "15" => "fifteen",
  "16" => "sixteen",
  "17" => "seventeen",
  "18" => "eighteen",
  "19" => "nineteen",
  "20" => "twenty",
  "30" => "thirty",
  "40" => "forty",
  "50" => "fifty",
  "60" => "sixty",
  "70" => "seventy",
  "80" => "eighty",
  "90" => "ninety",
  "100" => "hundred",
  "1000" => "thousand",
}

("1".."1000").each do |x|
  num_string = ""
  if x.length == 4
    num_string = "onethousand"
  elsif x.length == 3
    if x[1] == "0"
      if x[2] == "0"
        num_string = letter_hash[x[0]]+"hundred"
      else
        num_string = letter_hash[x[0]]+"hundredand"+letter_hash[x[2]]
      end
    elsif x[1] == "1"
      if x[2] != "0"
        num_string = letter_hash[x[0]]+"hundredand"+letter_hash[x[1]+x[2]]
      else
        num_string = letter_hash[x[0]]+"hundredandten"
      end
    elsif x[2] == "0"
      num_string = letter_hash[x[0]]+"hundredand"+letter_hash[x[1]+"0"]
    else
      num_string = letter_hash[x[0]]+"hundredand"+letter_hash[x[1]+"0"]+letter_hash[x[2]]
    end
  elsif x.length == 2
    if x[0] == "1"
      if x[1] != "0"
        num_string = letter_hash[x[0]+x[1]]
      else
        num_string = letter_hash["10"]
      end
    elsif x[1] == "0"
      num_string = letter_hash[x[0]+"0"]
    else
      num_string = letter_hash[x[0]+"0"]+letter_hash[x[1]]
    end
  else
    num_string = letter_hash[x[0]]
  end
  puts "#{num_string}, #{x}, length is #{num_string.length}"
  running_total += num_string.length
end
puts running_total


binding.pry
