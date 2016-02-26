class Volunteer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  belongs_to :ministry
  has_many :missions_assignments
  has_many :missions, through: :missions_assignments
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  has_secure_password

 def self.search(search)

 	if search
 		where('name LIKE ?', "%#{search}")
 	else
 		all
 	end

 end

end
