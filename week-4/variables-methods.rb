puts "Why hello. What is your first name?"
f_name = gets.chomp
puts "and whats your middle name? "
m_name = gets.chomp
puts "and whats your last name?"
l_name = gets.chomp

puts "Hello #{f_name} #{m_name} #{l_name}. What is your favorite number?"
favnum = gets.chomp
puts "Well i have a better and bigger number for you its : #{favnum.to_i + 1}"


=begin
links:
https://github.com/frankiebee/phase-0/blob/master/week-4/define-method/math/my_solution.rb
https://github.com/frankiebee/phase-0/blob/master/week-4/define-method/my_solution.rb

How do you define a local variable?
you give it a name starting with a lower case letter and assign it a value.

How do you define a method?
Use def to create a new method give it a name fill it with code and then use end to show that it is the end to close it off.


What is the difference between a local variable and a method?
A local variable stores data a method can create data. Also a variable is a reference point where methods are chunks of code you can use by referencing the name of the method that may also have there own variables.

How do you run a ruby program from the command line?
You type: ruby file-name.rb of course replacing file-name with the name of the file you want to run.

How do you run an RSpec file from the command line?
you type rspec spec-file-name.rb

What was confusing about this material? What made sense?
The spec file was a little confusing at first then it made sense after reading what it does.

=end
