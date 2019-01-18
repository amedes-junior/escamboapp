class Category < ActiveRecord::Base

  #Gem Friendly Id
  include FriendlyId
  friendly_id :description, use: :slugged

  #Associations
  has_many :ads

  validates_presence_of :description

  scope :order_by_description, -> { order(:description) }

  #def to_param
  #  "#{id} #{description}".parameterize
  #end


end
