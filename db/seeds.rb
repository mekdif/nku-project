# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ACCESS_TOKEN =  "f0df4f05-19f0-46b7-af45-2c33f7b2be88"

if Team.count.zero?
  teams = JSON.parse(teams) 
  for i in 0..teams.size
    team = Team.new(teams[i])
    team.save
  end
end


Team.all.each do |team|

	games=`curl -H "Authorization: Bearer #{ACCESS_TOKEN}" https://erikberg.com/mlb/results/#{team.team_id}.json`
	games = JSON.parse(games) 
	
	for i in 0..(games.size-1)
	
		game = Game.new( games[i].except("team").except("opponent").except("site") )
			
		game.team_id = Team.where(:team_id => games[i]["team"]["team_id"]).first.id
		game.opponent_id = Team.where(:team_id => games[i]["opponent"]["team_id"]).first.id
		game.site_id = ( Site.where(:name => games[i]["site"]["name"] ).first || Site.create!(games[i]["site"]) ).id
		game.event_start_date = Date.parse(games[i]["event_start_date_time"])
		game.save
		
	end
	
	sleep(20) #sleep 20 seconds to prevent getteing rejected beucse of DOS
	
end 



Team.all.each do |team|

	team.image_url = "http://mlb.mlb.com/mlb/images/team_logos/logo_#{team.abbreviation.downcase}_79x76.jpg"
	
	team.save
	
end


