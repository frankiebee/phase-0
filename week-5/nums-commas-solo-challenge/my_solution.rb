# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode
=begin
def separate_comma(in)
  in.to_s
for x in (0...in.length)
=end

# What is the input? takes a number
# What is the output? spits a string with appropriate commas
# What are the steps needed to solve the problem?


# 1. Initial Solution
def separate_comma(input)
  input = input.to_s.reverse!
  in_len = input.length
  if in_len > 3
    pad = in_len / 4
    (3..in_len+pad).step(4) do |x|
      input.insert(x,",")
      input.chomp!(",")
    end
  end
  input.reverse
end




# 2. Refactored Solution




# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?
Was your pseudocode effective in helping you build a successful initial solution?
What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
How did you initially iterate through the data structure?
Do you feel your refactored solution is more readable than your initial solution? Why?
=end