class Order < ActiveRecord::Base
	# belongs_to :user
	# validates :cart_id, presence: true

	# belongs_to :cart
	# validates :cart, presence: true

	validates :streetline1, presence: true, if: Proc.new { |o| o.streetline2.blank? }
  validates :streetline2, presence: true, if: Proc.new { |o| o.streetline1.blank? }
  validates :suburb, presence: true
  validates :state, inclusion: { in: %w[VIC NSW WA SA ACT QLD NT TAS], message: "Must be an Australian state" }
  validates :postcode, format: { with: /\A\d{4}\z/, message: "Must be 4 digits" }
  validates :country, inclusion: { in: %w[Australia] }
  validates :phone, presence: true
end
