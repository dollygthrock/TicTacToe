require_relative "Tic_Tac_Board.rb"

class Unbeatable
	attr_accessor :marker, :move

	def initialize(marker)
		@marker = marker
		@move = -1
	end 
	
	def get_move(board_array)
		if play_win(board_array) == false #until play_win(board_array) same?
			opponent = opponent_marker
				if potential_block = board_array.detect{|opponent|winning_lines.count(opponent) == 2}
				@move = potential_block(board_array[])#make move at the empty space where 2 opponents 
					#are in a winning line
				elsif corners = board_array[0,2,6,8]
					corners.empty? #play the corners?
					# if  


		elsif 

		# if board_array[0]== @marker && board_array[3] == @marker 
		# 	6
		# elsif board_array[0] == @marker && board_array[4] == @marker
		# 	8
	
			available_spaces = get_available_spaces(board_array)
			if available_spaces[4].empty?
			@move = available_spaces[4]
		end 




		end 
		@move - 1
	end 

	def play_win(game_board)
		opponent = opponent_marker
		play = false
		potential_wins = winning_lines(game_board)
 		potential_wins.each do |potential_win|
	 		if potential_win.count(@marker) == 2 && potential_win.count(opponent) == 0
	 			potential_win.each do |space|
	 				if space != @marker
	 					@move = space
	 					play = true
	 				end
	 			end
	 		end
	 	end
	 	play
	end

	def opponent_marker
		@marker == "X" ? "O" : "X"
	end
end 
 
