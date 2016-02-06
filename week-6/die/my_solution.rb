# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself ].
# I spent [0.5] hours on this challenge.

# Pseudocode

# Input: takes an array of "sides"
# Output: roll spits back random side
# Steps:


# Initial Solution

class Die

  def initialize(labels)
    @labels = labels
    @sides = labels.length
    raise ArgumentError, "expect minimum of 1 sides got 0" unless @sides > 0
  end

  def sides
    @sides
  end

  def roll
   @labels[rand(0...@sides)]
  end
end


# Refactored Solution
=begin
class Die
  attr_reader :sides
  def initialize(labels)
    @labels = labels
    @sides = labels.length
    raise ArgumentError, "expect minimum of 1 sides got 0" unless @sides > 0
  end

  def roll
   @labels[rand(0...@sides)]
  end
end

# Reflection
What were the main differences between this die class and the last one you created in terms of implementation?
The main difference is that in this die class the kind of side and number of sides are establish when declaring an instance of the class.

What does this exercise teach you about making code that is easily changeable or modifiable?
That you can do almost anything if you want to.

What new methods did you learn when working on this challenge, if any?
I didn't learn anything new this challenge

What concepts about classes were you able to solidify in this challenge?
How to use attr_reader.


=end