require_relative "Tic_Tac_Board.rb"

def get_move_sequential(board_array)
	available_spaces = get_available_spaces(board_array)
	available_spaces.first 
end 




