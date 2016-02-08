# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:
=begin
BingoBoard class
takes board
prints pretty board
calls random B I N G O number
prints number
checks number
X's out number
prints new board
=end
# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

class BingoBoard
  attr_reader :bingo_board, :bingo, :call, :letter, :num, :win
  def initialize(board)
    @bingo_board = board
    @bingo = ["B","I","N","G","O"]
  end
  def display_pretty
    board ="""#{bingo}"""
    @bingo.each_index {|ind|board = board + "\n#{bingo_board[ind]}"}
    board
  end
  def call_letternum
    @letter = @bingo[rand(0...@bingo.length)]
    case @letter
      when "B"
        @num = rand(1..15)

      when "I"
         @num = rand(16..30)

      when "N"
         @num = rand(31..45)

      when "G"
         @num = rand(46..60)

      when "O"
         @num = rand(61..75)

    end
    @call = @letter + @num.to_s
  end
  def board_check
    bingo_board = @bingo_board.transpose
    check_at = @bingo.index(@letter)
    address = bingo_board[check_at].index(@num)
    address == nil ? false : @bingo_board[check_at][address] = "X"
  end
  def new_board! #legal board generator
# "B" (numbers 1–15), "I" (numbers 16–30),
# "N" (numbers 31–45), "G" (numbers 46–60),
# and "O" (numbers 61–75) with a free space in the middle.
    new_board = Array.new(5) { [] }
    row = 0
    until row == 5
      case row
        when 0
          new_num = rand(1..15)
          new_board[row] << new_num unless new_board[row].include?(new_num)
          row += 1 if new_board[row].length == 5

        when 1
          new_num = rand(16..30)
           new_board[row] << new_num unless new_board[row].include?(new_num)
           row += 1 if new_board[row].length == 5

        when 2
          new_num = rand(31..45)
          new_num = "X" if new_board[row].length == 2
           new_board[row] << new_num unless new_board[row].include?(new_num)
           row += 1 if new_board[row].length == 5

        when 3
          new_num = rand(46..60)
           new_board[row] << new_num unless new_board[row].include?(new_num)
           row += 1 if new_board[row].length == 5

        when 4
          new_num = rand(61..75)
           new_board[row] << new_num unless new_board[row].include?(new_num)
           row += 1 if new_board[row].length == 5
      end
    end
    @bingo_board = new_board.transpose
  end
end





#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]
new_game = BingoBoard.new(board)
p new_game.new_board!
puts new_game.display_pretty
while true

  puts new_game.display_pretty
  p new_game.call_letternum
  new_game.board_check
  puts new_game.display_pretty
  sleep 1
end
=begin
#Reflection

# How difficult was pseudo coding this challenge? What do you think of your pseudo coding style?
Pseudo coding was not difficult but i don't think i have a good pseudo code
practice as i tend to get a little lazy with my pseudo code

# What are the benefits of using a class for this challenge?
Oh its great it keeps every thing centralized and efficient to read for driver code.

# How can you access coordinates in a nested array?
use the square brackets as many times as their is a nested array.

# What methods did you use to access and modify the array?
Nothing to fancy this time. Just #index which finds the index of element and returns
nil if not in the array. I also used transpose which turns colums into rows.

# How did you determine what should be an instance variable versus a local variable?
An instance variable would be used if you wanted it to be accessible to all the
instance methods. A local variable would be used if the variable is only important to that method.

=end

