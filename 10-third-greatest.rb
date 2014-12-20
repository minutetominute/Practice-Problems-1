# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.

def third_greatest(nums)
	greatest_number = 0
	for x in 0 ... nums.size
		if nums[x] > greatest_number
			greatest_number = nums[x]
		end
	end
	second_greatest_number = 0
	for x in 0 ... nums.size
		if nums[x] > second_greatest_number && nums[x] < greatest_number
			second_greatest_number = nums[x]
		end
	end
	third_greatest_number = 0
	for x in 0 ... nums.size
		if nums[x] > third_greatest_number && nums[x] < second_greatest_number
			third_greatest_number = nums[x]
		end
	end
	return third_greatest_number
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'third_greatest([5, 3, 7]) == 3: ' +
  (third_greatest([5, 3, 7]) == 3).to_s
)
puts(
  'third_greatest([5, 3, 7, 4]) == 4: ' +
  (third_greatest([5, 3, 7, 4]) == 4).to_s
)
puts(
  'third_greatest([2, 3, 7, 4]) == 3: ' +
  (third_greatest([2, 3, 7, 4]) == 3).to_s
)
