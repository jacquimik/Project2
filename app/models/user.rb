# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  firstname       :string(255)
#  lastname        :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  admin           :boolean          default(FALSE)
#

class User < ActiveRecord::Base
	has_many :orders

	validates :email, :uniqueness => true
	validates :email, confirmation: true
	validates :firstname, :lastname, :email, :password, :presence => true
	validates :password, length: { in: 6..20 }
	has_secure_password
end
