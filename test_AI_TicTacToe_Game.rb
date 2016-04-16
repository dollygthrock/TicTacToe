require "minitest/autorun"
require_relative "AI_TicTacToe_Game.rb"

class TestAIGame < Minitest::Test

def test_play_game
	player_1 = {:player_mode => Simple.new, :marker => "X"}
	player_2 = {:player_mode => Sequential.new, :marker => "O"}
	game_board = create_new_board
	final_board = play_game(player_1,player_2,game_board)
	assert_equal(true,game_over?(final_board,"X") || game_over?(final_board,"O"))
end 

def test_count
	player_1 = {:player_mode => Simple.new, :marker => "X"}
	player_2 = {:player_mode => Sequential.new, :marker => "O"}
	game_board = create_new_board
	final_board = play_game(player_1,player_2,game_board)
	remaining_board = get_available_spaces(final_board)
	assert_equal(true, remaining_board.count <= 4)
end

end  


	