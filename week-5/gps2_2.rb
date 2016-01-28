# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  #
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: item name and optional quantity
# steps: create method to add item to hash, set default qty 1
# output: hash of items with qty 1

# Method to remove an item from the list
# input: if key is set to zero, remove from list
# steps: on update qty method
# output: return updated list

# Method to update the quantity of an item
# input: set key to qty
# steps: enter key to qty
# output: return updated list

# Method to print a list and make it look pretty
# input: user inputs print
# steps:
# output: formated list

def create_list(list)
  list = list.split(' ')
  grocery_list = Hash.new
  list.each {|x| grocery_list[x] = 1}
  grocery_list
end

def add_item(list,item)
    list[item] = 1
    return list
end

def remove_item(list, item)
  list.delete(item)
  list
end

def update_qty(list,item,qty)
  list[item] = qty
  return list
end

def print_list(list)
  puts "Grocery List"
  puts "------------"
  list.each {|x,y| puts y.to_s + " " + x}
end

grocery = create_list("apples oranges bannanas")
p add_item(grocery, "carrots")
p remove_item(grocery, "oranges")
p update_qty(grocery,"apples",5)
p print_list(grocery)


=begin
What did you learn about pseudocode from working on this challenge?
It can be a useful blueprint if you forget what your goals are.

What are the tradeoffs of using Arrays and Hashes for this challenge?
The whole key value pair makes it tough to pull information out at random with out knowing keys.
And using arrays are kind of blind when it comes to grouping data.
As far as for this exercise. The concept of trade off didn't really hit me. It took a minute to remember how to use a hash but once i got into the groove it was more of a this is how this works kind of thing. Although they are both collections thats the only thing they really have in common in my mind.
DIFFERENCE:
ARRAY: Index
HASH: Key and value
Although it may only be one thing thats a big difference that changes how you add data how you access it in a given situation and even how you iterate over it. Thats enough for me not to compare the 2. Even though i know they work hand in hand.

What does a method return?
Methods return values.

What kind of things can you pass into methods as arguments?
objects and values.
How can you pass information between methods?
assigning the output to a variable and then passing the variable to the next method.

What concepts were solidified in this challenge, and what concepts are still confusing?
I still need practice with hashes that was defiantly proven in this exercise.
=end