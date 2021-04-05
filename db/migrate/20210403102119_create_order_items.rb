class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.string :order_id
      t.string :menu_item_id
      t.string :menu_item_name
      t.numeric :menu_item_price

      t.timestamps
    end
  end
end
