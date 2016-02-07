require "minitest/autorun"
require_relative "tic_tac_toe_aaron.rb"

class TestTicToe < Minitest::Test
	def test_player_two_is_x_when_player_one_is_o
		player2=player_two_marker("O")
		assert_equal("X",player2)
	end
	
	def test_player_two_is_o_when_player_one_is_x
		player2=player_two_marker("X")
		assert_equal("O",player2)
	end
end
