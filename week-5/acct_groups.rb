cohort = ["Alivia Blount","Alyssa Page","Alyssa Ransbury","Andria Reta","Austin Dorff","Autumn McFeeley","Ayaz Uddin","Ben Giamarino","Benjamin Heidebrink","Bethelhem Assefa","Bobby Reith","Dana Breen","Brett Ripley","Rene Castillo","Justin J Chang","Ché Sanders","Chris Henderson","Chris Pon","Colette Pitamba","Connor Reaumond","Cyrus Vattes","Dan Heintzelman","David Lange","Eduardo Bueno","Liz Roche","Emmanuel Kaunitz","FJ Collins Jr.","Frankie Pangilinan","Ian Fricker","Ian Thorp","Ivy Vetor","Jack Baginski","Jack Hamilton","JillianC","John Craigie","John Holman","John Maguire","John Pults","Jones Melton","Tyler Keating","Kenton Lin","Kevin Serrano","Kevin Sullivan","Kyle Rombach","Laura Montoya","Luis Ybarra","Charlotte Manetta","Marti Osteyee-Hoffman","Megan Swanby","Mike London","Michael Wang","Michael Yao","Mike Gwozdek","Miqueas Hernandez","Mitchell Kroska","Norberto Caceres","Patrick Skelley","Peter Kang","Philip Chung","Phillip Barnett","Pietro Martini","Robbie Santos","Rokas Simkonis","Ronu Ghoshal","Ryan Nebuda","Ryan Smith","Saralis Rivera","Sam Assadi","Spencer Alexander","Stephanie Major","Taylor Daugherty","Thomas Farr","Maeve Tierney","Tori Huang","Alexander Williams","Victor Wong","Xin Zhang","Zach Barton"]
num = cohort.length
=begin
pseudo code:
group_gen
takes in an array of people
breaks at rand in to even groups
by going through the list at rand to get names to create groups
return groups
=end


def group_gen_array(list,people=5)# list and number of people per group
  list = Array.new(list) #makes it so that it doesn't change original list
  x = list.length # gets a workable non changing length of list
  num = (x-(x % people))/people
  # ^ creates base number of groups subtract remainder as to not end up with small group
  acc_group = Array.new(num){[]} # create an array to store groups
  group_num = 0
  while  x != 1
    x = list.length #changing list number
    y = rand(0...x) #random number
    case group_num
      when num #when exceed group number reset
        group_num = 0
    end
    acc_group[group_num] << list[y] #append random name
    list.delete_at(y) #remove name from list to prevent duplicates
    group_num += 1 if acc_group[group_num].length >= people#when group hits/is max people go to next group

  end
  return acc_group
end

def group_gen_hash(list, people=5) #Creates a key value pair for groups
  groups = group_gen_array(list,people)
  key_group = Hash.new()
  groups.each_index{|x| key_group["Group #{x+1}"] = groups[x]}
  return key_group
end

def print_prety_hash(hlist, cohort ="Sea Lions 2016")
  top = cohort.center(50,"-")
  pp_list = "ACCOUNTABILITY GROUPS"
  print_prety = """
#{top}
#{pp_list.center(50,"-")}
"""
  hlist.each { |k,v| print_prety += ("\n"+"".center(50,"-")+"\n" + k.upcase + "\n"  +v.to_s+"\n") }
  print_prety
end

test1 = group_gen_array(cohort)
test2 = group_gen_array(cohort)
test3 = group_gen_array(cohort)
test4 = group_gen_hash(cohort)

puts print_prety_hash(test4)



=begin
*** Reflection***
Do you feel you are improving in your ability to write pseudocode and break the problem down?
Yes i do feel as if i have gotten better at writing pseudo code.

Was your approach for automating this task a good solution? What could have made it even better?
I'm not sure how to answer this question what exactly are you referencing in this question?

What data structure did you decide to store the accountability groups in and why?
Both a hash and an array because both would have different uses.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
I did not re-factor this solution as i wish to move on now. I already have spent a lot of time making the print_prety and needed to time box my self on this one.
=end