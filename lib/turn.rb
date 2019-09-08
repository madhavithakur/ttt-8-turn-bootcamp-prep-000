def display_board(board)	
  puts " #{board[0]} | #{board[1]} | #{board[2]} "	
  puts "-----------"	
  puts " #{board[3]} | #{board[4]} | #{board[5]} "	
  puts "-----------"	
  puts " #{board[6]} | #{board[7]} | #{board[8]} "	
end

def input_to_index(input)
  converted_input = (input).to_i 
  converted_input -= 1
end 

def valid_move?(board, index)
  if index < 0 || index > 8
    return false
  elsif board[index] == "X" || board[index] == "O"
    return false
  else
    true
  end 
end 

def move(board, index, char)
  board[index] = char
end 

def turn(board) 
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index) == true 
    move(board, index)
  else
    turn(board)
  end
end 

def turn (board)
  puts "Please enter 1-9:"
  num = gets.chomp
  index = input_to_index(num)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
