

# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.each_index{|element|
  if number_array[element].kind_of?(Array) == true
    number_array[element].each_index{|num| number_array[element][num] += 5 }
  else
    number_array[element] += 5
  end

    }
p number_array
# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

  startup_names.each_index do |element|
   if startup_names[element].kind_of?(Array) == true
     startup_names[element].each_index do |inner|
       if startup_names[element][inner].kind_of?(Array) == true
         startup_names[element][inner].each_index do |sec_inner|
           p startup_names[element][inner][sec_inner]
         end
       else p startup_names[element][inner]
       end
     end
   else
     p startup_names[element]
   end
  end



=begin
# What are some general rules you can apply to nested arrays?
I'm sorry to who ever is reading this. I'm not sure what to answer her with.
# What are some ways you can iterate over nested arrays?

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
=end