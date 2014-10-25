class RemoveEmailConfirmationFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :email_confirmation
  end
end
