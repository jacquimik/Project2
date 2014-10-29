class Cart < ActiveRecord::Base
	belongs_to :user
	# validates :user_id, presence: true

  has_many :cart_products
	has_many :products, through: :cart_products

  def total_price
    product_id = Product.find(product_ids)
    total = product_id.sum(&:price)
  end
end