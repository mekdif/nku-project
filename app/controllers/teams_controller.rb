class TeamsController < ApplicationController
  
  def index    
    @teams = Team.all   
  end
  
  def show
    @team = Team.find(params[:id])
    @team_games = Game.where(:team_id => @team.id ).reverse_order
    
  end
  
end
