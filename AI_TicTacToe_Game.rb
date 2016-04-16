require_relative "simple_AI.ttt_game.rb"
require_relative "sequential.AI.game.rb"

def play_game(player_1,player_2,game_board)
	move = player_1[:player_mode].get_move(game_board)
	game_board = update_board(game_board,move-1,player_1[:marker])
		if game_over?(game_board,player_1[:marker]) 
			game_board
		else
			play_game(player_2,player_1,game_board)
		end 
end


