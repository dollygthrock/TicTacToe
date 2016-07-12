require "minitest/autorun"
require_relative "unbeatable_game.rb"

class TestUnbeatableGame < Minitest::Test

	def test_chooses_winning_move
		player = Unbeatable.new("X")
		assert_equal(6,player.get_move(["X","O",3,"X","O",6,7,8,9]))
	end 

	def test_chooses_winning_move_different_marker
		player = Unbeatable.new("O")
		assert_equal(8,player.get_move(["O","X",3,4,"O","X",7,8,9]))
	end 
end 