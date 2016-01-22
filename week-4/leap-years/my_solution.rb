# Leap Years

# I worked on this challenge [by myself ].
=begin
There is a leap year every year whose number is perfectly divisible by four - except for years which are both divisible by 100 and not divisible by 400. The second part of the rule effects century years. For example; the century years 1600 and 2000 are leap years, but the century years 1700, 1800, and 1900 are not. This means that three times out of every four hundred years there are eight years between leap years.
=end

# Your Solution Below
def leap_year?(x)
  if x % 4 === 0 or x % 100 == 0
    if x % 100 === 0 && x % 400 != 0
      false
    else
      true
    end
  else
    false
  end
end