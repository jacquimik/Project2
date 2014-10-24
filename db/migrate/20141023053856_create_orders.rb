class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
    	t.string :streetline1
    	t.string :streetline2
    	t.string :suburb
    	t.string :state
    	t.string :postcode
    	t.string :country
    	t.decimal :total
    	t.string :voucher
    	t.string :phone
    	t.timestamps
    end
  end
end
