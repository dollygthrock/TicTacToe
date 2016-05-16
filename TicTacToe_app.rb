require 'sinatra'
require_relative 'AI_TicTacToe_Game.rb'
require_relative 'simple_AI_ttt_game.rb'
require_relative 'sequential_AI_game.rb'
require_relative 'human.rb'


enable :sessions

get '/' do 
	erb :Player_Choice	
end

post '/input' do	
	session[:player_one] = params[:player_one]
	session[:player_two] = params[:player_two]
erb :Player_one_marker, :locals => {:player_one => session[:player_one], :player_two => session[:player_two]}
end 

post '/player_marker' do
	board = params[:board]
	human = params[:human]
	p1_marker = params[:p1_marker]
	if p1_marker == "X"
	   player_one_marker = "X"
	   player_two_marker = "O"
	else 
		player_one_marker = "O"
		player_two_marker = "X"
	end
	if session[:player_one] == "Human" 
		player_1 = {:player_mode => Human.new, :marker => player_one_marker}
	elsif session[:player_one] == "Simple AI"
		player_1 = {:player_mode => Simple.new, :marker => player_one_marker} 
	else
		player_1 = {:player_mode => Sequential.new, :marker => player_one_marker} 
	end
	if session[:player_two] == "Human" 
		player_2 = {:player_mode => Human.new, :marker => player_two_marker}
	elsif session[:player_two] == "Simple AI"
		player_2 = {:player_mode => Simple.new, :marker => player_two_marker} 
	else
		player_2 = {:player_mode => Sequential.new, :marker => player_two_marker} 
	end
board = create_new_board
board = play_game(player_1,player_2,board)
# game_board = create_new_board
# play_game(player_1,player_2,game_board)
# final_board = play_game(player_1,player_2,game_board)
erb :Start_game, :locals => {:board => board, :player_one_marker => player_one_marker, :player_two_marker => player_two_marker, :player_one => session[:player_one], :player_two => session[:player_two]}
end 

#post '/human' do
	#human = params[:human]
		#player_1 = {:player_mode => Human.new, :marker => player_one_marker}
		#player_2 = {:player_mode => Human.new, :marker => player_two_marker} 
#erb :human_game, :locals => {:board => board, :player_one_marker => player_one_marker, :player_two_marker => player_two_marker, :player_one => session[:player_one], :player_two => session[:player_two]} 
#end
#board = create_new_board
#board = play_game(player_1,player_2,board)


