class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.decimal :price
    	t.string :name
    	t.text :description
    	t.integer :size
    	t.text :image
    	t.string :brand
        t.boolean :active
        t.integer :quantity
    end
  end
end
