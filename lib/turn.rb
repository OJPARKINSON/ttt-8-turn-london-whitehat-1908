board = [ " ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  
  # puts board
  # .clone
  # .each_slice(3)
  # .to_a.map {|row| row.join("|")}
  # .join("\n-----------\n")
  
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  
end

def valid_move?(board, index)
  if index.between?(0, 8) && board[index] == " " then 
    return true 
  else 
    return false
  end
end

def move(board, index, token="X") 
  board[index] = token
end
def input_to_index(index) 
  index = index.to_i - 1
end 
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

