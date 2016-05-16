
def play_game(current,opponent,game_board)
	move = current[:player_mode].get_move(game_board)
	game_board = update_board(game_board,move-1,current[:marker])
		if game_over?(game_board,current[:marker]) 
			game_board
		else
			play_game(opponent,current,game_board)
		end 
end


