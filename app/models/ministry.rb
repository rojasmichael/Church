class Ministry < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :volunteers
  has_many :Missions, through: :mission_assignments

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
