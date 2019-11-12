class TicTacToe 
  WIN_COMBINATIONS = 
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [6,4,2]

  def initialize 
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(user_input)
    user_input.to_i - 1
  end
  
  def move(index,token="X") 
    @board[index] = token
  end 
  
  def position_taken?(index)
    spot = nil 
    if (@board[index] ==  " " || @board[index] == "" || @board[index] == nil)
      spot = false 
    else
     spot = true
    end
    spot
  end 
  
  def valid_move?(index)
    if !position_taken?(index) && index < 9
      true
    else 
      false || nil 
    end
  end 
   def turn_count
    @board.count{|token| token == "X" || token == "O"}
  end
  
  def current_player
  turn_count % 2 == 0 ? "X" : "O"
  end
  
  def turn 
    puts "Choose a position, 1-9"
    player = current_player
    user_input = gets.strip
    index = input_to_index(user_input)
    if valid_move?(index) 
      move(index)
      display_board
    else
      puts "Try Again and choose a position, 1-9"
      user_input = gets.strip
    end
    end
    
    def won? 
      combo = WIN_COMBINATIONS
      
      combo.each{|size| size.to_a }
    # else 
    #   false || nil
    #   end 
    end
    
  end 
