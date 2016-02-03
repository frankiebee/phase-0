# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself ].
# I spent [#] hours on this challenge.

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


test = Die.new([])
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
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

What does this exercise teach you about making code that is easily changeable or modifiable?

What new methods did you learn when working on this challenge, if any?

What concepts about classes were you able to sol


=end