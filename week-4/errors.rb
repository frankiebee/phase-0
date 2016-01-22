=begin
# Analyze the Errors

# I worked on this challenge [by myself ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------
def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# error.rb
# 2. What is the line number where the error occurs?
# 170
# 3. What is the type of error message?
# unexpected end-of-input
# 4. What additional information does the interpreter provide about this type of error?
# expecting keyword_end
# 5. Where is the error in the code?
# it say line 170 but really its at 17 where the end should go.
# 6. Why did the interpreter give you this error?
# missing an end for while-loop/cartman_hates(thing)

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# 35
# 2. What is the type of error message?
# undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
#the name of the object and Object (NameError)
# 4. Where is the error in the code?
#south_park is not defined their for it doesn't know what to do with it
# 5. Why did the interpreter give you this error?
#south_park is not defined

# --- error -------------------------------------------------------

cartman()

# 1. What is the line number where the error occurs?
# 50
# 2. What is the type of error message?
#  undefined method
# 3. What additional information does the interpreter provide about this type of error?
# the method at question and the object (noMethodError)
# 4. Where is the error in the code?
#line 50. cartman() is not defined
# 5. Why did the interpreter give you this error?
# cartman is not defined as a method so it went caboom

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 64
# 2. What is the type of error message?
#in `cartmans_phrase': wrong number of arguments (1 for 0) (ArgumentError)

# 3. What additional information does the interpreter provide about this type of error?
# the name of the module/method and the number of arguments given
# 4. Where is the error in the code?
# line 68 cartmans_phrase does not take an argument
# 5. Why did the interpreter give you this error?
#because cartmans phrase does not take an argument
# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says

# 1. What is the line number where the error occurs?
# 83
# 2. What is the type of error message?
#cartman_says': wrong number of arguments (0 for 1) (ArgumentError)

# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments
# 4. Where is the error in the code?
#cartman_says takes arguments none given
# 5. Why did the interpreter give you this error?
#no arguments are provided for cartman_syas



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#105
# 2. What is the type of error message?
#in `cartmans_lie': wrong number of arguments (1 for 2) (ArgumentError)

# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
# because their are not enough arguments when its called on 109

# --- error -------------------------------------------------------

5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 126
# 2. What is the type of error message?
#in `*': String can't be coerced into Fixnum (TypeError)

# 3. What additional information does the interpreter provide about this type of error?
# the error type
# 4. Where is the error in the code?
# you can multiply a string by a number but not a number by a string
# 5. Why did the interpreter give you this error?
#

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#141
# 2. What is the type of error message?
#`/': divided by 0 (ZeroDivisionError)
# 3. What additional information does the interpreter provide about this type of error?
#error object type
# 4. Where is the error in the code?
# 0 is the error
# 5. Why did the interpreter give you this error?
# you cant divide something by 0 but you can divide 0 by something.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#require_relative': cannot load such file -- /Users/frankie/phase-0/week-4/cartmans_essay.md (LoadError)
# 3. What additional information does the interpreter provide about this type of error?
#the file pathway and error type obj
# 4. Where is the error in the code?
#the file doesn't exist
# 5. Why did the interpreter give you this error?
# file does not exist


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

Which error was the most difficult to read?
n/a
How did you figure out what the issue with the error was?
i read the error message
Were you able to determine why each error message happened based on the code?
yes
When you encounter errors in your future code, what process will you follow to help you debug?
read the error messages got through the code.

=end
