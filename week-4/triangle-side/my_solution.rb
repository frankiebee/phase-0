# I worked on this challenge [with: Patrick Skelley ].


# Your Solution Below

def valid_triangle?(a, b, c)
  arr = [a, b, c].sort!
  if a === 0 || b === 0 || c === 0
    false
  elsif arr[0]+arr[1] > arr[2]
    true
  else
    false
  end
end

