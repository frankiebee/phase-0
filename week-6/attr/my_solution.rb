#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData

end


class Greetings

end



# Reflection
=begin
##Release 1
#What are these methods doing?
Creating accessible and changeable instance variables.

#How are they modifying or returning the value of instance variables?
Reassigning returning the new variable using the declared methods.

##Release 2
What changed between the last release and this release?
what_is_age is no longer needed.
What was replaced?
attr_reader :age replaced #what_is_age

Is this code simpler than the last?
yes because you don't have as many lines of code thanks to attr_reader

##Release 3
What changed between the last release and this release?
attr_writer :age was added
and change_my_age was commented out because #age replaces it.
attr_writer is a writer method. its equivalent to writing
def age=(new_age)
  @age = new_age
end

Is this code simpler than the last?
yes because its easier to read because its less code.

##Release 6
What is a reader method?
make a instance variable method that can be called.

What is a writer method?
make a instance variable method that can rewrite the value of the variable.

What do the attr methods do for you?
short cut the def @variable so that you don't need to type out those methods.

Should you always use an accessor to cover your bases? Why or why not?
No you don't always want variables to have a writer method.

What is confusing to you about these methods?
how to set default values for the instance variables not in the initialize method.

=end