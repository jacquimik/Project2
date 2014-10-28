class Cart < ActiveRecord::Base
	belongs_to :user
	validates :user_id, presence: true

  has_many :cart_products
	has_many :products, through: :cart_products

  def total_price
    0
  end
end