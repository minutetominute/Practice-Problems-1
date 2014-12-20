# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)
	repeat_dict = {}
	count = 0
	string.split("").each do |i|
		if !repeat_dict.has_key?(i)
			repeat_dict[i] = 0
		end
	end
	repeat_dict.each_key do |key|
		string.split("").each do |i|
			if key == i
				repeat_dict[key] += 1
			end
		end
	end
	repeat_dict.each_key do |key|
		if repeat_dict[key] > 1
			count += 1
		end
	end
	return count
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
# one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
