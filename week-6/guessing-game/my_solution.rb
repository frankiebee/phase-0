=begin
In this challenge you want to create a simple guessing game. Think in terms of when you were 7 and asked your friends to identify the number you were thinking...

Your GuessingGame class should be initialized with an integer called answer.

Define an instance method GuessingGame#guess which takes an integer called guess as its input. guess should return the symbol :high if the guess is larger than the answer, :correct if the guess is equal to the answer, and :low if the guess is lower than the answer.

Define an instance method GuessingGame#solved? which returns true if the most recent guess was correct and false otherwise.

In this case, we're asking you to use symbols for :low, :high, and :correct. This is partly due to the way strings and symbols are stored in memory.
=end
# I worked on this challenge [by myself ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

class GuessingGame
  attr_reader :answer
  attr_writer :last_try

  def initialize(answer)
    @answer = answer
  end

  def guess(guess_num)
    @last_try = guess_num
    return :high if guess_num > @answer
    return :low if guess_num < @answer
    return :correct if guess_num == @answer
  end
  def solved?
    @last_try == @answer
  end
end

=begin
gg = GuessingGame.new(rand(1..100))
while gg.solved? == false
  puts "Guess =>"
  this = gg.guess(gets.chomp.to_i)
  p this
end
=end

# Refactored Solution





=begin
# Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
okay lets say we have an object and its a ball. A method for ball could be bounce, you could also have a method for ball called roll. The class is like the ball the instance is the ball you have the bounce is the method/way you use play and manipulate the ball.

# When should you use instance variables? What do they do for you?
Lets go back to the ball now... How big is this ball what color is the ball who does the ball belong to is it a soccer ball or a foot ball or a basket ball. All these things can be stored in the instance variables.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
What? did i have trouble with the if statements. No did not have trouble

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
To save time and memory.
=end