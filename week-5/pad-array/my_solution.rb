# Pad an Array

# I worked on this challenge [with: Mike ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  # Your code here
  if array.length < min_size
    x = min_size - array.length
    x.times do array << value
    end
  end
  return array
end

puts pad!([1,2,3], 5,"red")

def pad(array, min_size, value = nil) #non-destructive
  arr = Array.new(array)
  return pad!(arr,min_size,value)
end
# 3. Refactored Solution



# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?
Kind we more worked through the problem. Thats like breaking it up in to steps. We knew what the goal was and so we just worked through each step of achieving the solution.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
I know its a bad habit we more discussed pseudo code rather then write it.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
Yes. Because we thought about it.

How readable is your solution? Did you and your pair choose descriptive variable names?
Its not the best readability. We could have chosen more descriptive names.

What is the difference between destructive and non-destructive methods in your own words?
Destructive changes the data its given. Where non-destructive returns a new set with out changing what it was given to work with.
=end