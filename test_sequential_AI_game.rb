require "minitest/autorun"
require_relative "sequential.AI.game.rb"

class TestSequentialAI < Minitest::Test

def test_first_available_space
	assert_equal(1,get_move([1,2,3,4,5,6,7,8,9]))
	assert_equal(4,get_move(["X","O","X",4,"X","O",7,8,9]))
	assert_equal(8,get_move(["X","O","X","O","X","O","X",8,"O"]))
end 

end 
