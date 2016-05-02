require 'sinatra'
require_relative 'AI_TicTacToe_Game.rb'
#require_relative '../../TicTacToe/ttt_console.rb'

enable :sessions

get '/' do 
	erb :Player_Choice	
end

post '/input' do	
	session[:p1] = params[:player_one]
	session[:p2] = params[:player_two]
	erb :Player_one_marker, :locals => {:p1 => session[:p1], :p2 => session[:p2]}
end 

post '/player_marker' do
	p1_marker = params[:p1_marker]
	if p1_marker == "X"
		p2_marker = "O"
	else p2_marker = "X"
	end
	erb :Start_game, :locals => {:p1 => session[:p1], :p2 => session[:p2], :p1_marker => p1_marker, :p2_marker => p2_marker}
end 

