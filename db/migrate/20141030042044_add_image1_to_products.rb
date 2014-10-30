class AddImage1ToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :image1, :text
  end
end
