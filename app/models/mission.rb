class Mission < ActiveRecord::Base
	
	
	has_many :mission_assignments
	has_many :volunteers, through: :mission_assignments
	has_many :ministries, through: :mission_assignments
end
