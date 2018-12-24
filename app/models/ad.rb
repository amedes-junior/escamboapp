class Ad < ActiveRecord::Base
  belongs_to :member
  belongs_to :category

  scope :descending_order, -> (quantity=10) { limit(quantity).order(created_at: :desc) }
  scope :to_the, -> (member) { where(member: member) }

  # Gem Money-rails
  monetize :price_cents
  has_attached_file :picture, styles: { medium: "320x150#", thumb: "100x100>" },
                    default_url: "/images/:style/missing.png"

  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

  validates :title, :description, :price, presence:true
  validates :picture, :category, :finish_date, presence:true

  validates :price, numericality: {greater_than:0}



end
