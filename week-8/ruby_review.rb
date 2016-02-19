# Cipher Challenge

# I worked on this challenge [by myself]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
  decoded_sentence = []
  # cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
  #           "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
  #           "g" => "c",
  #           "h" => "d",
  #           "i" => "e",
  #           "j" => "f",
  #           "k" => "g",
  #           "l" => "h",
  #           "m" => "i",
  #           "n" => "j",
  #           "o" => "k",
  #           "p" => "l",
  #           "q" => "m",
  #           "r" => "n",
  #           "s" => "o",
  #           "t" => "p",
  #           "u" => "q",
  #           "v" => "r",
  #           "w" => "s",
  #           "x" => "t",
  #           "y" => "u",
  #           "z" => "v",
  #           "a" => "w",
  #           "b" => "x",
  #           "c" => "y",
  #           "d" => "z"}
  cipher = Hash.new
  key = ('a'..'z').to_a
  key << key.shift(4) + ("0".."9").to_a
  key = key.flatten
  value = ('a'..'z').to_a + ("0".."9").to_a
  value.flatten.each_index {|x| cipher[key[x]] = value[x]}
  symbols =  [ "@", "#", "$", "%", "^", "&", "*"]
  input.each_index do |check|
      if symbols.include?(input[check]) || cipher.keys.include?(input[check])
      symbols.include?(input[check]) ? input[check] = " " : input[check] = cipher[input[check]]
      end
    end
puts
  # input.each do |x| # What is #each doing here?
  #   found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
  #   cipher.each_key do |y| # What is #each_key doing here?
  #     if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
  #       decoded_sentence << cipher[y]
  #       found_match = true
  #       break  # Why is it breaking here?
  #     elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
  #       decoded_sentence << " "
  #       found_match = true
  #       break
  #     elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
  #       decoded_sentence << x
  #       found_match = true
  #       break
  #     end
  #   end
  #   if not found_match  # What is this looking for?
  #     decoded_sentence << x
  #   end
  # end
  input.join("")
  #What is this method returning?
end

# Your Refactored Solution





# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l") == "our early attempts at a tractor beam went through several preparations. preparations a through g were a complete failure.\n but now, ladies and gentlemen, we finally have a working tractor beam, which we shall call preparation h"
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.") == "you see, i've turned the moon into what i like to call a death star."
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.") == "mini me, if i ever lost you i don't know what i would do.\n i'd probably move on and get another clone but there would be a 15 minute period there where i would just be inconsolable."
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?") == "why make a trillion when we could make... billions?"
=begin
# Reflection
# Keep your reflection limited to 10-15 minutes!
What concepts did you review or learn in this challenge?
I reviewed array methods and conversion methods like .to_a

What is still confusing to you about Ruby?
Not much

What are you going to study to get more prepared for Phase 1?
javaScript and some other things probably do a bunch of extra exercises and writing tests.
=end