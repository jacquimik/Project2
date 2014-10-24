# == Schema Information
#
# Table name: orders
#
#  id          :integer          not null, primary key
#  streetline1 :string(255)
#  streetline2 :string(255)
#  suburb      :string(255)
#  state       :string(255)
#  postcode    :string(255)
#  country     :string(255)
#  total       :decimal(, )
#  voucher     :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Order < ActiveRecord::Base
	belongs_to :user
	has_many :products, through: :orders_products

	validates :streetline1, :streetline2, :suburb, :state, :postcode, :country, :phone, presence: true
end
