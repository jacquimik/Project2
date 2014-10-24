# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  price       :decimal(, )
#  name        :string(255)
#  description :text
#  size        :integer
#  image       :text
#  brand       :string(255)
#  active      :boolean
#  quantity    :integer
#

class Product < ActiveRecord::Base
	has_many :orders, through: :orders_product
	has_many :categories
end
