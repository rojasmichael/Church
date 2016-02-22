class Mission < ActiveRecord::Base
	
	has_many :volunteers
	has_many :ministries, through: :mission_assignments

end
