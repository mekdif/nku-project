# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ACCESS_TOKEN =  "f0df4f05-19f0-46b7-af45-2c33f7b2be88"

if Team.count.zero?
  teams =  `curl https://erikberg.com/mlb/teams.json`
  teams = JSON.parse(teams) 
  for i in 0..teams.size
    team = Team.new(teams[i])
    team.save
  end
end





