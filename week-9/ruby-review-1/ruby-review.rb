
# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode



# Initial Solution

def is_fibonacci?(num)
	return true if num == 0
	fib = [0,1]
	while fib[1] < num
		sub = fib[1]
		fib[1] = fib[0] + fib[1]
		fib[0] = sub
	end
	fib[1] == num
end



# Refactored Solution






# Reflection
