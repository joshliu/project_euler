require "pry"

counting_num = 1

tri_array = []
pent_array = []
hex_array = []

loop do
	triangle = counting_num*(counting_num+1)/2
	tri_array << counting_num*(counting_num+1)/2
	pent_array << counting_num*((3*counting_num)-1)/2
	hex_array << counting_num*((2*counting_num)-1)

	if pent_array.include?(triangle) && hex_array.include?(triangle) && triangle != 1 && triangle != 40755
		puts triangle
		break
	end

	counting_num += 1
end



binding.pry