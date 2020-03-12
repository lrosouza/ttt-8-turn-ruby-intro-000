board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#valid_move?
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def valid_move?(board, index)
		if position_taken?(board, index) == false && index.between?(0,8) == true
		    true
	  elsif position_taken?(board, index) == true
		    false
	  elsif index.between?(0, 8) == false
		    false
	  end
end

#position_taken?

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " " || board[index] == "")
end