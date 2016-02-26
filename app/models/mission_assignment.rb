class MissionAssignment < ActiveRecord::Base
	belongs_to :mission
	belongs_to :volunteer
	belongs_to :ministry
end
