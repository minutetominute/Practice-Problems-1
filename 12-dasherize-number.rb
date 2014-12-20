# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def dasherize_number(num)
	string_number_array = num.to_s.split("")
	int_number_array = []
	new_string_number_array = []
	string_number_array.each do |i|
		int_number_array.push(i.to_i)
	end
	for x in 0 ... int_number_array.length
		if int_number_array[x]%2 == 1
			new_string_number_array.push("-" + int_number_array[x].to_s + "-") 
		else
			new_string_number_array.push(int_number_array[x].to_s)
		end
 	end
	new_num_string = new_string_number_array.join("")
	if new_num_string[0] == "-"
		new_num_string = new_num_string[1..-1]
	end
	if new_num_string[-1] == "-"
		new_num_string = new_num_string[0..-2]
	end
	new_num_string = new_num_string.gsub("--", "-")
	return new_num_string
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
)
