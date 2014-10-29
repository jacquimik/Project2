class Order < ActiveRecord::Base
	# belongs_to :user
	# validates :user_id, presence: true

	# belongs_to :cart
	# validates :cart, presence: true

	validates :streetline1, :streetline2, :suburb, :state, :postcode, :country, :phone, presence: true
end
