# Calculate a Grade

# I worked on this challenge [ with: Patrick Skelley].
def get_grade(x)
  return "A" if x >= 90

  return "B" if x < 90 && x >= 80

  return "C" if x < 80 && x >= 70

  return "D" if x < 70 && x >= 60

  return "F" if x < 60
 end


# Your Solution Below