class GamesController < ApplicationController


    ACCESS_TOKEN =  "f0df4f05-19f0-46b7-af45-2c33f7b2be88"
    
	def show
		
		@game = `curl -H "Authorization: Bearer #{ACCESS_TOKEN}" https://erikberg.com/mlb/boxscore/#{Game.find(params[:id]).event_id}.json`
		@game = JSON.parse(@game) 
		
	end
	
end
