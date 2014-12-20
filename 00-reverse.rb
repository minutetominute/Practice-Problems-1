# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
#
# Difficulty: easy.

def reverse(string)
	counter = string.length - 1
	new_string = ""
	while counter >= 0
		new_string = new_string + string[counter]
		counter = counter - 1
	end
	return new_string
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s
)
puts(
  'reverse("a") == "a": ' + (reverse("a") == "a").to_s
)
puts(
  'reverse("") == "": ' + (reverse("") == "").to_s
)
