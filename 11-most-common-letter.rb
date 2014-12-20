# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
	histogram = {}
	string.split("").each do |i|
		if !histogram.has_key?(i)
			histogram[i] = 0
		end
	end
	histogram.each_key do |key|
		string.split("").each do |i|
			if key == i
				histogram[key] += 1
			end
		end
	end
	highest_count_letter = [histogram.keys[0], histogram.values[0]]
	histogram.each_key do |key|
		if histogram[key] > highest_count_letter[1]
			highest_count_letter = [key, histogram[key]]
		end
	end
	return highest_count_letter
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
