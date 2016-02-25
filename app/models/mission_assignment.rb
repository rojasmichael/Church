class MissionAssignment < ActiveRecord::Base
	belongs_to :missions
	belongs_to :volunteers
	belongs_to :ministries
end
