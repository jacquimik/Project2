class CartProduct < ActiveRecord::Base
	belongs_to :cart
  validates :cart_id, presence: true

	belongs_to :product
  validates :product_id, presence: true
end