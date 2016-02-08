# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [ with: Dan ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits
# class CreditCard
#   def initialize(credit_num)
#     @credit_num = credit_num.to_s
#     raise ArgumentError.new("Not a valid card number")  unless @credit_num.length == 16
#   end

#   def check_card
#     credit_arr = Array.new()
#     credit_arr = @credit_num.split('').reverse
#     (1...16).step(2) do |x|
#       credit_arr[x] = (credit_arr[x].to_i * 2).to_s
#       credit_arr[x] = credit_arr[x].split('')
#     end
#     credit_arr.flatten!
#     credit_arr.each_index{|num| credit_arr[num] =credit_arr[num].to_i }
#     p credit_arr
#     check =
#       credit_arr.inject {|cumul, item|p cumul + item}

#     check % 10 == 0


#   end



# end



# Refactored Solution

class CreditCard
  def initialize(credit_num)
    @credit_num = credit_num.to_s #convert integers into string
    raise ArgumentError.new("Not a valid card number")  unless @credit_num.length == 16
    #^check string length if not 16 raise an argument error
  end

  def check_card
   credit_arr = @credit_num.split('') #create an array of the  digits
   (0...16).step(2) do |x|#in the range of 0 up to 16 in the step of 2 (like 0, 2, 4..)
     credit_arr[x] = (credit_arr[x].to_i * 2).to_s#convert to integers to double the number
     # and convert back to string
     credit_arr[x] = credit_arr[x].split('')#split all double digit numbers into two
     #single digit numbers
   end
     credit_arr.flatten!#turn two dimensional array into a one dimensional array
     check = credit_arr.inject do |counter, string|
     string.to_i + counter.to_i#convert strings into integers add all the num together
     end
     check % 10 == 0 # return a true or false if check is divisible by 10
  end
end

=begin
# Reflection

#What was the most difficult part of this challenge for you and your pair?
This was a easy one for us i think. We just worked through the problem and had a good flow.

#What new methods did you find to help you when you refactored?
flatten was a new method for me.

#What concepts or learnings were you able to solidify in this challenge?
#step() was good for me to use again. Even when my pair tried to refractor he couldn't fin a better solution for that.

=end