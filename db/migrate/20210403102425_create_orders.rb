class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :date
      t.string :user_id

      t.timestamps
    end
  end
end
