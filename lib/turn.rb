def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move? (board, index)
  if index > 8 || index < 0
    return false
  else
    return position_not_taken?(board, index)
  end
end

def position_not_taken? (board, index)
  
  if board[index] == " " || board[index] == "" || board[index] == nil
    return true
  
  elsif board[index] == "X" || board[index] == "O"
    return false
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, board_index, player_char = 'X')
  board[board_index] = player_char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)

  if valid_move?(board, input)
    move(board, input)
    display_board(board)
  else
    turn(board)
  end
end