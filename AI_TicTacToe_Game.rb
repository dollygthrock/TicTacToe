require_relative "simple_AI.ttt_game.rb"
require_relative "sequential.AI.game.rb"

def play_game
	game_board = create_new_board
	player_simple = "X"
	player_sequential = "O"
			while game_over?(game_board,player_simple) == false || game_over?(game_board,player_sequential) == false do
				first_move = get_move_simple(game_board)
				game_board = update_board(game_board,first_move-1, player_simple)
			break if game_over?(game_board,player_simple) == true || game_over?(game_board,player_sequential) == true 
				next_move = get_move_sequential(game_board)
				game_board = update_board(game_board,next_move-1,player_sequential)
			end 
			puts game_board
			game_over?(game_board,player_simple) == true || game_over?(game_board,player_sequential) == true
end
play_game