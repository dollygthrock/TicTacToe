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

 def winner_determination(game_board)
 	 if game_board == ["X","X","X",4,5,6,7,8,9]
 	 	true
 	 else 
 	 	false
 	 end 
 end 

 def all_winning_combinations(game_board,marker)
 	if game_board[0] == marker && game_board[1] == marker && game_board[2] == marker ||
 	   game_board[3] == marker && game_board[4] == marker && game_board[5] == marker ||
 	   game_board[6] == marker && game_board[7] == marker && game_board[8] == marker ||
 	   game_board[0] == marker && game_board[3] == marker && game_board[6] == marker ||
 	   game_board[1] == marker && game_board[4] == marker && game_board[7] == marker ||
 	   game_board[2] == marker && game_board[5] == marker && game_board[8] == marker ||
 	   game_board[0] == marker && game_board[4] == marker && game_board[8] == marker ||
 	   game_board[2] == marker && game_board[4] == marker && game_board[6] == marker
 	   true
 	else
 	   false
 	end
 end 

 def game_ends_tie(game_board)
 	 	game_board.each do |value|
 	 		while value == "X" || value == "O" 
 	 			board_array << value 
 	 		break if board_array.count = 9
 	 		end 
 	 	end 

 end 



 






