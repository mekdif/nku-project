class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :event_id
      t.string :event_status
      t.date :event_start_date
      t.datetime :event_start_date_time
      t.string :event_season_type
      t.integer :team_event_number_in_season
      t.string :team_event_location_type
      t.string :team_event_result
      t.integer :team_points_scored
      t.integer :team_events_won
      t.integer :team_events_lost
      t.integer :team_id
      t.integer :opponent_points_scored
      t.integer :opponent_events_won
      t.integer :opponent_events_lost
      t.integer :opponent_id
      t.integer :site_id

      t.timestamps
    end
  end
end
