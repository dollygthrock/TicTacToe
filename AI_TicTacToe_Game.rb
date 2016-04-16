require_relative "simple_AI.ttt_game.rb"
require_relative "sequential.AI.game.rb"

def play_game(player_1,player_2,game_board)
	move = player_1[:player_mode].get_move(game_board)
			while game_over?(game_board,player_1[:marker]) == false || game_over?(game_board,player_2[:marker]) == false do
				first_move = player_1[:player_mode].get_move(game_board)
				game_board = update_board(game_board,first_move-1, player_1[:marker])
			break if game_over?(game_board,player_1[:marker]) == true || game_over?(game_board,player_2[:marker]) == true 
				next_move = player_2[:player_mode].get_move(game_board)
				game_board = update_board(game_board,next_move-1,player_2[:marker])
			end 
			game_board
end 
