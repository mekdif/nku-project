class GamesController < ApplicationController


    ACCESS_TOKEN =  "f0df4f05-19f0-46b7-af45-2c33f7b2be88"
    
	def show
    
		@game = `curl -H "Authorization: Bearer #{ACCESS_TOKEN}" https://erikberg.com/mlb/boxscore/#{Game.find(params[:id]).event_id}.json`
		@game = JSON.parse(@game) 
    @comment = Comment.new
    @comment.game_id = params[:id]
    @home_sum = 0
    @away_sum = 0
    @game["home_period_scores"].each {|e| @home_sum += e}
    @game["away_period_scores"].each {|e| @away_sum += e}
    
    
    @comments = Comment.all
	end
  
  def comment
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.save
  end
  
  private

  def comment_params
    params.require(:comment).permit!
  end
	
end
