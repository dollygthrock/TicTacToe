require 'sinatra'
require_relative 'AI_TicTacToe_Game.rb'
require_relative 'simple_AI_ttt_game.rb'
require_relative 'sequential_AI_game.rb'
require_relative 'unbeatable_game.rb'


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
	p1_marker = params[:p1_marker]
	if p1_marker == "X"
	   player_one_marker = "X"
	   player_two_marker = "O"
	else 
		player_one_marker = "O"
		player_two_marker = "X"
	end
	if session[:player_one] == "Human" 
		player_1 = {:player_mode => "Human", :marker => player_one_marker}
	elsif session[:player_one] == "Simple AI"
		player_1 = {:player_mode => Simple.new, :marker => player_one_marker} 
	elsif 
		player_1 = {:player_mode => Sequential.new, :marker => player_one_marker} 
	end
	if session[:player_two] == "Human" 
		player_2 = {:player_mode => "Human", :marker => player_two_marker}
	elsif session[:player_two] == "Simple AI"
		player_2 = {:player_mode => Simple.new, :marker => player_two_marker} 
	elsif session[:player_two] == "Sequential AI"
		player_2 = {:player_mode => Sequential.new, :marker => player_two_marker} 
	else 
		player_2 = {:player_mode => Unbeatable.new(player_two_marker), :marker => player_two_marker}
	end
	session[:player_1] = player_1
	session[:player_2] = player_2
	session[:board] = create_new_board
	session[:current_player] = session[:player_1]
erb :Start_game, :locals => {:board => session[:board]}
end 

post '/start_game' do
	if session[:current_player][:player_mode] == "Human"
		erb :human_game, :locals => {:board => session[:board]}
	else 
		session[:move] = session[:current_player][:player_mode].get_move(session[:board])
		redirect '/make_move'
	end 
end 

get '/make_move' do
	session[:board] = update_board(session[:board], session[:move], session[:current_player][:marker])
		if game_over?(session[:board],session[:current_player][:marker])
		 	if all_winning_combinations(session[:board],session[:current_player][:marker])
				"#{session[:current_player][:marker]} has WON!!!"
			else 
				"Game has ended."
			end 
		else
			if session[:current_player] == session[:player_1]
				session[:current_player] = session[:player_2]
			else 
				session[:current_player] = session[:player_1]
			end 
		end
			erb :Start_game, :locals => {:board => session[:board]} 
end 


post '/human' do
	session[:move] = params[:move].to_i
	redirect '/make_move'
end
		

