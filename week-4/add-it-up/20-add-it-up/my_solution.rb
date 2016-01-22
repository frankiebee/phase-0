# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [ with: Tori Huang ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!
=begin
[0,5,2,8] => sum
loop through and add together
=end
#rescue Exception => e

#end
# Input:
# Output:
# Steps to solve the problem.


# 1. total initial solution



# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.


# 5. sentence_maker initial solution



# 6. sentence_maker refactored solution


def total(array)
  y = 0
  array.each {|x| y = x + y}
  return y
end

puts total([5,5,5,5,5,5,5,5])

def sentence_maker(arr_string)
  r = ""
  arr_string.each {|x| r = r << " "+x.to_s}
  r << "."
  return r.lstrip.capitalize
end

