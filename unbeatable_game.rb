require_relative "Tic_Tac_Board.rb"

class Unbeatable
	attr_reader :marker

	def initialize(marker)
		@marker = marker
	end 
	
	def get_move(board_array)
		if board_array[4] == 5 && @marker == "O"
			4
		else
			available_spaces = get_available_spaces(board_array)
			available_spaces.first
		end 
	end 

end 
