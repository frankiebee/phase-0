# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:
# Output:
# Steps:


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    raise ArgumentError if @sides < 1
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end



# 3. Refactored Solution







# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
A Error message raised when the Arguments given are wrong.
You would use this to control what kind of arguments are given.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
raise was an interesting one for me. It was interesting reading the docs on it.

What is a Ruby class?
I'm gonna keep this short.
A CLASS IS A OBJECT OR CLASS OBJECT!
Or a chicken and an egg :)
Its a blueprint for objects that is an object its self... woof

Why would you use a Ruby class?
To create your own object blueprint.

What is the difference between a local variable and an instance variable?
A local variable is accessible only to the block of code. An instance variable is accessible to the class.
Where can an instance variable be used?
In class methods and with/in the object...

Here is a quote from https://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/45-more-classes/lessons/110-instance-variables
to sum up my reflection:
"There really isn't much more to instance variables. They are bound to an instance of a class and together forms what we call the state of an object. Every instance of a class has a different set of instance variables. Let us see how that works out"
=end