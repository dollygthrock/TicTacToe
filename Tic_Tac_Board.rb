def create_new_board
	board = [1,2,3,4,5,6,7,8,9]
end 

def update_board(game_board, position, marker)
	game_board[position] = marker	
	game_board
end 

def valid_position_on_game_board(game_board,position)
	if game_board[position] == position + 1
		true
	else
		false
	end
end 

def winning_lines(board)
	[[board[0], board[1], board[2]],
	[board[3], board[4], board[5]],
	[board[6], board[7], board[8]],
	[board[0], board[3], board[6]],
	[board[1], board[4], board[7]],
	[board[2], board[5], board[8]],
	[board[0], board[4], board[8]],
	[board[2], board[4], board[6]]]
end

 def all_winning_combinations(game_board,marker)
 	potential_wins = winning_lines(game_board)
 	win = false
 	potential_wins.each do |potential_win|
 		if potential_win.count(marker) == 3
 			win = true
 		end
 	end
 	win
 end




 # 	if game_board[0] == marker && game_board[1] == marker && game_board[2] == marker ||
 # 	   game_board[3] == marker && game_board[4] == marker && game_board[5] == marker ||
 # 	   game_board[6] == marker && game_board[7] == marker && game_board[8] == marker ||
 # 	   game_board[0] == marker && game_board[3] == marker && game_board[6] == marker ||
 # 	   game_board[1] == marker && game_board[4] == marker && game_board[7] == marker ||
 # 	   game_board[2] == marker && game_board[5] == marker && game_board[8] == marker ||
 # 	   game_board[0] == marker && game_board[4] == marker && game_board[8] == marker ||
 # 	   game_board[2] == marker && game_board[4] == marker && game_board[6] == marker
 # 	   true
 # 	else
 # 	   false
 # 	end
 # end 

 def game_ends_tie(game_board)
 		game_board.all? do|value|
 			value.class == String  #x.is_a?(String) == true  another option
 		end
 end

 def game_over?(game_board,marker)
 		all_winning_combinations(game_board, marker) || game_ends_tie(game_board)
 end 

 def get_available_spaces(board_array)
		open_spaces = []
		board_array.each do |value|
			if value.is_a?(Fixnum)
				open_spaces << value-1
			end
	end
	open_spaces
end 




 






