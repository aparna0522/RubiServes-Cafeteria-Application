class CreateOrdeerItems < ActiveRecord::Migration[6.1]
  def change
    create_table :ordeer_items do |t|
      t.integer :quantity
      t.integer :order_id
      t.integer :menu_id
      t.decimal :total
      t.decimal :unit_price

      t.timestamps
    end
  end
end
