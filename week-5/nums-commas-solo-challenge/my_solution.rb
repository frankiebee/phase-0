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
  input = input.to_s.reverse! # Make it a string and then reverse it to make it easier to insert commas
  in_len = input.length #Get the length of the string
  if in_len > 3 # check if lentgh of string is grater then 3
    pad = in_len / 4 # during the insertion of commas length of string will increase. So pad is created to account for added charcters
    (3..in_len+pad).step(4) do |x| # enumerate the index at steps of 4 starting from 3
      input.insert(x,",")#at index x inset a comma
      input.chomp!(",")#trim comma if 1 is at the -1 index
    end
  end
  input.reverse#reverse the input back to orginal form and return it
end




# 2. Refactored Solution




# 3. Reflection
=begin
My first atemtpt was all wrong as far as comma placement once i reversed it htough it was all good.
this section took some trial and error:
 (3..in_len+pad).step(4) do |x| # enumerate the index at steps of 4 starting from 3
      input.insert(x,",")#at index x inset a comma
      input.chomp!(",")#trim comma if 1 is at the -1 index
I learned a lot about ranges from this.
My process was kind of flowy for this one. Had a super basic blueprint and let my brain do the rest.
Thats not typicaly how i would do it but i felt it was inportant this time around to really use the logics
in my head and develope some self relince in work flow.
=end
