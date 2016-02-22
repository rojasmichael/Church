class MissionAssignment < ActiveRecord::Base
	has_many :ministries
	has_many :missions
end
