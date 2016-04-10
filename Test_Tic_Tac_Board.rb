require "minitest/autorun"
require_relative "Tic_Tac_Board.rb"

class TestTicTacBoard < Minitest::Test

def test_create_new_board
	assert_equal([1,2,3,4,5,6,7,8,9],create_new_board)
end 

def test_update_board
	assert_equal(["X",2,3,4,5,6,7,8,9],update_board([1,2,3,4,5,6,7,8,9],0,"X"))
	assert_equal([1,2,3,4,5,6,7,8,"X"],update_board([1,2,3,4,5,6,7,8,9],8,"X"))
end 

def test_valid_position_on_game_board
	assert_equal(true,valid_position_on_game_board([1,2,3,4,5,6,7,8,9],3))
	assert_equal(true,valid_position_on_game_board([1,2,3,4,5,6,7,8,9],7))
	assert_equal(true,valid_position_on_game_board([1,2,3,4,5,6,7,8,9],2))
	assert_equal(false,valid_position_on_game_board([1,2,3,4,"O",6,7,8,9],4))
	assert_equal(false,valid_position_on_game_board([1,2,3,4,5,6,7,8,9],14))
end 

def test_all_winning_combinations
	assert_equal(true,all_winning_combinations(["X","X","X",4,5,6,7,8,9],"X"))
	assert_equal(true,all_winning_combinations([1,2,"X",4,5,"X",7,8,"X"],"X"))
	assert_equal(true,all_winning_combinations([1,2,"X",4,"X",6,"X",8,9],"X"))
	assert_equal(true,all_winning_combinations(["X",2,3,4,"X",6,7,8,"X"],"X"))
	assert_equal(true,all_winning_combinations(["O",2,3,4,"O",6,7,8,"O"],"O"))
	assert_equal(false,all_winning_combinations(["X",2,"X",4,5,6,7,8,"X"],"X"))
	assert_equal(false,all_winning_combinations([1,2,3,"X",5,"X","X",8,9],"X"))
end 

def test_game_ends_tie
	assert_equal(true,game_ends_tie(["X","X","O","X","O","O","X","O","X"]))
	assert_equal(false,game_ends_tie(["X","X",3,4,5,6,"X",8,"X"]))
end

def test_game_over
	assert_equal(true,game_over?(["X","X","X","O","O","X","O","X","O"], "X"))
	assert_equal(false,game_over?([1,2,3,"X","X","O",7,8,"X"],"X"))
end 

def test_multiple_available_spaces
	assert_equal([1,2,3],get_available_spaces([1,2,3,"X","O","X","O","X","O"]))
	assert_equal([],get_available_spaces(["X","O","X","X","O","X","O","X","O"]))
end


end 