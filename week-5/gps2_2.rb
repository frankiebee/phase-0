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