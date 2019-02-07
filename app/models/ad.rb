class Ad < ActiveRecord::Base

  #Constantes
  QTT_PER_PAGE = 6

  #ratyrate GEM
  ratyrate_rateable "quality"

  #Callbacks
  before_save :md_to_html

  belongs_to :member
  belongs_to :category, counter_cache: true

  has_many :comments

  scope :descending_order, -> (page) {
                                order(created_at: :desc).page(page).per(QTT_PER_PAGE)
                              }
  scope :to_the, -> (member) { where(member: member) }
  scope :by_category, -> (id, page) { where(category: id).page(page).per(QTT_PER_PAGE) }

  scope :search, -> (term, page) {
                              where("lower(title) LIKE ?", "%#{term.to_s.downcase}%" ).page(page).per(QTT_PER_PAGE)
                            }

  scope :random, -> (quantity) {
    if Rails.env.production?
      limit(quantity).order("RAND()")  #sqllite
    else
      limit(quantity).order("RANDOM()")  #mysql
    end
  }


  # Gem Money-rails
  monetize :price_cents
  has_attached_file :picture, styles: { large:"800x300#", medium: "320x150#", thumb: "100x100>" },
                    default_url: "/images/:style/missing.png"

  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

  validates :title, :description_md, :description_short, :price, presence:true
  validates :picture, :category, :finish_date, presence:true

  validates :price, numericality: {greater_than:0}


  def second
    self[1]
  end

  def third
    self[3]
  end

  private

    def md_to_html
      options = {
        filter_html: true,
        link_attributes: {
          rel: "nofollow",
          target: "_blank"
        }
      }

      extensions = {
        space_after_headers: true,
        autolink: true
      }
      renderer = Redcarpet::Render::HTML.new(options)
      markdown = Redcarpet::Markdown.new(renderer, extensions)

      self.description = markdown.render(self.description_md)

    end


end
