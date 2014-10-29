class User < ActiveRecord::Base
	has_many :orders
	has_one :cart, dependent: :destroy

	validates :email, :uniqueness => true
	validates :email, confirmation: true
	validates :firstname, :lastname, :email, :password, :presence => true
	validates :password, length: { in: 6..20 }
	has_secure_password

	private

	before_validation :build_cart, if: -> { cart.nil? }
end
