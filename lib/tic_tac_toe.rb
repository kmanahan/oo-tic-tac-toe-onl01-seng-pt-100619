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
    if !position_taken?(index) && index < 9 && index >= 0
      true
    else 
      false 
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
      move(index, player) 
      display_board
    else 
      turn
    end
    end
    
    def won? 
      WIN_COMBINATIONS.each do |combo|
        win_index_1 = combo[0]
        win_index_2 = combo[1]
        win_index_3 = combo[2]
      
        position_1 = @board[win_index_1] # load the value of the board at win_index_1
        position_2 = @board[win_index_2] # load the value of the board at win_index_2
        position_3 = @board[win_index_3]
        
        if position_1 == position_2 && position_2 == position_3
        return combo
        end 
      end
       false
    end
    
    def full?
       @board.all? {|token|token == "X" || token =="O"}
    end
    
    def draw?
      if full? && !won?
        true 
      else 
        false
      end
    end
    
    def over?
      if draw? || won?
        true
      end
    end 
    
    def winner
  WIN_COMBINATIONS.detect do |win_combo|
    if (@board[win_combo[0]]) == "X" && (@board[win_combo[1]]) == "X" && (@board[win_combo[2]]) == "X"
      return "X"
    elsif (@board[win_combo[0]]) == "O" && (@board[win_combo[1]]) == "O" && (@board[win_combo[2]]) == "O"
      return "O"
    else
      nil
    end
  end
end

  def play
<<<<<<< HEAD
  turn
=======
  if !over?
    turn
  else 
   play
  end
>>>>>>> 5495cf6479a9a0504a7f1e5c9d1782dff5842cfe
  if won?
    puts "Winner!"
  elsif draw?
    puts "Draw!"
  end
<<<<<<< HEAD
  over?
=======
>>>>>>> 5495cf6479a9a0504a7f1e5c9d1782dff5842cfe
end

end 
