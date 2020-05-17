class TicTacToe

  WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2]
]

  def initialize
    @board = Array.new(9, " ")
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(index)
    index.to_i - 1
  end

  def move
    @board[index] = current_player
  end

  def position_taken(input)
    @board[input] == "X" || @board[input] == "O"

  end

  def valid_move
    if @board[number] == " " && number.between?(0,8)
      true
    else
      false
    end
  end

  def turn
    puts "Welcome, please pick a number of 1-9"
    user_input = gets.chomp
  index = input_to_index(user_input)
  if valid_move?(index)
    move(index, current_player)
    display_board
  else
    turn
  end
end

  def turn_count
    @board.count {|marker| marker == "X" || marker == "O"}
  end

  def current_player

  end

  def won?

  end

  def full?

  end

  def draw?

  end

  def winner

  end

  def play

  end

end
