class Game < ActiveRecord::Base

	validates_uniqueness_of :event_id

end
