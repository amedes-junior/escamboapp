class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  #before_action :authenticate_member!

  # Associations
  has_many :ads

  #Ratuyrate gem
  ratyrate_rater

end
