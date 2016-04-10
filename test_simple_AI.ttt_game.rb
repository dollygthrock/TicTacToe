require "minitest/autorun"
require_relative "simple_AI.ttt_game.rb"

class TestSimpleAIGame < Minitest::Test

	def test_last_available_space
		assert_equal(1,get_move([1,"X","X","O","X","O","X","O","X"]))
		assert_equal(5,get_move(["X","O","X","O",5,"O","X","O","X"]))
	end 

	def test_multiple_available_spaces
		assert_includes([1,2,3],get_move([1,2,3,"X","O","X","O","X","O"]))
		refute_includes([4,5,6,7],get_move([1,2,3,"X","O","X","O","X","O"]))
	end
end