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
  attr_reader :bingo_board, :bingo, :call, :letter, :num
  def initialize(board)
    @bingo_board = board
    @bingo = ["B","I","N","G","O"]
  end
  def display_pretty
    board =""""""
    @bingo.each_index {|ind|board = board + "\n#{bingo[ind]} #{bingo_board[ind]}"}
    board
  end
  def call_letternum
    @letter = @bingo[rand(1...@bingo.length)]
    @num = rand(1..100)
    @call = @letter + @num.to_s
  end
  def board_check
    check_at = @bingo.index(@letter)
    address = bingo_board[check_at].index(@num)
    address == nil ? false : bingo_board[check_at][address] = "X"
  end
  def ftwin

  end
end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]
new_game = BingoBoard.new(board)
while true

  puts new_game.display_pretty
  p new_game.call_letternum
  new_game.board_check
  puts new_game.display_pretty
  sleep 0.1
end
#Reflection


