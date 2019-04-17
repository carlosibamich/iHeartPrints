class Product < ApplicationRecord

  has_many :orders
  has_many :comments

  validates :name, presence: true
  validates :description, presence: true
  validates :img_url, presence: true
  validates :price, presence: true

  def self.find_products(search_term)
    if Rails.env.production?
      Product.where("name ilike ? OR description ilike ?", "%#{search_term}%", "%#{search_term}%")
    else
      Product.where("name LIKE ? OR description LIKE ?", "%#{search_term}%", "%#{search_term}%")
    end
  end

  def highest_rated_comment
    comments.rating_desc.first
  end

  def lowest_rated_comment
    comments.rating_asc.first
  end

  def average_rating
    comments.average(:rating).to_f
  end

end
