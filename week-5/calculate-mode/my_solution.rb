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