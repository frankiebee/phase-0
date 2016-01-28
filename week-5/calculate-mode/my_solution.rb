# Calculate the mode Pairing Challenge

# I worked on this challenge [ with: Mitch Kroska]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution

def mode(arr)
 counter = Hash.new(0)
 arr.each {|x| counter[x] += 1}
 puts counter
 max_value = counter.max_by { |k, v | v}[1]
 counter.reject! { |k, v| v != max_value}
end



# 3. Refactored Solution




# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?
Hashes because it could be used as a good counter for either strings or integers

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
Yes.

What issues/successes did you run into when translating your pseudocode to code?
Understanding my pair.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
max_by is a new one for me.
=end