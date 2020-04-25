# TicTacToe
#    #play
#      asks for players input on a turn of the game
#      checks if the game is over after every turn (FAILED - 32)
#      plays the first turn of the game (FAILED - 33)
#      plays the first few turns of the game (FAILED - 34)
#      checks if the game is won after every turn (FAILED - 35)
#      checks if the game is draw after every turn (FAILED - 36)
#      stops playing if someone has won (FAILED - 37)
#      congratulates the winner X (FAILED - 38)
#      congratulates the winner O (FAILED - 39)
#      stops playing in a draw (FAILED - 40)
#      prints "Cat's Game!" on a draw (FAILED - 41)
#      plays through an entire game (FAILED - 42)
#
# The first test in 01_tic_tac_toe_spec.rb will ensure the requirement that when a new game
# of Tic Tac Toe is started — that is, when a new instance of TicTacToe is initialized — the
# instance of the game must set the starting state of the board, an array with 9 " " empty
# strings, within an instance variable named @board.
#
# In other words, your #initialize method should set a @board variable
# equal to a new, empty array that represents the game board.

class TicTacToe

  # WIN_COMBINATIONS
  # #       defines a constant WIN_COMBINATIONS with arrays for each win combination
  # TicTacToe
  # #initialize
  #   assigns an instance variable @board to an array with 9 blank spaces " "
  WIN_COMBINATIONS =[
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [6,4,2]
  ]

  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end


# #display_board
# Define a method that prints the current board representation
# based on the @board instance variable.
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end


##input_to_index
#   accepts the user's input (a string) as an argument
#   converts the user's input (a string) into an integer
#   converts the user's input from the user-friendly format (on a 1-9 scale) to
#   the array-friendly format (where the first index starts at 0)
  def input_to_index(string)
    string.to_i - 1
  end

  # #move
  #   allows "X" player in the top left and "O" in the middle

  def move(index, token = "X")
    @board[index] = token
  end

  # #position_taken?
  #    returns true/false based on whether the position on the board is already occupied

  def postition_taken?
    @board[index] != " "
  end

  def valid_move?

end
