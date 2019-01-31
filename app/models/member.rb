class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  #before_action :authenticate_member!

  # Associations
  has_many :ads

  has_one :profile_member
  accepts_nested_attributes_for :profile_member

  #Ratuyrate gem
  ratyrate_rater

end
