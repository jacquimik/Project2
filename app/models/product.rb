class Product < ActiveRecord::Base
	has_many :categories

  # has_many :cart_products
	# has_many :carts, through: :cart_products
end