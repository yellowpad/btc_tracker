class CreatePrices < ActiveRecord::Migration[5.1]
  def change
    create_table :prices do |t|
    	t.integer :price
      t.timestamps
    end
  end
end
