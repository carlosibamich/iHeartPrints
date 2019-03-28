class Product < ApplicationRecord

  has_many :orders
  has_many :comments

  validates :name, presence: true
  validates :description, presence: true
  validates :img_url, presence: true
  validates :price, presence: true

  def self.search(search_term)
    Product.where("name ilike ? OR description ilike ?", "%#{search_term}%", "%#{search_term}%")
  end
  def self.look_for(search_term)
    Product.where("name LIKE ? OR description LIKE ?", "%#{search_term}%", "%#{search_term}%")
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

# Another way of passing parameters into .where query so that both SQLite3 and PostgreSQL understand it is by lower-casing all letters by hand using the following:

# Product.where("lower(name) like lower(?) OR lower(description) like lower(?)", "%#{search_term}%", "%#{search_term}%")
