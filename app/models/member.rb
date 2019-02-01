class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  #before_action :authenticate_member!

  # Associations
  has_many :ads

  #Validations
  validate :nested_attributes

  has_one :profile_member
  accepts_nested_attributes_for :profile_member

  #Ratuyrate gem
  ratyrate_rater

  def nested_attributes
    if nested_attributes_blank?
      errors.add(:base, "É necessário preencher Primeiro e Segundo nomes")
    end
  end

  def nested_attributes_blank?
    profile_member.first_name.blank? || profile_member.second_name.blank?
  end

end
