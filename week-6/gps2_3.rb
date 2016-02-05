
def serving_size_calc(item_to_make, num_of_ingredients)
  # ^defined a method that takes in two arguments
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  # ^create a hash with the things you can make
#   error_counter = 3

#   library.each do |food| # < go through the key:value of library
#     if library[food] != library[item_to_make]
#       error_counter += -1
#     #if the key:value pair does not match one in library error counter
#       #goes up 1
#     end
#   end

  # library.has_key
  # if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input") if library.has_key?(item_to_make) == false
  # end
  #^ raise an argument error
  serving_size = library[item_to_make]
  #^getting the first value
  remaining_ingredients = num_of_ingredients % serving_size
  # ^ get the remainder of num.. and serving size
  # case remaining_ingredients
  # when 0 #when out ingredients stop doing stuff

#    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}" if remaining_ingredients == 0

#    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"

  if remaining_ingredients == 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else #do this if not 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)